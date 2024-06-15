<template>
  <div>
    <bar-chart :chartData="chartData"></bar-chart>
  </div>
</template>
  
<script>
import BarChart from './BarChart.vue'

export default {
  components: {
    BarChart
  },
  data() {
    return {
      chartData: {
        labels: ['Category 1', 'Category 2', 'Category 3', 'Category 4', 'Category 5', 'Category 6', 'Category 7', 'Category 8', 'Category 9', 'Category 10', 'Category 11', 'Category 12', 'Category 13', 'Category 14', 'Category 15'],
        datasets: [
          {
            label: 'Total spending amount',
            backgroundColor: '#f87979',
            data: Array.from({ length: 15 }, () => Math.floor(Math.random() * 100) + 1)
          }
        ]
      }
    }
  }
}
</script>