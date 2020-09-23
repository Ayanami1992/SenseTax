var vm = new Vue({
	el: '#app',
	data: {
		page: {
			pre: {
				name: "[B]　会社基本情報",
				url: "a_taxList",
			},
			cur: {
				id: "d",
				url: "d_table52"
			},

//			pre: null,
			next: {
				name: "[D]　別表五(二)期首",
				url: "d_table5_2_first_term"
			}
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
	},
	watch: {
	},
	created: function () {
		this.init();
    },
	methods: {
		init() {
//			this.$http.post('./d_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
//				if (data.body.resultObject) {
//					this._data.form = data.body.resultObject;
//				}
//			}, function(res) {
//				 console.log(res.status);
//			});
		},
		onSubmit(evt) {
			evt.preventDefault()
//			this.$http.post('./d_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
//				 console.log(data);
//			}, function(res) {
//				 console.log(res.status);
//			});
		},
		onReset(evt) {

		},
		moveTo(url) {
			window.location = url;
		},
	},

});

vm.$data.pdfUrl = pdfUrl;