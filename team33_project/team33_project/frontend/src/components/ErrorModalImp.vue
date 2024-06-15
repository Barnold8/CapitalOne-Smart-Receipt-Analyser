<template>
    <ErrorModal :title="this.titleMsg" :subtitle="this.subtitleMsg" :cancelButtonText="this.cancelButton" :confirmButtonText="this.retryButton"></ErrorModal>
</template>

<script>
import ErrorModal from './ErrorModal.vue';
export default {
    components: {
        ErrorModal
    },
    data() {
        return {
            titleMsg : "Receipt not recognised",
            subtitleMsg : "Please make sure youre taking recept photo right", 
            cancelButton : "Cancel",
            retryButton : "Retry"
        }
    }
};
</script>