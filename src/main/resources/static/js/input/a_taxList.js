
var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "a",
				url: "a_taxList"
			},
		},
		inputForms: [],
		form: {
		},
		show: true,
		options:{
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
			this.$http.post('./a_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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
			this.$http.post('./a_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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

