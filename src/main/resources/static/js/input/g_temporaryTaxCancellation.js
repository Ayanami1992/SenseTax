var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "g",
				url: "g_temporaryTaxCancellation"
			},
		},
		inputForms: [],
		form: {
		},
		show: true,
		options:{
			localTaxRate: [{value:"", text: ""}],
		},
		backForm: {
		},

	},
	computed: {
		g_i162() {
			return this.form.g_i162;
		},
		g_i165() {
			return this.form.g_i165;
		},
	},
	watch: {
		g_i162: function (val) {
			this.form.g_i167 = parseInt(this.form.e_h110) -
				parseInt(this.form.g_i162 == null ? 0 : this.form.g_i162) -
				parseInt(this.form.g_i165 == null ? 0 : this.form.g_i165);
		},
		g_i165: function (val) {
			this.form.g_i167 = parseInt(this.form.e_h110) -
				parseInt(this.form.g_i162 == null ? 0 : this.form.g_i162) -
				parseInt(this.form.g_i165 == null ? 0 : this.form.g_i165);
		},
	},
	created: function () {
		this.init();
    },
	methods: {
		init() {
			this.$http.post('./g_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				App.unblock();
	            if (data.body.resultObject) {
					this._data.form = data.body.resultObject;
                    this._data.backForm = JSON.parse(JSON.stringify(this._data.form));
				}
			}, function(res) {
				 console.log(res.status);
			});
		},
		onSubmit(evt) {
			evt.preventDefault()
			this.$http.post('./g_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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
		cancel() {
            showCancelSwal(this);
		},
		moveTo(url) {
			window.location = url;
		},
	},

});

vm.$data.inputForms = c_inputForms;