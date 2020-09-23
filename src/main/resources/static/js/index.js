var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "index",
				id: "index",
			},
		},
		inputForms: [],
		form: {
		},
		years: [],
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
			this.$http.post('./getYear?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				App.unblock();
	            if (data.body.resultList) {
					this._data.years = data.body.resultList;
				}
			}, function(res) {
				 console.log(res.status);
			});
		},
		onSelect(year) {
			this.form.year = year;
			this.$http.post('./setYear?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				window.location.href="input/a_taxList";
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