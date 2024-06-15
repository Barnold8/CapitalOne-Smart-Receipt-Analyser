<template>
  <div class="histogram-chart-container">
    <canvas ref="chart" width="canvasWidth" height="canvasHeight"></canvas>
  </div>
</template>

<script>
import { defineComponent } from 'vue';
import Chart from 'chart.js/auto';

export default defineComponent({
  props: {
    data: {
      type: Array,
      required: true
    },
    label: {
      type: String,
      default: 'Histogram'
    },
    xLabel: {
      type: String,
      default: 'Category'
    },
    yLabel: {
      type: String,
      default: 'Frequency'
    },
    backgroundColor: {
      type: String,
      default: 'rgba(0, 119, 204, 1)'
    },
    size: {
      type: Object,
      default: () => ({ width: 400, height: 400 })
    }
  },
  computed: {
    canvasWidth() {
      return this.size.width;
    },
    canvasHeight() {
      return this.size.height;
    }
  },
  mounted() {
    const ctx = this.$refs.chart.getContext('2d');
    const chartData = {
      labels: this.data.map(d => d.label),
      datasets: [
        {
          label: this.label,
          data: this.data.map(d => d.value),
          backgroundColor:
            ['#FF7F50', '#FFD700', '#FF69B4', '#FFA07A', '#BA55D3', '#FF8C00', '#FF6347', '#00FA9A', '#1E90FF', '#FF4500', '#00CED1', '#FFA500', '#8B008B', '#ADFF2F', '#FFC0CB'],
          borderWidth: 0,
          barThickness: 'flex',
          shadowOffsetX: 2,
          shadowOffsetY: 2,
          shadowBlur: 5,
          shadowColor: 'rgba(0, 0, 0, 0.5)'
        }
      ]
    };
    const chartOptions = {
      scales: {
        x: {
          title: {
            display: true,
            text: this.xLabel
          },
          grid: {
            display: false
          }
        },
        y: {
          ticks: {
            callback: function (value) {
              if (value % 1 === 0) {
                return value.toFixed(0);
              }
            },
          },
          title: {
            display: true,
            text: this.yLabel
          },
          grid: {
            display: false
          }
        }
      },
      plugins: {
        legend: {
          display: false
        }
      },
      elements: {
        bar: {
          backgroundColor: this.backgroundColor,
          borderColor: 'transparent',
          borderWidth: 0,
          borderRadius: 4,
          borderSkipped: false,
          shadowOffsetX: 2,
          shadowOffsetY: 2,
          shadowBlur: 5,
          shadowColor: 'rgba(0, 0, 0, 0.5)'
        }
      }
    };
    this.chart = new Chart(ctx, {
      type: 'bar',
      data: chartData,
      options: chartOptions
    });

    // set background color after chart is drawn
    ctx.fillStyle = this.backgroundColor;
    ctx.fillRect(0, 0, ctx.canvas.width, ctx.canvas.height);
  },
  beforeUnmount() {
    this.chart.destroy();
  }
});
</script>

<style>
.histogram-chart-container {
  display: flex;
  margin: auto;
  flex-direction: column;
  align-items: center;
  padding: 2%;
  position: relative;
  height: 300px;
  width: 400px
    /* added */
}
</style>