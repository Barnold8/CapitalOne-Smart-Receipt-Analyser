<template>
  <IonPage>

  <NavbarComponent @signOut="this.$emit('signOut')" @switchHome="this.$emit('switchHome')" @switchAnalytics="this.$emit('switchAnalytics')" @switchSettings="this.$emit('switchSettings')" v-if="this.listview == false">
    <ion-content v-if="show">
      <div class="gchartc">
        <div class="navigation-text">
          <h1>Currently Selected:</h1>
        </div>
        <div class="dropdown-menu-container">
          <DropdownMenu :options="this.options" :value="'Weekly'" @input="this.updateDateSelect"
            class="dropdown-weekly-monthly"></DropdownMenu>
        </div>
        <DateSelectorMonth v-if="this.hideWeek" :dateToStart="this.endDate" @currentStart="this.setStart"
          @currentEnd="this.setEnd" />
        <DateSelectorWeek v-if="!this.hideWeek" :dateToStart="this.endDate" @click="selectDate"
          @currentStart="this.setStart" @currentEnd="this.setEnd" />
        <div class="chart-container">
          <div class="chart-header" style="margin-bottom: 1rem;">Total Spending: £{{ totalAmount }}</div>
          <gauge-chart v-if="this.hideWeek" :value="(totalAmount)" :max="this.monthMax" :size="300" color="#ff5722" unit="%"
            style="flex: 1; display: flex; justify-content: center; align-items: center;" />
            <gauge-chart v-if="!this.hideWeek" :value="(totalAmount)" :max="this.weekMax" :size="300" color="#ff5722" unit="%"
            style="flex: 1; display: flex; justify-content: center; align-items: center;" />
            <div class="chart-header" style="padding: 2rem; font-weight: 400;">This chart will display the spending over the selected time period as % of your budget.</div>
        </div>
        <div class="line-container">
          <LineChart :data="this.data" :size="350" />
        </div>
        <div class="chart-header" style="padding: 2rem; font-weight: 400;">This chart will display your spending as a function over the time period.</div>
      </div>
      <div class="bar-chart">
        <BarChart :chartData="this.categoryAmounts" />
      </div>
      <div class="chart-header" style="padding: 2rem; font-weight: 400;">This chart will display your spending as a total inside of each category.</div>
    </ion-content>
  </NavbarComponent>
  <DateButtonList v-if="this.listview" :startDate="this.startDate" :endDate="this.endDate" @backPressed="this.hideList"
    :navType="this.listviewtype" />
  </IonPage>
</template>

<script>
/* eslint-disable no-unused-vars */
import moment from 'moment';
import NavbarComponent from '../layouts/NavbarComponent.vue';
import GaugeChart from '../components/GaugeChart.vue';
import { Preferences } from '@capacitor/preferences';
import DropdownMenu from '../components/DropdownMenu.vue';
import DateSelectorWeek from '../components/DateSelectorWeek.vue';
import LineChart from '../components/LineChart.vue';
import BarChart from '../components/BarChart.vue';
import DateSelectorMonth from '../components/DateSelectorMonth.vue';
import DateButtonList from '../components/DateButtonList.vue';
import axios from "axios";
import { IonPage } from "@ionic/vue";
export default {
  props: ['token'],
  components: {
    NavbarComponent,
    GaugeChart,
    DropdownMenu,
    DateSelectorWeek,
    DateSelectorMonth,
    LineChart,
    BarChart,
    DateButtonList,
    IonPage
  },
  beforeMount() {
    this.getData().then(response=>{
      this.setWeekMax().then(resp=>{
        if (resp.value != null) {
          this.weekMax = JSON.parse(resp.value).totalValue;
          this.setMonthMax().then(resp=>{
            if(resp.value != null) {
              this.monthMax = JSON.parse(resp.value).totalValue;
            }
            this.setAndMapData(response.data);
          })
        } else {
          this.setMonthMax().then(resp=>{
            if(resp.value != null) {
              this.monthMax = JSON.parse(resp.value).totalValue;
            }
            this.setAndMapData(response.data);
          });
        }
      });
    });
  },
  data() {
    return {
      options: ['Weekly', 'Monthly'],
      data: null,
      categoryAmounts: null,
      endDate: moment(),
      startDate: moment().subtract(7, 'days').startOf('day'),
      hideWeek: false,
      currStart: null,
      show: false,
      currEnd: null,
      listview: false,
      listviewtype: null,
      tokenHeader: {
                headers: {
                    'X-Token': this.token
                }
            },
      weekMax: 1000,
      monthMax: 1000
    }
  },
  computed: {
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
    getMapAndSet() {
      const categoryTotals = {};
      for (const obj of this.data) {
        for (const prop in obj) {
          if (!isNaN(parseInt(prop))) {
            const [_, category, amount] = obj[prop];
            categoryTotals[category] = (categoryTotals[category] || 0) + amount;
          }
        }
      }
      const labels = Object.keys(categoryTotals);
      const datasets = [{
        label: 'Total spending amount',
        backgroundColor: '#f87979',
        data: Object.values(categoryTotals)
      }];
      this.categoryAmounts = {
        labels: labels,
        datasets: datasets
      }
      console.log(this.categoryAmounts)
    },
    updateDateSelect(option) {
      this.endDate = moment()
      if (option == "Weekly") {
        this.hideWeek = false
      } else {
        this.hideWeek = true
      }
    },
    setStart(x) {
      this.startDate = x;
    },
    setEnd(x) {
      this.endDate = x;
      this.getData().then(response=>this.setAndMapData(response.data))
    },
    setWeekMax() {
      const response = Preferences.get({
                key: "weekly"
            });
            return response;
    },
    setMonthMax() {
      const response = Preferences.get({
                key: "monthly"
            });
            return response
    },
    showList(x) {
      this.listviewtype = x;
      this.listview = true;
    },
    hideList() {
      this.listview = false;
    },
    async getData() {
      const format = "YYYY-MM-DD"
      const start = this.startDate.format(format)
      const end = this.endDate.format(format)
      return axios.post('http://188.166.76.134/api/receipt-range?DateStart=' + start + "&" + "DateEnd=" + end, null, this.tokenHeader)
    },
    setAndMapData(resp) {
      this.data = resp
      this.getMapAndSet();
      this.show = true;
    }
  }
}
</script>

<style scoped>
@font-face {
  font-family: 'Optimist_RG';
  src: "/assets/fonts/Optimist_RG.ttf"
}

.gchartc {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.bar-chart {
  margin-top: 4rem;
}

.line-container {
  margin-top: 3rem;
}

.chart-container {
  width: 100%;
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-bottom: 5px;
  overflow-y: scroll;
}

.chart-container.fadeOut {
  opacity: 0;
  transition: opacity 0.5s;
}

.chart-header {
  font-size: 24px;
  font-weight: bold;
  padding-top: 2 rem;
  padding-bottom: 1rem;

}

.navigation-text {
  margin-bottom: 0rem;
}

.dropdown-weekly-monthly {
  background: #ccc;
  color: black;
  align-content: center;
}

.button {
  margin-top: 0rem;
  margin-bottom: 1.5rem;
  width: 80%;
  font-size: 26px;
  height: 50px;
  background: #013d5b;
  color: white;
  text-transform: none;
  box-shadow: 2px 2px 3px grey
}

.dropdown-menu-container {
  align-content: center;
  margin-bottom: 1rem;
}
</style>