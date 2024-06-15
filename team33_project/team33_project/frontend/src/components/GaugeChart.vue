<template>
    <div class="gauge-chart-container">
      <svg :width="size" :height="size">
        <circle class="gauge-background" :r="radius" :cx="center" :cy="center" />
        <circle class="gauge-progress" :r="radius" :cx="center" :cy="center"
          :stroke-dasharray="circumference" :stroke-dashoffset="dashoffset"
          :style="{ stroke: color() }" />
        <text class="gauge-label" :x="center" :y="center">£{{ value }}</text>
      </svg>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      value: {
        type: Number,
        required: true
      },
      max: {
        type: Number,
        required: true
      },
      size: {
        type: Number,
        default: 200
      },
      unit: {
        type: String,
        default: ""
      }
    },
    computed: {
    circumference() {
      return 2 * Math.PI * this.radius;
    },
    radius() {
      return (this.size - 10) / 2;
    },
    center() {
      return this.size / 2;
    },
    dashoffset() {
      return this.value >= this.max ? 0 : this.circumference * (1 - this.value / this.max);
    }
    },
    methods: {
      color() {
        const percentage = this.value / this.max * 100;
        if (percentage > 100) {
          return "#BA2629"; // Red for over max
        } else if (percentage >= 85) {
          return "#E05752"; // Darker red for 85%-100%
        } else if (percentage >= 75) {
          return "#FBD44D"; // Yellow for 75%-85%
        } else {
          return "#7BB475"; // Green for 75% or less
        }
      }
    }
  };
  </script>
  
  <style scoped>
  .gauge-background {
    fill: transparent;
    stroke: #D7D7D7;
    stroke-width: 10;
  }
  .gauge-progress {
    fill: transparent;
    stroke-width: 10;
    transform: rotate(-90deg);
    transform-origin: center;
    transition: stroke-dashoffset 0.5s ease-in-out;
  }
  .gauge-label {
    font-size: 40px;
    font-weight: bold;
    text-anchor: middle;
  }
  </style>