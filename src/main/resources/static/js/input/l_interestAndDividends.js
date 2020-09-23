var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "l",
				url: "l_interestAndDividends"
			},
		},
		inputForms: [],
		form: {
		},
		show: true,
		options:{
		    A58_A60: [
		          { value: "社債", text: '社債' },
		          { value: "配当", text: '配当' },
		          { value: "投資", text: '投資' },
		    ],
		},

	},
	computed: {
		l_h252() {
			return this.form.l_h252;
		},
	},
	watch: {
		l_h252: function (val) {
			this._data.form.l_j252 = val;
		},
	},
	created: function () {
		this.init();
    },
	methods: {
		init() {
			this.$http.post('./l_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				App.unblock();
	            if (data.body.resultObject) {
					this._data.form = data.body.resultObject;
				}
			}, function(res) {
				 console.log(res.status);
			});
		},
		onSubmit(evt) {
			evt.preventDefault()
			this.$http.post('./l_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				 console.log(data);
				 $("#confirmClose").click();
				 swal("データを登録しました。", "", "success");
			}, function(res) {
				 console.log(res.status);
				 swal("登録失敗", "", "error");
			});
		},

		onReset(evt) {
			this.form={};
		},
		moveTo(url) {
			window.location = url;
		},
	},

});

vm.$data.inputForms = c_inputForms;