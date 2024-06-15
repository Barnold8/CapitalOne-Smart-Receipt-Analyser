<template>
    <!-- This will create a plain header with just the logo, as we obviously want no routing options available for the user on login -->
    <PlainHeader>
        <!-- content for the login page will be placed here, where on the page it will be, and what is inside can be done so with this container -->
        <div class="content">
            <p class="line-break">Sign in<br>_________________________________</p>
            <!-- Using ion-item to display a username and password input, where we can shift the way these two "containers" look to the user -->
            <ion-label class="unpwText">User Name:</ion-label>
            <div>
                <input v-model="username" class="inputbox" />
            </div>
            <ion-label class="unpwText">Password:</ion-label>
            <div>
                <input v-model="password" type="password" class="inputbox" />
            </div>
            <!-- Actionable button -->
            <button @click="this.postLogin()" class="button">Sign In</button>
            <p v-if="this.displayerr" id="err-msg" style="color: red">{{ this.errmsg }}</p>
            <p class="line-break">New User?<br>_________________________________</p>
            <button @click="this.emitSignup()" class="button">Sign Up</button>
        </div>
    </PlainHeader>
</template>

<script>
import PlainHeader from "../layouts/PlainHeader.vue"
import { Preferences } from '@capacitor/preferences'
import axios from "axios";
export default {
    components: {
        PlainHeader,
    },
    // Predefined data to be set, which are invalid on the API side, so the user can not login, or events can be handled here.
    data() {
        return {
            errmsg: "",
            displayerr: false,
            username: "",
            password: ""
        }
    },
    methods: {
        emitSignup() {
            this.$emit('SignupShow', true);
        },
        handleError(msg) {
            this.errmsg=msg;
            this.displayerr=true;
        },
        // Setting storage code.
        async setStorage(token) {
            await Preferences.set({
                key: 'token',
                value: token
            });
            this.$emit('TokenSuccess', true);
        },
        // async removeStorage() {
        //     await Preferences.remove({
        //         key: 'test'
        //     });
        //     console.log(this.username);
        //     console.log(this.password);
        //     await Preferences.clear();
        // },
        async postLogin() {
            await axios.post('http://188.166.76.134/api/login', { user: this.username, pass: this.password })
            .then(resp => this.setStorage(resp.data))
            .catch(resp => this.handleError(resp.response.data));
    }
}
}
</script>


<style scoped>
.inputbox {
    margin-bottom: 20px;
    background-color: #f3f3f3;
    width: 100%;
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
    transform: translate(-50%, -65%);
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
