
var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "b",
				url: "b_companyInfo"
			},
		},
		inputForms: [],
		form: {
			b_14: "青色申告",
			b_15: "要",
			b_31: "無",
			b_32: "無",
			b_34: "無",
			b_37: null,
			b_67: "第30条の書面提出有",
			b_68: "普通法人",
			b_69: null,
			b_70: null,
			q46: "しない",
		},
		show: true,
		options:{
		    A7_A8: [
		          { value: "青色申告", text: '青色申告' },
		          { value: "白色申告", text: '白色申告' },
		    ],
		    A11_A12: [
		          { value: "非営利法人", text: '非営利法人' },
		          { value: "普通法人", text: '普通法人' },
		    ],
		    A15_A16: [
		          { value: "否", text: '否' },
		          { value: "要", text: '要' },
		    ],
			A19_A22: [
		          { value: "第30条の書面提出有", text: '第30条の書面提出有' },
		          { value: "第33条の2の書面提出有", text: '第33条の2の書面提出有' },
		          { value: "両方有り", text: '両方有り' },
		          { value: "なし", text: 'なし' },
		    ],
		    A24_A25: [
		          { value: "有", text: '有' },
		          { value: "無", text: '無' },
		    ],
		    A28_A30: [
		          { value: "する", text: 'する' },
		          { value: "しない", text: 'しない' },
		          { value: "(なし)", text: '(なし)' },
		    ],
		    A32_A36: [
		          { value: "銀行", text: '銀行' },
		          { value: "金庫", text: '金庫' },
		          { value: "組合", text: '組合' },
		          { value: "漁協", text: '漁協' },
		          { value: "農協", text: '農協' },
		    ],
		    A39_A43: [
		          { value: "本店", text: '本店' },
		          { value: "支店", text: '支店' },
		          { value: "出張所", text: '出張所' },
		          { value: "本所", text: '本所' },
		          { value: "支所", text: '支所' },
		    ],
		    A46_A47: [
		          { value: "当座", text: '当座' },
		          { value: "普通", text: '普通' },
		    ],
		},
		backForm: {
		},

	},
	computed: {
		b_16() {
		  return this.form.b_16;
		},

	},
	watch: {
		b_16: function (val) {
			var date = this.form.b_16.split('-');
			if (date.length > 1) {
				this.$http.post('./getNextYear?_csrf='+$("#_csrf").val(), this.form.b_16).then(function(data) {
					if (data.body.resultObject) {
						this.form.b_17 = data.body.resultObject;
					}
				}, function(res) {
					 console.log(res.status);
				});
			}
		},
	},
	created: function () {
        this.init();
    },
	methods: {
		init() {
			this.$http.post('./b_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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
			evt.preventDefault();
			this.$http.post('./b_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				 console.log(data);
				 $("#confirmClose").click();
				 swal("データを登録しました。", "", "success");
			}, function(res) {
				 console.log(res.status);
				 swal("登録失敗", "", "error");
			});
		},
		copy() {
			this.$http.post('./b_copy?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				 console.log(data);
				 if (data.body.errors && data.body.errors.length > 0) {
					 swal(data.body.errors[0], "", "error");
				 } else {
					 this.init();
					 swal("前年度の情報をコピーしました", "", "success");
				 }
			}, function(res) {
				 console.log(res.status);
				 swal("コピー失敗", "", "error");
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

