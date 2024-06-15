<template>
  <ion-content>
    <div v-if="this.showInfo" class="date-container">
      <span class="date">{{ formattedDate }}</span>
    </div>
    <div v-if="this.showInfo"  class="button-container">
      <button class="button" @click="handleButtonClick">
        <span class="circle"></span>
        <span class="plus">+</span>
      </button>
      <h2 v-if="this.showInfo" class="total-spending">Total: £{{ totalAmount }}</h2>
      <button class="normal-button" @click="this.showHideBreakdown(1)">View category budget comparison</button>
      <button class="normal-button" @click="this.showHideBreakdown(2)">View spending breakdown pie chart</button>
      <button class="normal-button" @click="this.showHideBreakdown(3)">View spending breakdown bar chart</button>
      <button class="normal-button" @click="this.showHideBreakdown(4)">View frequency of categories</button>
    </div>
    <!-- <h1 class="daily-summary">Daily Summary</h1> -->
    <svg v-if="!this.showInfo" class="close-icon" style="margin-left:85%; margin-top: 3rem;" width="25" height="25" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg"
          @click="this.hideInfo()">
          <path d="M1.4 14L0 12.6L5.6 7L0 1.4L1.4 0L7 5.6L12.6 0L14 1.4L8.4 7L14 12.6L12.6 14L7 8.4L1.4 14Z"
            fill="#013D5B" />
        </svg>
    <h2 v-if="!this.showInfo" class="date-container" style="margin-top: 0%; padding-top: 0;">Spending Analysis</h2>
    <h3 v-if="!this.showInfo && this.showGauge" class="date-container" style="margin-top: 0%; font-size: 24px; padding-top: 0;">View your budget comparison</h3>
    <h3 v-if="!this.showInfo && this.showPie" class="date-container" style="margin-top: 0%; font-size: 24px; padding-top: 0;">View your spending breakdown</h3>
    <h3 v-if="!this.showInfo && this.showBar" class="date-container" style="margin-top: 0%; font-size: 24px; padding-top: 0;">View your spending breakdown</h3>
    <h3 v-if="!this.showInfo && this.showFrequency" class="date-container" style="margin-top: 0%; font-size: 24px; padding-top: 0;">View your spending frequency</h3>
    <GaugeChartCarousel v-if="!this.showInfo && this.showGauge" :charts="this.chartsGauge"></GaugeChartCarousel>
    <div class="chart-container">
      <PieChart v-if="!this.showInfo && this.showPie" :size="400" :data="this.chartsPie" class="chart"></PieChart>
    </div>
    <div class="chart-container">
      <HistogramChart v-if="!this.showInfo && this.showFrequency" :size="({ width: 300, height: 250 })" :data="this.categoryCounts" class="chart"></HistogramChart>
    </div>
    <div class="chart-container">
      <BarChart v-if="!this.showInfo && this.showBar" :chartData="categoryAmounts" class="chart"></BarChart>
    </div>  
    <h3 v-if="!this.showInfo && this.showGauge" class="date-container" style="margin-top: 2rem; font-size: 24px; padding:5px;">This chart will you show how much you've spent in relation to your budget.</h3>
    <h3 v-if="!this.showInfo && this.showPie" class="date-container" style="margin-top: 2rem; font-size: 24px; padding:5px;">This chart will show you what proportion of your spending was in each category.</h3>
    <h3 v-if="!this.showInfo && this.showBar" class="date-container" style="margin-top: 2rem; font-size: 24px; padding:5px;">This chart will show you how much you've spent in all the categories available.</h3>
    <h3 v-if="!this.showInfo && this.showFrequency" class="date-container" style="margin-top: 2rem; font-size: 24px; padding:5px;">This chart will show how many times a category appeared in your data.</h3>

  </ion-content>
</template>


<script>
import { IonContent } from '@ionic/vue';
import GaugeChartCarousel from '../components/GaugeChartCarousel.vue';
import BarChart from '../components/BarChart.vue';
import HistogramChart from '../components/HistogramChart.vue';
import PieChart from '../components/PieChart.vue'
import { Preferences } from '@capacitor/preferences';

