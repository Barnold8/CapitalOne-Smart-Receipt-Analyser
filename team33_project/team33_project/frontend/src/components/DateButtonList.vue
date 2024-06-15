<template>
  <NavbarLeftArrow @backPressed="this.passToParent">
    <ion-content>
      <div>
        <h2 v-if="!this.navType" class="titleText">Select Date To View Receipt Items </h2>
        <h2 v-if="this.navType" class="titleText">Select Date To View Summary </h2>
        <div v-for="(date, index) in getDatesInRange()" :key="index" class="date-wrapper">
          <div class="date-item">
            <button class="date-button">{{ date }}</button>
          </div>
        </div>
      </div>
    </ion-content>
  </NavbarLeftArrow>
</template>
  
<script>
import moment from 'moment';
import NavbarLeftArrow from '../layouts/NavbarLeftArrow.vue';

export default {
  components: {
    NavbarLeftArrow,
  },
  props: {
    startDate: {
      type: Object,
      required: true
    },
    endDate: {
      type: Object,
      required: true
    },
    navType: {
      type: Boolean,
      required: true
    }
  },
  methods: {
    getDatesInRange() {
      const startDate = moment(this.startDate);
      const endDate = moment(this.endDate);
      const dateArray = [];

      // Loop through each day in the range
      while (startDate <= endDate) {
        // Format the date string
        const dateFormatted = this.formatDate(startDate);
        dateArray.push(dateFormatted);

        // Move to the next day
        startDate.add(1, 'day');
      }

      return dateArray;
    },

    formatDate(date) {
      return date.format('dddd Do MMMM YYYY');
    },
    passToParent() {
      this.$emit("backPressed");
    }
  }
}
</script>
  
<style scoped>
@font-face {
  font-family: 'Optimist_RG';
  src: "/assets/fonts/Optimist_RG.ttf"
}

.titleText {
  text-align: center;
  color: #013D5B;
}

.date-wrapper {
  display: flex;
  justify-content: center;
  margin: 1rem 0;

}

.date-item {
  display: flex;
  width: 70%;
  justify-content: center;
}

.date-button {
  background-color: #013D5B;
  color: white;
  padding: 3%;
  font-size: 20px
}
</style>