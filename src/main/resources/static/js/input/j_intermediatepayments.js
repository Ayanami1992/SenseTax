var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "j",
				url: "j_intermediatepayments"
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
		j_g224() {
			return this.form.j_g224;
		},
		j_g225() {
			return this.form.j_g225;
		},
		j_g226() {
			return this.form.j_g226;
		},
		j_g227() {
			return this.form.j_g227;
		},
		j_g228() {
			return this.form.j_g228;
		},
		j_g229() {
			return this.form.j_g229;
		},
		j_g230() {
			return this.form.j_g230;
		},
		j_g231() {
			return this.form.j_g231;
		},
	},
	watch: {
		j_g224: function (val) {
			this._data.form.j_m224 = val;
		},
		j_g225: function (val) {
			this._data.form.j_m225 = val;
		},
		j_g226: function (val) {
			this._data.form.j_m226 = val;
		},
		j_g227: function (val) {
			this._data.form.j_m227 = val;
		},
		j_g228: function (val) {
			this._data.form.j_m228 = val;
		},
		j_g229: function (val) {
			this._data.form.j_m229 = val;
		},
		j_g230: function (val) {
			this._data.form.j_m230 = val;
		},
		j_g231: function (val) {
			this._data.form.j_m231 = val;
		},
	},
	created: function () {
		this.init();
    },
	methods: {
		init() {
			this.$http.post('./j_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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
			this.$http.post('./j_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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