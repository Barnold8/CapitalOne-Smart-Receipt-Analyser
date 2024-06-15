<template>
    <NavbarComponent @signOut="this.$emit('signOut')" @switchHome="this.$emit('switchHome')" @switchAnalytics="this.$emit('switchAnalytics')" @switchSettings="this.$emit('switchSettings')">
    <!-- This navbar compnent tag is responsible for housing the content of the page inside the header on each instance,
    this will allow to use this without having to refer to the navbar/create one on every single page, the routes
    will be defined in /router/ + /layouts/ -->
    <!-- This home page will be called if a receipt or data of the current date has not been found for the user, the component
        takes two props, one to say if its found (data) and another to say if a receipt has been sent, the second boolean
        is responsible for controlling error handling, camerashow is an emit event where the user presses a button
        it will show the camera -->
        <CTAHomePage v-if="!found && sent == false" @CameraShow="showCamera"></CTAHomePage>
    <!-- Make ion spinner a component -->
    <ion-spinner class="center" name="circular" color="white" v-else-if="sent == true"></ion-spinner>
    <!-- This page will be responsible for actually displaying the data, this way the HomePage (file in) acts as one of the main sub-controllers
        alongside the login control page, allowing us to define and work the behaviour dependent on specific events -->
    <HomePageSummary v-else-if="found" :data="recentReceipt" @CameraShow="showCamera"></HomePageSummary>
    <RecategorisationModalVue v-if="this.recategorise" :categories="this.categories" :items="this.items" @close="closeModal"
        @confirm="sendReceipt"></RecategorisationModalVue>
    </NavbarComponent>
</template>

<script>
import axios from 'axios'
import HomePageSummary from "../views/HomePageSummary.vue"
import CTAHomePage from "../views/CTAHomePage.vue"
import RecategorisationModalVue from '../components/RecategorisationModal.vue'
import { Camera, CameraResultType, CameraSource } from '@capacitor/camera'
import { defineCustomElements } from "@ionic/pwa-elements/loader"
import NavbarComponent from "../layouts/NavbarComponent.vue"
import { IonSpinner } from '@ionic/vue'
export default {
    components: {
        RecategorisationModalVue,
        CTAHomePage,
        HomePageSummary,
        NavbarComponent,
        IonSpinner
    },
    props: {
        token: String
    },
    // This code will run before the component is mounted allowing an asyncronous call to check the current state of the user receipt,
    // the axios framework comes with a way to handle this, using the data received from headers, I then check the data isn't empty
    // if a correct response is found.
    beforeMount() {
        var date = (new Date()).toISOString().split('T')[0];
        axios.post('http://188.166.76.134/api/receipt-range?DateStart=' + date, null, this.tokenHeader)
            .then(response => this.checkEmpty(response.data))
            .catch(error => {
                error
                this.$emit('signOut')
            })
    },
    // This section defines the way to handle the behaviour of the summary page, found is if a receipt has been found on the current 
    // day, sent if the receipt has been sent on the camera (SUCCESSFULLY), and recentReceipt will be populated with the values 
    // of a recent receipt
    data() {
        return {
            recategorise: false,
            found: false,
            sent: false,
            recentReceipt: null,
            tokenHeader: {
                headers: {
                    'X-Token': this.token
                }
            },
            items: null,
            categories: [
                'Food & Drink',
                'Confectionaries / Cakes / Biscuits',
                'Cleaning',
                'Household',
                'Technology',
                'Furniture',
                'Gambling',
                'Alcohol & Smoking',
                'Pets',
                'Health & Beauty',
                'Baby',
                'Entertainment',
                'Clothing',
                'Expensive',
                'Jewellery'
            ],
            originFound: false
        }
    },
    methods: {
        // This method handles the emitted event in order to show the camera, I've made this a seperate method so I can just handle the
        // emit event in oneline, the parameter b will be a boolean that is sent from the CTAHomePage, to dictate whether the user has
        // interacted with the UI in the way we expect, there isn't any error handling in this case as its just a button.
        showCamera() {
            this.takePicture()
        },
        // This is the method to check the data is empty, the API calls will return an empty string if nothing has been found server-side
        // for the current user, any other instance/data means something has been found (where the request is successful)
        checkEmpty(data) {
            if (data.length == 0) {
                this.found = false
                this.originFound = false
            } else {
                this.recentReceipt=data
                this.found = true
                this.originFound = true
            }
        },
        // This method is responsible for returning the asyncronous call to get the most recent receipt, this is likely due to change in future
        // revisions as we need a sum total of current day on the summary page-
        getRecent() {
            {
                var date = (new Date()).toISOString().split('T')[0];
                return axios.post('http://188.166.76.134/api/receipt-range?DateStart=' + date, null, this.tokenHeader)
            }
        },
        // This postRequest, will post the image as a base64String to the back-end, where we will await an update to make sure the data has been sent correctly,
        // this will need to be replaced by an API interaction which dictates this behaviour.
        async postRequest(image) {
            this.sent = true
            const resp = await axios.post('http://188.166.76.134/api/upload-receipt', { img: image.base64String }, this.tokenHeader).catch(error => {
                error
                this.resetView()
            })
            if(resp!=undefined) {
                if (resp.status == 200) {
                    this.convertRespToArray(resp.data)
                    this.recategorise = true
                }
            }
        },
        // This async function uses the Capacitor Camera API to take a photo, the functionality is contained within this, so we don't need to worry, the params
        // of quality and resultType are back-end requirements, but the source is just saying use the phones camera.
        async takePicture() {
            const image = await Camera.getPhoto({
                quality: 50,
                resultType: CameraResultType.Base64,
                source: CameraSource.Camera
            })
            this.postRequest(image)
        },
        convertRespToArray(resp) {
            const objectArray = Object.keys(resp).filter(key => key !== 'Date').map(key => {
                return {
                    name: resp[key][0],
                    category: resp[key][1],
                    price: resp[key][2].toFixed(2)
                }
            })
            this.items = objectArray
        },
        closeModal() {
            this.recategorise = false
            this.sent = false
        },
        async sendReceipt(x) {
            const now = new Date();
            const year = now.getFullYear();
            const month = (now.getMonth() + 1).toString().padStart(2, '0')
            const day = now.getDate().toString().padStart(2, '0')
            const hours = now.getHours().toString().padStart(2, '0')
            const minutes = now.getMinutes().toString().padStart(2, '0')
            const seconds = now.getSeconds().toString().padStart(2, '0')
            const currentDateTime = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`
            x.Date = currentDateTime
            this.recategorise = false
            this.sent = true
            console.log(x)
            const send = await axios.post('http://188.166.76.134/api/confirm-receipt', { data: x }, this.tokenHeader)
            if(send.status == '200') {
                this.progressFlow()
            }
        },
        async progressFlow() {
            const update = await this.getRecent()
            this.recentReceipt = update.data
            this.sent = false
            this.found = true
        },
        resetView() {
            this.recategorise = false
            this.found = this.originFound
            this.sent = false
        }
    }
}
defineCustomElements(window)
</script>

<style scoped>
.center {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    position: absolute;
    flex-direction: column;
    top: 50%;
    left: 50%;
    margin-right: -50%;
    transform: translate(-50%, -50%);
    font-size: larger;
}
</style>