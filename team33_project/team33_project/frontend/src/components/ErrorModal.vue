<template>
  <div class="modal">
    <div class="modal-body">
      <div class="modal-header">
        <svg class="close-icon" width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg"
          @click="$emit('close')">
          <path d="M1.4 14L0 12.6L5.6 7L0 1.4L1.4 0L7 5.6L12.6 0L14 1.4L8.4 7L14 12.6L12.6 14L7 8.4L1.4 14Z"
            fill="#013D5B" />
        </svg>
      </div>
      <div class="icon-container">
        <svg class="icon" width="77" height="67" viewBox="0 0 77 67" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path
            d="M0 67L38.5 0L77 67H0ZM12.075 59.9474H64.925L38.5 14.1053L12.075 59.9474ZM38.5 56.4211C39.4917 56.4211 40.3235 56.0825 40.9955 55.4055C41.6675 54.7284 42.0023 53.8915 42 52.8947C42 51.8956 41.664 51.0575 40.992 50.3805C40.32 49.7034 39.4893 49.3661 38.5 49.3684C37.5083 49.3684 36.6765 49.7069 36.0045 50.384C35.3325 51.0611 34.9977 51.898 35 52.8947C35 53.8939 35.336 54.7319 36.008 55.409C36.68 56.086 37.5107 56.4234 38.5 56.4211ZM35 45.8421H42V28.2105H35V45.8421Z"
            fill="#CC2427" />
        </svg>
      </div>
      <div class="title-text">
        <p class="title">Oops! Something went wrong</p>
      </div>
      <div class="subtitle-text">
        <p class="subtitle">An error has occured. Please try again. Our code monkeys are hard at work fixing it!</p>
      </div>
      <div class="modal-footer">
        <button class="button" @click="$emit('confirm')">Confirm</button>
        <button class="button" @click="$emit('cancel')">Cancel</button>
      </div>
    </div>
  </div>
</template>
  
<script>
export default {
  props: {
    title: {
      type: String,
      required: true,
    },
    subtitle: {
      type: String,
      required: true,
    },
    cancelButtonText: {
      type: String,
      required: true,
    },
    confirmButtonText: {
      type: String,
      required: true,
    },
  },
};
</script>

<style scoped>
.modal {

  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  background-color: rgba(0, 0, 0, 0.7);
  display: flex;
  justify-content: center;
  align-items: center;
}

.modal-body {
  background-color: white;
  border-radius: 10px;
  padding: 20px;
  box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.3);
  position: relative;
  width: 300px;
  height: 400px;
  display: flex;
  flex-direction: column;
}

.modal-header {
  margin-left: 15rem;
  margin-top: 1rem;
}

.modal-footer {
  margin-top: 2rem;
  margin-left: 2rem;
}

.icon-container {
  margin-left: 6rem;
}

.text-container {
  margin-top: 1rem;
  margin-left: 0rem;
  align-content: center;
  white-space: nowrap;
}

.subtitle-text {
  white-space: pre-wrap;
}

.title {
  font-size: 24px;
  font-weight: bold;
  margin: 20px 0;
  text-align: center;
}

.subtitle {
  font-size: 18px;
  margin-bottom: 10px;
  text-align: center;
}


.button {
  background-color: #013D5B;
  color: white;
  padding: 10px 20px;
  cursor: pointer;
  margin: 0 10px;
  transition: background-color 0.3s ease;
}

.button:hover {
  background-color: #1B5F8F;
}
</style>