<template>
  <div class="bar-chart-container">
    <canvas ref="canvas" width="canvasWidth" height="canvasHeight"></canvas>
  </div>
</template>

<script>
import { Bar } from 'vue-chartjs'
import Chart from 'chart.js/auto';

export default {
  extends: Bar,
  data() {
    return {
      containerHeight: 0
    }
  },
  props: {
    chartData: {
      type: Object,
      required: true
    },
    colors: {
      type: Array,
      default: () => ['#FF7F50', '#FFD700', '#FF69B4', '#FFA07A', '#BA55D3', '#FF8C00', '#FF6347', '#00FA9A', '#1E90FF', '#FF4500', '#00CED1', '#FFA500', '#8B008B', '#ADFF2F', '#FFC0CB']
    },
    chartOptions: {
      type: Object,
      default: () => ({
        responsive: true,
        maintainAspectRatio: false,
        scales: {
          xAxes: [
            {
              ticks: {
                beginAtZero: true
              }
            }
          ]
        },
        indexAxis: 'y'
      })
    }
  },
  mounted() {
    this.containerHeight = 600 // set the height of the container element to the height of the window minus 50 pixels
    this.renderChart()
  },
  watch: {
  chartData: {
    handler: function () {
      this.renderChart();
    },
    deep: true
    }
  },
  methods: {
    renderChart() {
      const canvas = this.$refs.canvas
      const context = canvas.getContext('2d')
      const chartData = this.chartData
      const chartOptions = this.chartOptions
       // Check if a Chart.js instance already exists on the canvas
      const existingChart = Chart.getChart(canvas)

      if (existingChart) {
        // If an instance already exists, destroy it before rendering the new one
        existingChart.destroy()
      }
      new Chart(context, {
        type: 'bar',
        data: {
          labels: chartData.labels,
          datasets: [
            {
              label: chartData.datasets[0].label,
              backgroundColor: ['#FF7F50', '#FFD700', '#FF69B4', '#FFA07A', '#BA55D3', '#FF8C00', '#FF6347', '#00FA9A', '#1E90FF', '#FF4500', '#00CED1', '#FFA500', '#8B008B', '#ADFF2F', '#FFC0CB'],

              data: chartData.datasets[0].data
            }
          ]
        },
        options: chartOptions
      })
    }
  }
}
</script>

<style>
.bar-chart-container {
  display: flex;
  flex-direction: column;
  margin: auto;
  align-items: center;
  margin-top: 1rem;
  margin-bottom: 1rem;
  position: relative;
  height: 300px;
  width: 400px;
}
</style>