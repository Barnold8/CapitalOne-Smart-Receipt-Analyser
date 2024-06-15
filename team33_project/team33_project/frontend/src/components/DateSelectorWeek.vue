<template>
  <div class="co-dates">
    <span class="co-dates__range">{{ startDate.format('DD/MM/YYYY') }} - {{ endDate.format('DD/MM/YYYY') }}</span>
    <div class="button-container">
      <button class="co-dates__button" @click="prev">Previous</button>
      <button class="co-dates__button" :disabled="disableNext" @click="next">Next</button>
    </div>
  </div>
</template>
<script>
import moment from 'moment';

export default {
  props: {
    dateToStart: {
      type: Date,
      required: true
    }
  },
  mounted() {
    this.emitDate();
  },
  data() {
    const today = moment(this.endDate).endOf('day');
    const startDate = today.clone().subtract(7, 'days').startOf('day');
    return {
      startDate,
      disableNext: true,
      selectedDate: null,
      endDate: this.dateToStart
    };
  },
  methods: {
    prev() {
      this.startDate = moment(this.startDate).subtract(7, 'days').startOf('day');
      this.endDate = moment(this.endDate).subtract(7, 'days').endOf('day');
      this.disableNext = false;
      this.emitDate();
    },
    next() {
      const today = moment().endOf('day');
      if (!this.disableNext) {
        this.startDate = moment(this.startDate).add(7, 'days').startOf('day');
        this.endDate = moment(this.endDate).add(7, 'days').endOf('day');
        if (moment(this.endDate).isSame(today.clone().endOf('day'))) {
          this.disableNext = true;
        }
      }
      this.emitDate();
    },
    emitDate() {
      this.$emit('currentStart', this.startDate);
      this.$emit('currentEnd', this.endDate);
    }
  },
  watch: {
    startDate() {
      this.selectedDate = this.startDate.format('YYYY-MM-DD');
    }
  }
};
</script>
<style scoped>
@font-face {
  font-family: 'Optimist_RG';
  src: "/assets/fonts/Optimist_RG.ttf"
}

.co-dates {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
  font-size: 20px;
  color: #555;
  margin-bottom: 30px;
}

.co-dates__range {
  font-weight: bold;
}

.co-dates__button {
  background-color: #f8f8f8;
  border: 1px solid #ddd;
  border-radius: 3px;
  margin: 1rem;
  color: #555;
  cursor: pointer;
  font-size: 16px;
  padding: 10px 20px;
  transition: all 0.2s ease-in-out;
}
</style>

<style scoped>
.co-dates {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
  font-size: 20px;
  color: #555;
  margin-bottom: 30px;
}

.co-dates__range {
  font-weight: bold;
}

.co-dates__button {
  background-color: #013d5b;
  border: 1px solid #ddd;
  border-radius: 3px;
  margin: 1rem;
  color: white;
  cursor: pointer;
  font-size: 16px;
  padding: 10px 20px;
  transition: all 0.2s ease-in-out;
}
</style>