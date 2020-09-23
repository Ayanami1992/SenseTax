var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "i",
				url: "i_taxPayback"
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
		i_k197() {
			return this.form.i_k197;
		},
		i_k198() {
			return this.form.i_k198;
		},
		i_k199() {
			return this.form.i_k199;
		},
		i_k200() {
			return this.form.i_k200;
		},
		i_k201() {
			return this.form.i_k201;
		},
		i_k202() {
			return this.form.i_k202;
		},
		i_k207() {
			return this.form.i_k207;
		},
		i_k208() {
			return this.form.i_k208;
		},
		i_k209() {
			return this.form.i_k209;
		},
		i_k210() {
			return this.form.i_k210;
		},
		i_k211() {
			return this.form.i_k211;
		},
	},
	watch: {
		i_k197: function (val) {
			this.seti_k215();
		},
		i_k198: function (val) {
			this.seti_k215();
		},
		i_k199: function (val) {
			this.seti_k216();
		},
		i_k200: function (val) {
			this.seti_k217();
		},
		i_k201: function (val) {
			this.seti_k216();
		},
		i_k202: function (val) {
			this.seti_k218();
		},
		i_k207: function (val) {
			this.seti_k215();
		},
		i_k208: function (val) {
			this.seti_k215();
		},
		i_k209: function (val) {
			this.seti_k216();
		},
		i_k210: function (val) {
			this.seti_k217();
		},
		i_k211: function (val) {
			this.seti_k216();
		},
	},
	created: function () {
		this.init();
    },
	methods: {
		init() {
			this.$http.post('./i_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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
			this.$http.post('./i_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				 console.log(data);
				 $("#confirmClose").click();
				 swal("データを登録しました。", "", "success");
			}, function(res) {
				 console.log(res.status);
				 swal("登録失敗", "", "error");
			});
		},

		seti_k215() {
			// K197+K198+K207+K208
			this._data.form.i_k215 =  parseNumber(this._data.form.i_k197)
									+ parseNumber(this._data.form.i_k198)
									+ parseNumber(this._data.form.i_k207)
									+ parseNumber(this._data.form.i_k208);
		},

		seti_k216() {
			// K199+K201+K209+K211
			this._data.form.i_k216 = parseNumber(this._data.form.i_k199)
									+ parseNumber(this._data.form.i_k201)
									+ parseNumber(this._data.form.i_k209)
									+ parseNumber(this._data.form.i_k211);
		},

		seti_k217() {
			// K200+K210
			this._data.form.i_k217 = parseNumber(this._data.form.i_k200)
									+ parseNumber(this._data.form.i_k210);
		},

		seti_k218() {
			// K202
			this._data.form.i_k218 = parseNumber(this._data.form.i_k202);
		},
		onReset(evt) {

		},
		moveTo(url) {
			window.location = url;
		},
	},

});

vm.$data.inputForms = c_inputForms;