<template>
    <!-- This will create a plain header with just the logo, as we obviously want no routing options available for the user on login -->
    <PlainHeader>
        <div class="content">
            <p class="line-break">Sign up<br>_________________________________</p>
            <!-- Using ion-item to display a username and password input, where we can shift the way these two "containers" look to the user -->
            <ion-label class="unpwText">Username:</ion-label>
            <div>
                <input v-model="username" class="inputbox" />
            </div>
            <ion-label class="unpwText">Password:</ion-label>
            <div>
                <input v-model="password" type="password" class="inputbox" />
            </div>
            <ion-label class="unpwText">Confirm Password:</ion-label>
            <div>
                <input v-model="passwordcfm" type="password" class="inputbox" />
            </div>
            <!-- Actionable button -->
            <p v-if="this.displayerr">{{ this.errmsg }}</p>
            <button @click="this.postSignup()" class="button">Sign up</button>
            <button @click="this.$emit('showLogin')" style="margin-top: 1.5rem;" class="button">Go Back</button>
        </div>
    </PlainHeader>
</template>

<script>
import PlainHeader from "../layouts/PlainHeader.vue"
import axios from "axios";
export default {
    components: {
        PlainHeader,
    },
    data() {
        return {
            displayerr: false,
            errmsg: null,
            username: null,
            password: null,
            passwordcfm: null
        }
    },
    methods: {
        handleError(msg) {
            this.errmsg = msg;
            this.displayerr = true;
        },
        async postSignup() {
            if (this.password === this.passwordcfm) {
                await axios.post('http:///188.166.76.134/api/create-account', { user: this.username, pass: this.password })
                    .then(this.$emit('showLogin'))
                    .catch(resp => this.handleError(resp.response.data))
            } else {
                this.displayerr = true;
                this.errmsg = "The passwords do not match!";
            }
        }
    }
}
</script>

<style scoped>
.inputbox {
    margin-bottom: 20px;
    background-color: #f3f3f3;
}

.content {
    display: flex;
    justify-content: center;
    align-items: left;
    text-align: left;
    position: absolute;
    flex-direction: column;
    top: 50%;
    left: 50%;
    margin-right: -20%;
    transform: translate(-50%, -70%);
    font-size: larger;
}

.unpwText {
    padding-top: 7px;
    padding-bottom: 7px;
    color: #013D5B;
}

.button {
    background-color: #013D5B;
    color: white;
    padding: 3%;
    font-size: 16px
}

.line-break {
    color: #013D5B;
}
</style>