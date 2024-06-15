<template>
    <ion-page id="navbar-content">
      <ion-header>
        <ion-toolbar class="toolbar">
          <ion-buttons slot="start">
            <ion-button class="arrow-button" @click="goBack">
                BACK
            </ion-button>
          </ion-buttons>
          <!-- Logo for CapitalOne -->
        </ion-toolbar>
      </ion-header>
      <!-- All content within the navbar layout will be placed inside here, i.e. below the header content placed above, the header content will contain
      the arrow button and logo, where we populate what is inside this content depending on route or behaviour. -->
      <slot></slot>
    </ion-page>
  </template>
  
  <script>
    import {
      IonButton,
      IonButtons,
      IonHeader,
      IonPage,
      IonToolbar
    } from '@ionic/vue';
    import { defineComponent } from 'vue';
  
    export default defineComponent({
      components: {
        IonButton,
        IonButtons,
        IonHeader,
        IonPage,
        IonToolbar
      },
      methods: {
        goBack() {
          // Implement your own custom logic to handle going back to the previous page
          this.$emit('backPressed')
          console.log('Go back button clicked!');
        }
      }
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
  .arrow-button {
    background-color: transparent;
    margin-left: 0;
    margin-right: 0;
    padding: 0;
  }
  </style>