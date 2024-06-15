<template>
    <ion-page id="navbar-content">
      <ion-header>
        <ion-toolbar class="toolbar">
          <ion-buttons slot="start">
            <ion-menu-button></ion-menu-button>
          </ion-buttons>
        </ion-toolbar>
      </ion-header>
      <slot></slot>
    </ion-page>
  </template>
  
  <script>
    import {
      IonHeader,
      IonPage,
      IonToolbar
    } from '@ionic/vue';
    import { defineComponent } from 'vue';
  
    export default defineComponent({
      components: {
        IonHeader,
        IonPage,
        IonToolbar
      },
    });
  </script>
  
  <style scoped>
  .logo {
    max-width: 110px;
    position:absolute;
      left: 0;
      right: 0;
      margin:0 auto;
      top: 2rem;
      transform:translateY(-50%);
  }
  </style>