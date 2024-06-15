<template>
  <histogram :data="histogramData" label="My Histogram" x-label="Value" y-label="Frequency" size="300" />
</template>
  
<script>
import Histogram from './HistogramChart.vue';

export default {
  components: {
    Histogram
  },
  data() {
    return {
      histogramData: [
        { label: '0', value: 10 },
        { label: '1', value: 20 },
        { label: '2', value: 30 },
        { label: '3', value: 40 },
        { label: '4', value: 50 },
        { label: '5', value: 40 },
        { label: '6', value: 30 },
        { label: '7', value: 20 },
        { label: '8', value: 10 },
        { label: '9', value: 5 }
      ]
    }
  }
}
</script>