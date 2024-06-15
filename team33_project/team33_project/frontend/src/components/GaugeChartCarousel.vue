<template>
  <div class="gchartc">
    <div class="chart-container" :class="{ fadeOut: isFadingOut }" @touchstart="startSwipe" @touchmove="swipe"
      @touchend="endSwipe">
      <div class="chart-header">{{ charts[currentChartIndex].title }}</div>
      <GaugeChart :value="charts[currentChartIndex].value" :max="charts[currentChartIndex].max" :size="300"
        color="#ff5722" unit="%" :key="currentChartIndex"
        style="flex: 1; display: flex; justify-content: center; align-items: center;" />
    </div>
    <div class="navigation-buttons">
      <button @click="previousChart">Previous</button>
      <button @click="nextChart">Next</button>
    </div>
  </div>
</template>
<script>
import GaugeChart from "./GaugeChart.vue";

export default {
  components: {
    GaugeChart,
  },
  props: {
    charts: {
      type: Array,
      required: true
    }
  },
  data() {
    return {
      currentChartIndex: 0,
      isFadingOut: false,
      touchStartX: 0,
      touchEndX: 0,
    };
  },
  methods: {
    previousChart() {
      this.isFadingOut = true;
      setTimeout(() => {
        this.currentChartIndex =
          (this.currentChartIndex - 1 + this.charts.length) % this.charts.length;
        this.isFadingOut = false;
      }, 500);
    },
    nextChart() {
      this.isFadingOut = true;
      setTimeout(() => {
        this.currentChartIndex = (this.currentChartIndex + 1) % this.charts.length;
        this.isFadingOut = false;
      }, 500);
    },
    startSwipe(event) {
      this.touchStartX = event.changedTouches[0].screenX;
    },
    swipe(event) {
      event.preventDefault();
      this.touchEndX = event.changedTouches[0].screenX;
    },
    endSwipe() {
      if (this.touchEndX < this.touchStartX) {
        this.nextChart();
      } else if (this.touchEndX > this.touchStartX) {
        this.previousChart();
      }
    },
  },
};
</script>
  
<style scoped>
.gchartc {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 1.75rem;
}

.chart-container {
  width: 400px;
  height: 400px;
  margin: 10px;
  position: relative;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-bottom: 5px;
}

.chart-container.fadeOut {
  opacity: 0;
  transition: opacity 0.5s;
}

.chart-header {
  font-size: 24px;
  font-weight: bold;
}


.navigation-buttons button {
  display: inline-block;
  justify-content: center;
  margin: 0 15px;
  padding: 10px 20px;
  background-color: #013d5b;
  border: none;
  border-radius: 0px;
  color: white;
  font-size: 26px;
  box-shadow: 0px 5px 5px grey;
  letter-spacing: 1px;
  cursor: pointer;

}

.navigation-buttons button:active {
  background-color: #035883;
  color: #f1f1f1;
}

</style>