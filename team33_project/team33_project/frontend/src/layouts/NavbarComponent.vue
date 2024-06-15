<template>
  <!-- This is for display styling with the hamburger menu, so we can display each routing possibility to the user -->
  <ion-menu content-id="navbar-content">

    <!-- This will dictate the styling within the menu section, using the predefined ion-content styling -->
    <ion-content class="ion-padding">

      <!-- This will display each of the items inside the ion-content in a column list, to give the effect and same layout as prototypes -->
      <ion-list lines="none" class="bg-transparent">

        <!-- Add router to inner of this ion list, using standard href
               Refer to the index.js file in router for future implmentation -->
        <!-- All styling should go here -->
        <ion-item color=" none" class="menu-item top-item" :button="true">
          <ion-label class="menu-content" @click="() => this.$emit('switchHome')">Home</ion-label>
        </ion-item>
        <!-- ion-item just current displaying the predefined routinoptions to the user, read above comment for routing implementation -->
        <ion-item color="none" class="menu-item" :button="true">
          <!-- ion-label used for displaying simple text to the user, will have some predefined font and colouring styling to be changed later -->
          <ion-label class="menu-content" @click="this.$emit('switchAnalytics')">Analytics</ion-label>
        </ion-item>
        <ion-item color="none" class="menu-item" :button="true">
          <ion-label class="menu-content" @click="() => this.$emit('switchSettings')">Settings</ion-label>
        </ion-item>
        <ion-item color="none" class="menu-item" :button="true">
          <ion-label class="menu-content" @click="() => this.$emit('signOut')">Sign out</ion-label>
        </ion-item>
      </ion-list>
    </ion-content>
  </ion-menu>
  <ion-page id="navbar-content">
    <ion-header>
      <ion-toolbar class="toolbar">
        <ion-buttons slot="start">
          <ion-menu-button></ion-menu-button>
        </ion-buttons>
      </ion-toolbar>
    </ion-header>
    <!-- All content within the navbar layout will be placed inside here, i.e. below the header content placed above, the header content will contain
      the hamburger menu and logo, where we populated what is inside this content depending on route or behaviour. -->
    <slot></slot>
  </ion-page>
</template>
  
<script>
import {
  IonButtons,
  IonContent,
  IonHeader,
  IonMenu,
  IonMenuButton,
  IonPage,
  IonList,
  IonItem,
  IonToolbar,
  IonLabel
} from '@ionic/vue';
import { defineComponent } from 'vue';
// import { useRouter } from 'vue-router';

export default defineComponent({
  components: {
    IonButtons,
    IonContent,
    IonHeader,
    IonMenu,
    IonMenuButton,
    IonPage,
    IonList,
    IonItem,
    IonToolbar,
    IonLabel
  }
  // setup() {
  //   const router = useRouter();
  //   return {router};
  // }
});
</script>
  
<style scoped>
.logo {
  max-width: 110px;
  position: absolute;
  left: 0;
  right: 0;
  margin: 0 auto;
  top: 2rem;
  transform: translateY(-50%);
}

.menulogo {
  position: absolute;
  width: 160px;
  height: 50px;
  left: 60px;
  top: 72px;
}

.menu-content {
  text-align: left;
}

.menu-item {
  padding-bottom: 25%;
  font-family: 'Optimist';
  font-style: normal;
  font-weight: 400;
  font-size: 36px;
  line-height: 47px;
  color: white;
  align-self: left;
}

.top-item {
  padding-top: 166px;

}

.bg-transparent {
  background-color: #013d5b;
}

ion-content {
  --background: #013d5b;
}
</style>