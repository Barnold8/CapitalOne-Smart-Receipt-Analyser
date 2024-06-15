<template>
    <ion-page>
        <LoginPage @SignupShow="this.displaySignup()" @TokenSuccess="getToken().then(response=>this.checkNull(response.value))" v-if="this.login"></LoginPage>
        <SignupPage @showLogin="this.showLogin()" v-if="this.signup"></SignupPage>
        <AppControl @signOut="this.signOut()" v-if="this.grantaccess" :token="this.token"></AppControl>
    </ion-page>
</template>

<script>
    import LoginPage from "./LoginPage.vue";
    import SignupPage from "./SignupPage.vue";
    import {Preferences} from '@capacitor/preferences'
    import AppControl from "./AppControl.vue";
    import axios from 'axios'
    import { IonPage } from "@ionic/vue";
    export default {
        components: {
            LoginPage,
            SignupPage,
            AppControl,
            IonPage
    },
        // This method is responsible for calling the asyncronous function to query the users local storage for a token, if the token
        // is not present, then we will urge the user to login, if it is, they are granted access to the application. 
        beforeMount() {
            this.getToken().then(response => this.checkNull(response.value));
        },
        data() {
            return {
                grantaccess: false,
                login: true,
                signup: false,
                token: null
            }
        },
        methods: {
            async getToken() {
                const response = await Preferences.get({
                    key: "token"
                })
                return response;
            },
            async removeToken() {
                const header = {
                    headers: {
                        "X-Token": this.token
                    }
                };
                axios.post('http://188.166.76.134/api/logout', null, header)
                    .then()
                    .catch(error => console.log(error))
            },
            displaySignup() {
                this.login=false;
                this.signup=true;
            },
            showLogin() {
                this.login=true;
                this.signup=false;
            },
            checkNull(resp) {
                if(resp!=null){
                    this.token=resp;
                    this.grantAccess();
                }
            },
            grantAccess() {
                this.login=false;
                this.signup=false;
                this.grantaccess=true;
            },
            signOut() {
                this.removeToken();
                this.grantaccess = false;
                this.token = null;
                this.login = true;
            }
        }
    }
</script>