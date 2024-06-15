<template>
  <div class="modal-wrapper">
    <div class="modal">
      <div class="modal-header">
        <div class="modal-logo">
          <h1>Confirm your categories</h1>
        </div>
        <div class="modal-close">
          <button @click="closeModal">X</button>
        </div>
      </div>
      <div class="modal-body">
        <div v-for="(item, index) in items" :key="index" class="modal-item">
          <p class="modal-item-name">{{ item.name }}</p>
          <select class="modal-item-category" v-model="item.category" @change="addCategoryChange(item)">
            <option v-for="(category, index) in categories" :key="index">{{ category }}</option>
          </select>
          <p class="modal-item-price">{{ item.price }}</p>
        </div>
      </div>
      <div class="modal-footer">
        <button class="modal-button" @click="confirm">Confirm</button>
        <button class="modal-button" @click="closeModal">Cancel</button>
      </div>
    </div>
  </div>
</template>
  
<script>
export default {
  props: {
    items: {
      type: Array,
      required: true,
    },
    categories: {
      type: Array,
      required: true,
    },
  },
  data() {
    return {
      originalCategories: [], // array to track original categories
      categoryChanges: {}, // object to track category changes
    };
  },
  mounted() {
    // initialize originalCategories with the original categories
    this.items.forEach((item) => {
      this.originalCategories[item.name] = item.category;
    });
  },
  methods: {
    closeModal() {
      this.$emit('close');
    },
    confirm() {
      // create JSON object with receipt and differences
      const Receipt = {};
      const Differences = {};
      this.items.forEach((item) => {
        // if item has a changed category, add it to differences
        if (this.categoryChanges[item.name] != undefined) {
          Differences[item.name] = this.categoryChanges[item.name];
        }
        Receipt[item.name] = [item.category, item.price];
      });
      this.$emit('confirm', { Receipt, Differences });
    },
    addCategoryChange(item) {
      // add category change to categoryChanges object
      // if (item.category !== this.originalCategories[item.name]) {
      //   this.categoryChanges = Object.assign({}, this.categoryChanges, { [item.name]: item.category });
      // }
      this.categoryChanges = Object.assign({}, this.categoryChanges, { [item.name]: item.category });
    },
  },
};
</script>
  
<style scoped>
.modal-button {
  margin: 1rem;
  padding-left: 1rem;
  padding-right: 1rem;
  font-size: 12;
  height: 30px;
  background: #013d5b;
  color: white;
  text-transform: none;
  box-shadow: 2px 2px 3px grey
}

.modal-wrapper {
  position: fixed;
  z-index: 9999;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.modal {
  position: relative;
  background-color: white;
  width: 100%;
  max-width: 100%;
  max-height: 100%;
  overflow-y: scroll;
  display: flex;
  flex-direction: column;
  border-radius: 0px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

.modal-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px;
}

.modal-logo {
  flex-grow: 1;
  text-align: center;
}

.modal-close {
  padding: 10px;
}

.modal-body {
  padding: 20px;
}

.modal-item {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}

.modal-item-name {
  flex-grow: 1;
  margin-right: 10px;
  max-width: 100%;
  word-break: break-word;
}

.modal-item-price {
  margin-left: 10px;
  word-break: break-word;
}

.modal-item-category {
  margin-right: 10px;
  width: 30%;
}

.modal-footer {
  display: flex;
  justify-content: center;
  padding: 20px;
}
</style>