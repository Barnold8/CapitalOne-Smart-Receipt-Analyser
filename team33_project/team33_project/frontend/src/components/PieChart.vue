<template>
  <div class="pie-chart-container">
    <canvas :width="canvasSize" :height="canvasSize" ref="pieChart"></canvas>
    <div class="legend-container" :style="{ width: legendWidth + 'px' }" ref="legendContainer">
      <div v-for="(item, index) in data" :key="index" class="legend-item">
        <div class="legend-color" :style="{ backgroundColor: colors[index % colors.length] }"></div>
        <div class="legend-label">{{ item.label }}</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    data: {
      type: Array,
      required: true,
    },
    colors: {
      type: Array,
      default: () => [  '#FF7F50',  '#FFD700',  '#FF69B4',  '#FFA07A',  '#BA55D3',  '#FF8C00',  '#FF6347',  '#00FA9A',  '#1E90FF',  '#FF4500',  '#00CED1',  '#FFA500',  '#8B008B',  '#ADFF2F',  '#FFC0CB']
    },
    size: {
      type: Number,
      default: 200,
    },
  },
  mounted() {
    this.renderPieChart();
  },
  methods: {
    renderPieChart() {
      const canvas = this.$refs.pieChart;
      canvas.width = this.size;
      canvas.height = this.size;
      const ctx = canvas.getContext('2d');
      const total = this.data.reduce((acc, curr) => acc + curr.value, 0);
      let startAngle = 0;

      // Clear the legend container before appending legend items
      this.$refs.legendContainer.innerHTML = '';

      this.data.forEach((item, index) => {
        const sliceAngle = total === 0 ? 0 : 2 * Math.PI * item.value / total;

        ctx.fillStyle = this.colors[index];
        ctx.beginPath();
        ctx.moveTo(canvas.width / 2, canvas.height / 2);
        ctx.arc(canvas.width / 2, canvas.height / 2, canvas.height / 2, startAngle, startAngle + sliceAngle);
        ctx.closePath();

        // add border
        ctx.lineWidth = 1;
        ctx.strokeStyle = "#ffffff";
        ctx.stroke();
        ctx.fill();

        // Update start angle for next slice
        startAngle += sliceAngle;

        // Add legend item
        const legendItem = document.createElement('div');
        legendItem.classList.add('legend-item');
        const legendColor = document.createElement('div');
        legendColor.classList.add('legend-color');
        legendColor.style.backgroundColor = this.colors[index];
        const legendLabel = document.createElement('div');
        legendLabel.classList.add('legend-label');
        legendLabel.textContent = item.label;
        legendItem.appendChild(legendColor);
        legendItem.appendChild(legendLabel);
        this.$refs.legendContainer.appendChild(legendItem);
      });
    }
  },
};
</script>
<style>
.pie-chart-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 3rem;
  margin-bottom: 0rem;
  position: relative; /* added */
}
.legend-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 10px;
}
.legend-item {
  display: flex;
  align-items: center;
  margin-right: 10px;
}
.legend-color {
  width: 10px;
  height: 10px;
  margin-right: 5px;
}
.legend-label {
  margin-top: 3px;
  font-size: 14px;
}
</style>