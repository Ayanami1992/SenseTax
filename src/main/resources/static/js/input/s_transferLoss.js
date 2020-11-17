var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "s",
				url: "s_transferLoss"
			},
		},
		inputForms: [],
		form: {
		},
		show: true,
		options:{
		},
		backForm: {
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
			this.$http.post('./s_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				App.unblock();
	            if (data.body.resultMap) {
					this._data.form = data.body.resultMap["SModel"];
                    this._data.backForm = JSON.parse(JSON.stringify(this._data.form));

					if (data.body.resultMap["EModel"]) {
						this._data.EModel = data.body.resultMap["EModel"];
						this._data.form.s_c414 = this._data.EModel.e_01 ? this._data.EModel.e_01 + "積立金" : "";
						this._data.form.s_c415 = this._data.EModel.e_c114 ? this._data.EModel.e_c114 : "";
						this._data.form.s_c416 = this._data.EModel.e_c115 ? this._data.EModel.e_c115 : "";
						this._data.form.s_c417 = this._data.EModel.e_c116 ? this._data.EModel.e_c116 : "";
						this._data.form.s_c418 = this._data.EModel.e_c117 ? this._data.EModel.e_c117 : "";
						this._data.form.s_c419 = this._data.EModel.e_c118 ? this._data.EModel.e_c118 : "";
						this._data.form.s_c420 = this._data.EModel.e_c119 ? this._data.EModel.e_c119 : "";
					}

				}
			}, function(res) {
				 console.log(res.status);
			});
		},
		onSubmit(evt) {
			evt.preventDefault()
			this.$http.post('./s_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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
		cancel() {
            showCancelSwal(this);
		},
		moveTo(url) {
			window.location = url;
		},
	},

});

vm.$data.inputForms = c_inputForms;