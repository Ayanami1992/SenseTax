var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "summary",
				id: "summary",
			},
		},
		inputForms: [],
		form: {
		},
		show: true,
		options:{
			localTaxRate: [{value:"", text: ""}],
		},

	},
	computed: {
	},
	watch: {
	},
	created: function () {
		this.init();
    },
	methods: {
		init() {


			this.$http.post('./getSummary?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
	            App.unblock();
				if (data.body.resultObject) {
					this._data.form = data.body.resultObject;
				}
			}, function(res) {
				 console.log(res.status);
			});
		},
		onReset(evt) {

		},
		moveTo(url) {
			window.location = url;
		},
	},

});

if (typeof(c_inputForms) != "undefined") {
	vm.$data.inputForms = c_inputForms;
}