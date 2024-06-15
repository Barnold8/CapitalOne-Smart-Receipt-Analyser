<template>
    <NavbarComponent
      @switchHome="this.$emit('switchHome')"
      @switchAnalytics="this.$emit('switchAnalytics')"
      @switchSettings="this.$emit('switchSettings')"
      @signOut="this.$emit('signOut')"
    >
      <ion-content>
        <div class="login-content">
          <h>Set your budget</h>
        </div>
        <div class="selections">
            <label for="time-selection" style="font-size: 1.2rem;">Time selection:</label>
            <select id="time-selection" v-model="selectedTimePeriod" style="margin-bottom: 20px;">
            <option value="daily" selected>Daily</option>
            <option value="weekly">Weekly</option>
            <option value="monthly">Monthly</option>
          </select>
        </div>
        <div class="selections" v-if="this.showTotal">
            <div class="total" style="margin-top: 20px;">
            <span style="font-size: 1.2rem; color: #013d5b;">Total</span>
            <input type="range" min="0" max="1000" v-model="totalValue" style="margin-left: 20px; margin-right: 20px; width: 60%;" @change="this.updateConfig()">
            <span style="font-size: 1.2rem;">£{{ totalValue }}</span>
          </div>
        </div>
        <div class="selections" v-if="this.showCategories">
          <div class="total" v-for="category in categories" :key="category" style="margin-bottom: 20px;">
            <span style="font-size: 1.2rem; color: #013d5b;">{{ category }}</span>
            <input type="range" min="0" max="250" v-model="categoryValues[category]" style="margin-left: 20px; margin-right: 20px; width: 60%;" @change="this.updateConfig()">
            <span style="font-size: 1.2rem;">£{{ categoryValues[category] }}</span>
          </div>
        </div>
      </ion-content>
    </NavbarComponent>
  </template>
  
  <script>
  import NavbarComponent from "../layouts/NavbarComponent.vue";
  import { Preferences } from '@capacitor/preferences'
  export default {
    components: {
      NavbarComponent,
    },
    data() {
      return {
        categories: [
          "Food & Drink",
          "Confectionaries / Cakes / Biscuits",
          "Cleaning",
          "Household",
          "Technology",
          "Furniture",
          "Gambling",
          "Alcohol & Smoking",
          "Pets",
          "Health & Beauty",
          "Baby",
          "Entertainment",
          "Clothing",
          "Expensive",
          "Jewellery",
        ],
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
        totalValue: 0,
        selectedTimePeriod: 'daily',
        showCategories: true,
        showTotal: false
      };
    },
    methods: {
        async updateConfig() {
            let jsonToStore = {};
            if(this.selectedTimePeriod == "weekly" || this.selectedTimePeriod == "monthly") {
                jsonToStore.totalValue = this.totalValue;
            } else {
                jsonToStore.categoryValues = this.categoryValues;
            }
            switch(this.selectedTimePeriod){
                case 'daily':
                    await Preferences.set({
                        key: 'daily',
                        value: JSON.stringify(jsonToStore)
                    });
                    break;
                case 'monthly':
                    await Preferences.set({
                            key: 'monthly',
                            value: JSON.stringify(jsonToStore)
                    });
                    break;
                case 'weekly':
                await Preferences.set({
                            key: 'weekly',
                            value: JSON.stringify(jsonToStore)
                    });
                    break;
            }
        },
        async getCategoryValuesDaily() {
            const response = Preferences.get({
                key: "daily"
            });
            return response;
        },
        async getTotalValueWeekly() {
            const response = Preferences.get({
                key: "weekly"
            });
            return response;
        },
        async getTotalValueMonthly() {
            const response = Preferences.get({
                key: "monthly"
            });
            return response;
        },
    },
    watch: {
        selectedTimePeriod(newVal, oldVal) {
            if(newVal == 'weekly' || newVal == "monthly") {
                this.showTotal = true;
                this.showCategories = false;
                if(newVal == 'weekly') {
                    this.getTotalValueWeekly().then(resp => {
                        if (resp.value != null) {
                            this.totalValue = JSON.parse(resp.value).totalValue;
                        } else {
                            this.totalValue = 100;
                        }
                    });
                } else {
                    this.getTotalValueMonthly().then(resp => {
                        if (resp.value != null) {
                            this.totalValue = JSON.parse(resp.value).totalValue;
                        } else {
                            this.totalValue = 100;
                        }
                    });
                }
            }
            else if(oldVal ==  'weekly' || oldVal == "monthly" && newVal == "daily") {
                this.showTotal = false;
                this.showCategories = true;
                this.getCategoryValuesDaily().then(resp => {
                    if (resp.value != null) {
                        this.categoryValues = JSON.parse(resp.value).categoryValues;
                    }
                });
            }
        }
    },
    mounted() {
        this.getCategoryValuesDaily().then(resp => {
            if (resp.value != null) {
                this.categoryValues = JSON.parse(resp.value).categoryValues;
            }
        });
    },
  };
  </script>
