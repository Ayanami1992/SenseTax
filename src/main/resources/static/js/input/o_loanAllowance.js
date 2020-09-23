var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "o",
				url: "o_loanAllowance"
			},
		},
		inputForms: [],
		form: {
		},
		show: true,
		options:{
		    A63_A67: [
		          { value: "卸・小売業", text: '卸・小売業' },
		          { value: "製造業", text: '製造業' },
		          { value: "金融・保険業", text: '金融・保険業' },
		          { value: "割賦小売業等", text: '割賦小売業等' },
		          { value: "その他事業", text: 'その他事業' },
		    ],
		},

	},
	computed: {
		o_p334() {
			return this.form.o_p334;
		},
		o_p335() {
			return this.form.o_p335;
		},
		o_p336() {
			return this.form.o_p336;
		},
		o_p337() {
			return this.form.o_p337;
		},
		o_p338() {
			return this.form.o_p338;
		},
		o_p339() {
			return this.form.o_p339;
		},
		o_p340() {
			return this.form.o_p340;
		},
	},
	watch: {
		o_p334: function (val) {
			this.seto_i353();
		},
		o_p335: function (val) {
			this.seto_i353();
		},
		o_p336: function (val) {
			this.seto_i353();
		},
		o_p337: function (val) {
			this.seto_i353();
		},
		o_p338: function (val) {
			this.seto_i353();
		},
		o_p339: function (val) {
			this.seto_i353();
		},
		o_p340: function (val) {
			this.seto_i353();
		},
	},
	created: function () {
		this.init();
    },
	methods: {
		init() {
			this.$http.post('./o_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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
			this.$http.post('./o_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				 console.log(data);
				 $("#confirmClose").click();
				 swal("データを登録しました。", "", "success");
			}, function(res) {
				 console.log(res.status);
				 swal("登録失敗", "", "error");
			});
		},
		seto_i353() {
			this._data.form.o_i353 = parseInt(this._data.form.o_p334 ? this._data.form.o_p334 : 0)
									+ parseInt(this._data.form.o_p335 ? this._data.form.o_p335 : 0)
									+ parseInt(this._data.form.o_p336 ? this._data.form.o_p336 : 0)
									+ parseInt(this._data.form.o_p337 ? this._data.form.o_p337 : 0)
									+ parseInt(this._data.form.o_p338 ? this._data.form.o_p338 : 0)
									+ parseInt(this._data.form.o_p339 ? this._data.form.o_p339 : 0)
									+ parseInt(this._data.form.o_p340 ? this._data.form.o_p340 : 0);
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