export default {
  name: 'HomePageSummary',
  components: {
    IonContent,
    GaugeChartCarousel,
    PieChart,
    HistogramChart,
    BarChart
  },
  props: {
    data: {
      required: true
    }
  },
  beforeMount() {
    this.updateCategoryValues().then(resp => {
      if (resp.value != null) {
        this.categoryValues = JSON.parse(resp.value).categoryValues;
      }
      this.calculateCategories();
      this.getCategoryCounts();
      this.getMapAndSet();
    });
  },
  data() {
    return {
      date: new Date(),
      chartsGauge: null,
      chartsPie: null,
      categoryCounts: null,
      categoryAmounts: null,
      showInfo: true,
      showBar: false,
      showGauge: false,
      showFrequency: false,
      showPie: false,
      categoryValues: {
          "Food & Drink": 100,
          "Confectionaries / Cakes / Biscuits": 100,
          Cleaning: 100,
          Household: 100,
          Technology: 100,
          Furniture: 100,
          Gambling: 100,
          "Alcohol & Smoking": 100,
          Pets: 100,
          "Health & Beauty": 100,
          Baby: 100,
          Entertainment: 100,
          Clothing: 100,
          Expensive: 100,
          Jewellery: 100,
        },
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
    },
    totalAmount() {
      let total = 0;
      for (let i = 0; i < this.data.length; i++) {
        const receipt = this.data[i];
        for (let j = 0; j < Object.keys(receipt).length - 1; j++) {
          const item = receipt[j];
          total += item[2];
        }
      }
      return total.toFixed(2);
    }
  },
  methods: {
    async updateCategoryValues() {
      const response = Preferences.get({
          key: "daily"
      });
      return response;
    },
    handleButtonClick() {
      this.$emit('CameraShow');
    },
    showHideBreakdown(type) {
      this.showInfo = false;
      if(type == 1) {
        this.showGauge = true;
      } else if(type == 2) {
        this.showPie = true;
      } else if(type == 3) {
        this.showBar = true;
      } else if(type == 4) {
        this.showFrequency = true;
      }
    },
    calculateCategories() {
      let categories = {};
      this.data.forEach(dataObj => {
        for (let i = 0; i < Object.keys(dataObj).length - 1; i++) {
          let category = dataObj[i][1];
          let amount = dataObj[i][2];
          categories[category] = categories[category] ? categories[category] + amount : amount;
        }
      });
      this.chartsGauge = [];
      this.chartsPie = [];
      Object.keys(categories).forEach(category => {
        this.chartsGauge.push({
          title: category,
          value: Math.round(categories[category]),
          max: this.categoryValues[category]
        });
        this.chartsPie.push({
          label: category,
          value: Math.round(categories[category] * 100) / 100
        })
      });
      console.log(this.chartsGauge)
    },
    getCategoryCounts() {
      // Create an object to store the counts
      const counts = {}

      // Loop through the items and count the categories
      this.data.forEach(item => {
        Object.values(item).forEach(value => {
          if (Array.isArray(value) && value.length === 3) {
            const category = value[1]
            if (counts[category]) {
              counts[category] += 1
            } else {
              counts[category] = 1
            }
          }
        })
      })
      // Convert the counts object into an array of objects with label and value properties
      this.categoryCounts = Object.keys(counts).map(category => {
        return { label: category, value: counts[category] }
      })

      // Sort the array by value in descending order
      this.categoryCounts.sort((a, b) => b.value - a.value)
    },
    getMapAndSet() {
      const categoryTotals = {};

      // Iterate through the array of objects
      for (const obj of this.data) {
        // Iterate through the properties of each object
        for (const prop in obj) {
          // Check if the property is a number (i.e., an index)
          if (!isNaN(parseInt(prop))) {
            // Extract the category name and amount from the array
            const [_, category, amount] = obj[prop];
            _
            // Add the amount to the corresponding category in the categoryTotals object
            categoryTotals[category] = (categoryTotals[category] || 0) + amount;
          }
        }
      }

      // Create the labels array from the keys of the categoryTotals object
      const labels = Object.keys(categoryTotals);

      // Create the datasets array with a single object containing the spending amounts
      const datasets = [{
        label: 'Total spending amount',
        backgroundColor: '#f87979',
        data: Object.values(categoryTotals)
      }];
      this.categoryAmounts = {
        labels: labels,
        datasets: datasets
      }
    },
    hideInfo() {
      this.showInfo = true;
      this.showPie = false;
      this.showBar = false;
      this.showFrequency = false;
      this.showGauge = false;
    }
  }
}
</script>


<style scoped>
@font-face {
  font-family: 'Optimist_RG';
  src: "/assets/fonts/Optimist_RG.ttf"
}

.normal-button {
  background-color: #013D5B;
  color: white;
  padding: 3%;
  font-size: 20px;
  display: flex;
  align-content: center;
  text-align: center;
  justify-content: center;
  margin-top: 1rem;
  width: 75%;
}

.date-container {
  padding-top: 50px;
  display: flex;
  align-items: center;
  text-align: center;
  justify-content: center;
  color: #013d5b;
  font-size: 2.25rem;
  margin-top: 7.5%;
}


.button-container {
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
  margin-top: 1rem;
}

.button {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 65px;
  height: 65px;
  border-radius: 50%;
  background-color: #013D5B;
  color: #fff;
  font-size: 2rem;
  border: none;
  cursor: pointer;
  position: relative;
}

.circle {
  display: block;
  position: absolute;
  width: 100%;
  height: 100%;
  border-radius: 500%;
  background-color: #fff;
  opacity: 0.2;
}

.plus {
  position: relative;
  z-index: 1;
}

.daily-summary {
  margin-top: 2rem;
  color: #013d5b;
  font-size: 2.5rem;
  font-style: normal;
  font-weight: 400;
  font-size: 48px;
  line-height: 42px;
  /* identical to box height */
  text-align: center;

}

.total-spending {
  margin-top: 0.25rem;
  color: #013d5b;
  font-style: normal;
  font-weight: 400;
  padding-top: 40px;
  margin-bottom: 2rem;
  font-size: 48px;
  line-height: 16px;
  text-align: center;
  text-decoration:solid;
}

.chart-container {
  display: flex;
  align-content: center;
  width: 80%;
  margin: auto;
  padding: auto;
}
</style>