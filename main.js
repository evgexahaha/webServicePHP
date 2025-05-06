const app = Vue.createApp({
	data() {
		return {
			documentType: 'passport',
		}
	},
	methods: {
		resetForm() {
			window.location.href = 'index.html';
		}
	},
}).mount('.container')