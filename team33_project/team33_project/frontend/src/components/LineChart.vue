
<template>
    <canvas ref="chart" :style="chartStyle"></canvas>
  </template>
  
  <script>
  /* eslint-disable no-unused-vars */
  import Chart from 'chart.js/auto';
  
  export default {
    props: {
      data: {
        type: Array,
        required: true,
      },
      size: {
        type: Number,
        default: 400,
      },
    },
    computed: {
      chartStyle() {
        return {
          width: `${this.size}px`,
          height: `${this.size}px`,
        };
      },
    },
    mounted() {
      const chartData = this.mapDataToChartData(this.data);
      const options = {
        responsive: false,
        maintainAspectRatio: false,
        scales: {
          xAxes: [
            {
              type: 'time',
              time: {
                unit: 'day',
                displayFormats: {
                  day: 'MMM DD, YYYY',
                },
              },
              ticks: {
                autoSkip: true,
                maxTicksLimit: 10,
              },
            },
          ],
          yAxes: [
            {
              ticks: {
                beginAtZero: true,
              },
            },
          ],
        },
      };
      this.chart = new Chart(this.$refs.chart, {
        type: 'line',
        data: chartData,
        options: options,
      });
    },
    methods: {
        mapDataToChartData(data) {
            const dates = data.map((item) => item.date);
            const labels = [...new Set(dates)].sort();
            const datasets = [{
                label: "Total",
                data: []
            }];

            labels.forEach((label, index) => {
                const filteredData = data.filter((item) => item.date === label);

                const totalAmount = filteredData.reduce((acc, curr) => {
                return Object.values(curr).reduce((acc, curr) => {
                    if (Array.isArray(curr)) {
                    acc += curr[2];
                    }
                    return acc;
                }, acc);
                }, 0);

                datasets[0].data.push({
                x: label,
                y: totalAmount,
                });

                if (index === labels.length - 1) {
                datasets[0].data.push({
                    x: new Date(label).getTime() + 24 * 60 * 60 * 1000,
                    y: totalAmount,
                });
                }
            });

            return {
                labels: labels,
                datasets: datasets,
            };
            },
    },
    watch: {
      data(newData) {
        const chartData = this.mapDataToChartData(newData);
        this.chart.data = chartData;
        this.chart.update();
      },
      size(newSize) {
        this.$refs.chart.style.width = newSize + 'px';
        this.$refs.chart.style.height = newSize + 'px';
        this.chart.resize();
      },
    },
  };
  </script>
  
  <style>
  canvas {
    width: 100%;
    height: 100%;
  }
  </style>