<style scoped>
@font-face {
  font-family: "Optimist_RG";
  src: "/assets/fonts/Optimist_RG.ttf";
}

.login-content {
  padding-top: 50px;
  display: flex;
  align-items: center;
  text-align: center;
  justify-content: center;
  color: #013d5b;
  font-size: 2rem;
}

.line-break {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 0px;
  color: #013d5b;
  font-size: 2rem;
}

.selections {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 40px;
}

.selections label {
  color: #013d5b;
  font-size: 1.2rem;
  margin-bottom: 20px;
}

.selections select {
  background-color: #f2f2f2;
  border: none;
  border-radius: 5px;
  color: #013d5b;
  font-size: 1.2rem;
  padding: 10px;
  margin-bottom: 30px;
}

.category {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-bottom: 50px;
}

.category span:first-of-type {
  color: #013d5b;
  font-size: 1.2rem;
  margin-bottom: 10px;
}

.category span:last-of-type {
  color: #013d5b;
  font-size: 1.2rem;
  margin-top: 10px;
}

.category input[type="range"] {
  -webkit-appearance: none;
  width: 100%;
  height: 20px;
  background: #f2f2f2;
  outline: none;
  opacity: 0.7;
  -webkit-transition: 0.2s;
  transition: opacity 0.2s;
  margin-top: 10px;
  margin-bottom: 10px;
}

.category input[type="range"]::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 25px;
  height: 25px;
  background: #013d5b;
  cursor: pointer;
  border-radius: 50%;
}

.total {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
    text-align: center;
}

.total span:first-of-type {
  color: #013d5b;
  font-size: 1.2rem;
  margin-bottom: 10px;
}

.total span:last-of-type {
  color: #013d5b;
  font-size: 1.2rem;
  margin-top: 10px;
}

.total input[type="range"] {
  -webkit-appearance: none;
  width: 100%;
  height: 20px;
  background: #f2f2f2;
  outline: none;
  opacity: 0.7;
  -webkit-transition: 0.2s;
  transition: opacity 0.2s;
  margin-top: 10px;
  margin-bottom: 10px;
}

.total input[type="range"]::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 25px;
  height: 25px;
  background: #013d5b;
border-radius: 50%;
cursor: pointer;
margin-top: -8px;
}

.total input[type="range"]::-moz-range-thumb {
width: 25px;
height: 25px;
background: #013d5b;
border: none;
border-radius: 50%;
cursor: pointer;
}

.total input[type="range"]::-ms-thumb {
width: 25px;
height: 25px;
background: #013d5b;
border: none;
border-radius: 50%;
cursor: pointer;
}

.selections div {
display: flex;
justify-content: space-between;
align-items: center;
margin: 10px 0;
width: 90%;
font-size: 1.2rem;
}

#time-selection {
border-radius: 10px;
border: 1px solid #013d5b;
background-color: white;
padding: 5px;
font-size: 1.2rem;
color: #013d5b;
}

#time-selection option {
color: #013d5b;
background-color: white;
font-size: 1.2rem;
}

.selections label {
font-size: 1.2rem;
margin-bottom: 5px;
color: #013d5b;
}
</style>