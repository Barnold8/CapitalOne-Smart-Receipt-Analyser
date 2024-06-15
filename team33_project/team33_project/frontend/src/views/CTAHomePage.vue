<template>
  <div class="cta-container">
    <div class="date-container">
      <span class="date">{{ formattedDate }}</span>
    </div>
    <ion-label class="label-info">No receipt found</ion-label>
    <ion-label class="label-info">Add a receipt with the button below</ion-label>
    <ion-button @click="CTAClick" expand="full " class="cta-btn">Add a Receipt</ion-button>
    <ion-label class="label-info">How to add a receipt:</ion-label>
    <ion-label class="instructions-list">
      1. Click the "Add a receipt" button to open the Camera
    </ion-label>
    <ion-label class="instructions-list">
      2. Make sure the receipt is not obstructed and that the receipt is placed flat
    </ion-label>
    <ion-label class="instructions-list">
      3. Take an image of the whole receipt
    </ion-label>
  </div>
</template> 

<script>
export default {
  data() {
    return {
      date: new Date()
    }
  },
  methods: {
    CTAClick() {
      this.$emit('CameraShow', true)
    }
  },
  computed: {
    formattedDate() {
      const daysOfWeek = [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
      ];
      const dayOfWeek = daysOfWeek[this.date.getDay()];
      const dayOfMonth = this.date.getDate();
      const monthNames = [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
      ];
      const monthName = monthNames[this.date.getMonth()];
      const year = this.date.getFullYear();

      // Add the appropriate suffix to the day of the month
      let suffix;
      switch (dayOfMonth) {
        case 1:
        case 21:
        case 31:
          suffix = "st";
          break;
        case 2:
        case 22:
          suffix = "nd";
          break;
        case 3:
        case 23:
          suffix = "rd";
          break;
        default:
          suffix = "th";
          break;
      }

      return `${dayOfWeek} ${dayOfMonth}${suffix} ${monthName} ${year}`;
    }
  }
};
</script>

<style scoped>
@font-face {
  font-family: 'Optimist_RG';
  src: "/assets/fonts/Optimist_RG.ttf"
}

.cta-btn {
  margin-top: 3rem;
  margin-bottom: 3rem;
  width: 80%;
  font-size: 26px;
  height: 50px;
  --background: #013d5b;
  color: white;
  text-transform: none;
  box-shadow: 2px 2px 3px grey
}

.label-info {
  color: #013d5b;
  font-size: 26px;
  margin: 0.5rem;
}

.instructions-list {
  color: #013d5b;
  font-size: 20px;
  margin: 0.5rem;
}


.cta-container {
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

.date-container {
  margin-bottom: 2rem;
  display: flex;
  align-items: center;
  text-align: center;
  justify-content: center;
  color: #013d5b;
  font-size: 40px
}



.label-info {
  padding-left: 1rem;
  padding-right: 1rem;
  padding-bottom: 0.5rem;
}
</style>