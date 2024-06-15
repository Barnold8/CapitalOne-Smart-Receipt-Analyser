<template>
  <div class="dropdown">
    <div class="selected-option" @click="toggleDropdown">{{ selectedOption }}</div>
    <div class="options" v-show="showDropdown">
      <div class="option" v-for="(option, index) in options" :key="index" @click="selectOption(option)">
        {{ option }}
      </div>
    </div>
  </div>
</template>
  
<script>
export default {
  props: {
    options: {
      type: Array,
      required: true
    },
    value: {
      type: String,
      default: ''
    }
  },
  data() {
    return {
      selectedOption: this.value,
      showDropdown: false
    };
  },
  watch: {
    value(newValue) {
      this.selectedOption = newValue;
    }
  },
  methods: {
    toggleDropdown() {
      this.showDropdown = !this.showDropdown;
    },
    selectOption(option) {
      this.selectedOption = option;
      this.showDropdown = false;
      this.$emit('input', option);
    }
  }
};
</script>
  
<style scoped>
@font-face {
  font-family: 'Optimist_RG';
  src: "/assets/fonts/Optimist_RG.ttf"
}

.dropdown {
  position: relative;
  display: inline-block;
  max-width: 9rem;
}

.selected-option {
  padding: 8px;
  border: 1px solid #ccc;
  cursor: pointer;
}

.options {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1;
  background-color: #fff;
  border: 1px solid #ccc;
  border-top: none;
  max-height: 200px;
  overflow-y: auto;
}

.option {
  padding: 8px;
  cursor: pointer;
  background: #ccc;
}

.option:hover {
  background-color: #f2f2f2;
}
</style>