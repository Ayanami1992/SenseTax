var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "h",
				url: "h_taxPayments"
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
		h_k173() {
			return this.form.h_k173;
		},
		h_k177() {
			return this.form.h_k177;
		},
		h_k178() {
			return this.form.h_k178;
		},
		h_k179() {
			return this.form.h_k179;
		},
		h_k180() {
			return this.form.h_k180;
		},
		h_k186() {
			return this.form.h_k186;
		},
		h_k187() {
			return this.form.h_k187;
		},
		h_k188() {
			return this.form.h_k188;
		},
		h_k189() {
			return this.form.h_k189;
		},
	},
	watch: {
		h_k173: function (val) {
			this.seth_k192();
		},

		h_k177: function (val) {
			this.seth_k191();
			this.seth_k182();
		},

		h_k178: function (val) {
			this.seth_k191();
			this.seth_k182();
		},

		h_k179: function (val) {
			this.seth_k191();
			this.seth_k182();
		},

		h_k180: function (val) {
			this.seth_k192();
			this.seth_k182();
		},

		h_k186: function (val) {
			this.seth_k191();
		},

		h_k187: function (val) {
			this.seth_k191();
		},

		h_k188: function (val) {
			this.seth_k191();
		},

		h_k189: function (val) {
			this.seth_k192();
		},
	},
	created: function () {
		this.init();
    },
	methods: {
		init() {
			this.$http.post('./h_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				App.unblock();
	            if (data.body.resultMap) {
					if (data.body.resultMap["HModel"]) {
						this._data.form = data.body.resultMap["HModel"];
					}
					if (data.body.resultMap["DModel"]) {
						this._data.DModel = data.body.resultMap["DModel"];
					}
					if (data.body.resultMap["EModel"]) {
						this._data.EModel = data.body.resultMap["EModel"];
					}
					if (data.body.resultMap["GModel"]) {
						this._data.GModel = data.body.resultMap["GModel"];
					}
				}
			}, function(res) {
				 console.log(res.status);
			});
		},
		onSubmit(evt) {
			evt.preventDefault()
			this.$http.post('./h_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				 console.log(data);
				 $("#confirmClose").click();
				 swal("データを登録しました。", "", "success");
			}, function(res) {
				 console.log(res.status);
				 swal("登録失敗", "", "error");
			});
		},

		seth_k182() {
			// $H$102-I162-SUM(K177:K179)-K180
			var sum = parseNumber(this._data.form.h_k177)
					+ parseNumber(this._data.form.h_k178)
					+ parseNumber(this._data.form.h_k179);
			this._data.form.h_k182 = parseNumber(this._data.DModel.d_h102)
					- parseNumber(this._data.GModel.g_i162)
					- parseNumber(sum)
					- parseNumber(this._data.form.h_k180);
		},

		seth_k191() {
			var sum = parseNumber(this._data.EModel.e_h127)
					+ parseNumber(this._data.EModel.e_h128)
					+ parseNumber(this._data.EModel.e_h129);
			var sum2 = parseNumber(this._data.form.h_k177)
					+ parseNumber(this._data.form.h_k178)
					+ parseNumber(this._data.form.h_k179);
			var sum3 = parseNumber(this._data.form.h_k186)
					+ parseNumber(this._data.form.h_k187)
					+ parseNumber(this._data.form.h_k188);

			this._data.form.h_k191 = sum - sum2 - sum3;
		},

		seth_k192() {
			this._data.form.h_k192 = parseNumber(this._data.DModel.d_h100)
									+ parseNumber(this._data.form.h_k173)
									- parseNumber(this._data.form.h_k180)
									- parseNumber(this._data.form.h_k189);
		},
		onReset(evt) {

		},
		moveTo(url) {
			window.location = url;
		},
	},

});

vm.$data.inputForms = c_inputForms;