var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "input",
				id: "c",
				url: "c_establishmentInfo"
			},
		},
		inputForms: [],
		form: {
			c_01: '',
			c_02: '',
			c_03: '',
			c_04: '',
			c_05: '',
			c_06: '12',
			c_07: '',
			c_11: '12',
			c_c67: '',
		},
		show: true,
		options:{
			localTaxRate: [{value:"", text: ""}],
		},

	},
	computed: {
		c_01() {
		  return this.form.c_01;
		},
		c_05() {
		  return this.form.c_05;
		}

	},
	watch: {
		c_01: function (val) {
			this.on01Change(val);
		},
		c_05: function (val) {
			this.on05Change(val);
		},
	},
	created: function () {
        this.getLocalTaxRate(this.init);
    },
	methods: {
		init() {
			this.$http.post('./c_init?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				App.unblock();
	            if (data.body.resultMap) {
					if (data.body.resultMap["CModel"]) {
						this._data.form = data.body.resultMap["CModel"];
					}
					if (data.body.resultMap["BModel"]) {
						this._data.BModel = data.body.resultMap["BModel"];
					}

				}
			}, function(res) {
				 console.log(res.status);
			});
		},
		onSubmit(evt) {
			evt.preventDefault()
			this.$http.post('./c_insert?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
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
        getLocalTaxRate: function (init) {
			this.$http.get('/tax/options/getLocalTaxRate').then(function(data) {
				this.$data.options.localTaxRate = data.body.resultList;
				init();
			}, function(res) {
				console.log(res.status);
			});
        },
        on01Change(val) {
        	let model = {};
        	for (let i=0; i<this.$data.options.localTaxRate.length; i++) {
        		if (this.$data.options.localTaxRate[i].city_area == val) {
        			model = this.$data.options.localTaxRate[i];
        		}
        	}

			let form = this.$data.form;
			let BModel = this.$data.BModel;
			form.c_02 = model.prefecture;
			form.c_03 = model.city;

			// C67
			// IF(c_03="政令指定都市以外","分類",IF(c_02="東京都","東京23区名","政令指定都市名"))
			if (form.c_03 == "政令指定都市以外") {
				form.c_c67 = "分類";
			} else if (form.c_02 == "東京都") {
				form.c_c67 = "東京23区名";
			} else {
				form.c_c67 = "政令指定都市名";
			}

			// G71
			// VLOOKUP($G$65,地方税税率・均等割!A3:L247,IF(F52>10000000,12,11),0)
			if (BModel.b_21 > 10000000) {
				form.c_g71 = model.prefecture_equalization1000_;
			} else {
				form.c_g71 = model.prefecture_equalization_1000;
			}
			// G72
			// VLOOKUP($G$65,地方税税率・均等割!A3:N247,IF(F52>10000000,14,13),0)
			if (BModel.b_21 > 10000000) {
				form.c_g72 = model.forest_environment_tax_1001;
			} else {
				form.c_g72 = model.forest_environment_tax1000_;
			}
			// c_07
			// G71+G72
			form.c_07 = parseInt(form.c_g71) + parseInt(form.c_g72);

			// c_74
			// IF(C_08="市均等割円↓入力↓","","(市　均等割　円)")
			form.c_c74 = form.c_03 == "政令指定都市以外" ? "" :"(市　均等割　円)";

			// G74
			// IF(C_03="政令指定都市以外","",VLOOKUP($G$65,地方税税率・均等割!$A$3:$R$247,7+IF(F52>10000000, 2,0)+IF(C_05>50,1,0),0))
			if (form.c_03 == "政令指定都市以外") {
				form.c_g74 = "";
			} else if (BModel.b_21 > 10000000 && form.c_05 > 50){
				form.c_g74 = model.city_equalization6;
			} else if (BModel.b_21 > 10000000) {
				form.c_g74 = model.city_equalization7;
			} else if (form.c_05 > 50) {
				form.c_g74 = model.city_equalization8;
			} else {
				form.c_g74 = model.city_equalization9;
			}

			// C75
			// IF(C_08="市均等割円↓入力↓","","(市　森林環境税　円)")
			form.c_c75 = form.c_03 == "政令指定都市以外" ? "" :"(市　森林環境税　円)";

			// G75
			// IF(C_03="政令指定都市以外","",VLOOKUP($G$65,地方税税率・均等割!$A$3:$R$247,15+IF(F52>10000000, 2,0)+IF(C_05>50,1,0),0))
			if (form.c_03 == "政令指定都市以外") {
				form.c_g75 = "";
			} else if (BModel.b_21 > 10000000 && form.c_05 > 50){
				form.c_g75 = model.city_forest_d;
			} else if (BModel.b_21 > 10000000) {
				form.c_g75 = model.city_forest_c;
			} else if (form.c_05 > 50) {
				form.c_g75 = model.city_forest_b;
			} else {
				form.c_g75 = model.city_forest_a;
			}

			// c_08
			// IF(C_03="政令指定都市以外",VLOOKUP($G$65,地方税税率・均等割!A3:L247,7+IF(F52>10000000, 2,0)+IF(G69>50,1,0),0),G74+G75)
			if (form.c_03 == "政令指定都市以外") {
				form.c_08_enabled = false;
			} else {
				form.c_08_enabled = true;
				form.c_08 = parseInt(form.c_g74) + parseInt(form.c_g75);
			}

			// C76
			// IF(C_08="市均等割円↓入力↓","","市　均等割　円")
			form.c_c76 = "市　均等割　円";

			// C_12
			form.c_12 = BModel.b_16 < "2014-10-01" ? '2.7' : '3.4';
			form.c_13 = BModel.b_16 < "2014-10-01" ? '4' : '5.1';
			form.c_14 = BModel.b_16 < "2014-10-01" ? '5.3' : '6.7';
			form.c_15 = BModel.b_16 < "2014-10-01" ? '5' : '3.2';
			form.c_g84 = BModel.b_16 < "2014-10-01" ? '81' : '43.2';

			// C_16
			// VLOOKUP($G$65,地方税税率・均等割!A3:L247,IF(b_16<DATEVALUE("H26.10.1"),5,6),FALSE)
			form.c_c85 = "市　法人税割　%";
			if (model.city_equalization9 == "市均等割円↓入力↓"){
				form.c_c85_enabled = true;
				form.c_16 = 0.0;
			} else {
				form.c_c85_enabled = false;
				form.c_16 = model.city_tax_rate2;
			}
			form.c_32 = BModel.b_71;
			form.c_33 = BModel.b_71;
        },
        on05Change(val) {

			let form = this.$data.form;
        	let model = {};
        	for (let i=0; i<this.$data.options.localTaxRate.length; i++) {
        		if (this.$data.options.localTaxRate[i].city_area == form.c_01) {
        			model = this.$data.options.localTaxRate[i];
        		}
        	}
			let BModel = this.$data.BModel;

			// G74
			// IF(C_03="政令指定都市以外","",VLOOKUP($G$65,地方税税率・均等割!$A$3:$R$247,7+IF(F52>10000000, 2,0)+IF(C_05>50,1,0),0))
			if (form.c_03 == "政令指定都市以外") {
				form.c_g74 = "";
			} else if (BModel.b_21 > 10000000 && form.c_05 > 50){
				form.c_g74 = model.city_equalization6;
			} else if (BModel.b_21 > 10000000) {
				form.c_g74 = model.city_equalization7;
			} else if (form.c_05 > 50) {
				form.c_g74 = model.city_equalization8;
			} else {
				form.c_g74 = model.city_equalization9;
			}

			// G75
			// IF(C_03="政令指定都市以外","",VLOOKUP($G$65,地方税税率・均等割!$A$3:$R$247,15+IF(F52>10000000, 2,0)+IF(C_05>50,1,0),0))
			if (form.c_03 == "政令指定都市以外") {
				form.c_g75 = "";
			} else if (BModel.b_21 > 10000000 && form.c_05 > 50){
				form.c_g75 = model.city_forest_d;
			} else if (BModel.b_21 > 10000000) {
				form.c_g75 = model.city_forest_c;
			} else if (form.c_05 > 50) {
				form.c_g75 = model.city_forest_b;
			} else {
				form.c_g75 = model.city_forest_a;
			}

			// c_08
			// IF(C_03="政令指定都市以外",VLOOKUP($G$65,地方税税率・均等割!A3:L247,7+IF(F52>10000000, 2,0)+IF(G69>50,1,0),0),G74+G75)
			if (form.c_03 == "政令指定都市以外") {
				form.c_08_enabled = false;
			} else {
				form.c_08_enabled = true;
				form.c_08 = parseInt(form.c_g74) + parseInt(form.c_g75);
			}

        },
		copy() {
			this.$http.post('./c_copy?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				 console.log(data);
				 if (data.body.errors && data.body.errors.length > 0) {
					 swal(data.body.errors[0], "", "error");
				 } else {
					 this.init();
					 swal("本月のデータをコピーしました。", "", "success");
				 }
			}, function(res) {
				 console.log(res.status);
				 swal("コピー失敗", "", "error");
			});
		},
	},

});

vm.$data.inputForms = c_inputForms;