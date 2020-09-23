var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "e",
				url: "e_table51"
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
		e_h121() {
			return this.form.e_h121;
		},
		e_h122() {
			return this.form.e_h122;
		},
		e_h123() {
			return this.form.e_h123;
		},

	},
	watch: {
		e_h121: function (val) {
			if (this.$data.DModel) {
				this.form.e_h127 = parseInt(this.form.e_h121 == "" ? 0 : this.form.e_h121) +
				parseInt(this.$data.DModel.d_h97 == "" ? 0 : this.$data.DModel.d_h97);
			}
		},
		e_h122: function (val) {
			if (this.$data.DModel) {
				this.form.e_h128 = parseInt(this.form.e_h122 == "" ? 0 : this.form.e_h122) +
				parseInt(this.$data.DModel.d_h98 == "" ? 0 : this.$data.DModel.d_h98);
			}
		},
		e_h123: function (val) {
			if (this.$data.DModel) {
				this.form.e_h129 = parseInt(this.form.e_h123 == "" ? 0 : this.form.e_h123) +
				parseInt(this.$data.DModel.d_h99 == "" ? 0 : this.$data.DModel.d_h99);
			}
		},
	},
	created: function () {
		this.init();
    },
	methods: {
		init() {
			this.$http.post('./e_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				App.unblock();
	            if (data.body.resultMap) {
					if (data.body.resultMap["EModel"]) {
						this._data.form = data.body.resultMap["EModel"];
					}
					if (data.body.resultMap["DModel"]) {
						this._data.DModel = data.body.resultMap["DModel"];
					}
				}
			}, function(res) {
				 console.log(res.status);
			});
		},
		onSubmit(evt) {
			evt.preventDefault()
			this.$http.post('./e_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				 console.log(data);
				 $("#confirmClose").click();
				 swal("データを登録しました。", "", "success");
			}, function(res) {
				 console.log(res.status);
				 swal("登録失敗", "", "error");
			});
		},
		onReset(evt) {

		},
		moveTo(url) {
			window.location = url;
		},
	},

});

vm.$data.inputForms = c_inputForms;