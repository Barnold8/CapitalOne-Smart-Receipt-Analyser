<template>
    <ion-page>
    <HomePage v-if="showHome" :token="this.token" @signOut="this.signOut()" @switchHome="this.switchHome()" @switchAnalytics="this.switchAnalytics()" @switchSettings="this.switchSettings()"></HomePage>
    <AnalyticsPage v-if="showAnalytics" :token="this.token" @signOut="this.signOut()" @switchHome="this.switchHome()" @switchAnalytics="this.switchAnalytics()" @switchSettings="this.switchSettings()"></AnalyticsPage>
    <SettingsPage v-if="showSettings" :token="this.token" @signOut="this.signOut()" @switchHome="this.switchHome()" @switchAnalytics="this.switchAnalytics()" @switchSettings="this.switchSettings()"> </SettingsPage>
    </ion-page>
</template>

<script>
import HomePage from './HomePage.vue';
import AnalyticsPage from '../views/AnalyticsPage.vue';
import SettingsPage from '../views/SettingsPage.vue';
import { IonPage } from "@ionic/vue";
import { Preferences } from '@capacitor/preferences'
export default {
    props: {
        token: String
    },
    components: {
    HomePage,
    IonPage,
    AnalyticsPage,
    SettingsPage
    },
    data() {
        return {
            showHome: true,
            showAnalytics: false,
            showSettings: false
        }
    },
    methods: {
        switchHome() {
            this.showHome = true;
            this.showAnalytics = false;
            this.showSettings = false;
        },
        switchAnalytics() {
            this.showHome = false;
            this.showAnalytics = true;
            this.showSettings = false;
        },
        switchSettings() {
            this.showHome = false;
            this.showAnalytics = false;
            this.showSettings = true;
        },
        signOut() {
            this.removeToken();
            this.$emit('signOut');
        },
        async removeToken() {
            await Preferences.remove({ key: 'token' });
        }
    }   
}
</script>