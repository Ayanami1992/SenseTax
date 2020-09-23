
var baseUrl = "/tax/outputpdf/"
var pdfUrl = [
        	  {
        		  id:"a",
        		  url:"01",
        		  text:"別表一(一) 普通法人等の申告書",
        		  edited: true
        	  },
        	  {
        		  id:"b",
        		  url:"0101",
        		  text:"別表一(一)次葉",
        		  edited: true
        	  },
        	  {
        		  id:"c",
        		  url:"02",
        		  text:"別表二 同族会社等の判定に関する明細書",
        		  edited: true
        	  },
        	  {
        		  id:"d",
        		  url:"03",
        		  text:"別表三(一) 特定同族会社の留保金額に対する税額の計算に関する明細書",
        		  edited: true
        	  },
        	  {
        		  id:"e",
        		  url:"03tsuki",
        		  text:"別表三(一)付表 特定同族会社の留保金額に対する税額の計算に関する明細書",
        		  edited: true
        	  },
        	  {
        		  id:"f",
        		  url:"04",
        		  text:"別表四 所得の金額の計算に関する明細書(簡易様式)",
        		  edited: false
        	  },
        	  {
        		  id:"g",
        		  url:"0501",
        		  text:"別表五(一) 利益積立金額及び資本金等の額の計算に関する明細書",
        		  edited: false
        	  },
        	  {
        		  id:"h",
        		  url:"0502",
        		  text:"別表五(二) 租税公課の納付状況等に関する明細書",
        		  edited: false
        	  },
        	  {
        		  id:"i",
        		  url:"06",
        		  text:"別表六（一） 所得税額の控除に関する明細書",
        		  edited: false
        	  },
        	  {
        		  id:"j",
        		  url:"07",
        		  text:"別表七(一) 欠損金又は災害損失金の損金算入に関する明細書",
        		  edited: false
        	  },
        	  {
        		  id:"k",
        		  url:"08",
        		  text:"別表八(一) 受取配当等の益金不算入に関する明細書",
        		  edited: false
        	  },
        	  {
        		  id:"l",
        		  url:"11",
        		  text:"別表十一(一) 個別評価金銭債権に係る貸倒引当金の損金算入に関する明細書",
        		  edited: false
        	  },
        	  {
        		  id:"m",
        		  url:"1101",
        		  text:"別表十一（一の二） 一括評価金銭債権に係る貸倒引当金の損金算入に関する明細書",
        		  edited: false
        	  },
        	  {
        		  id:"n",
        		  url:"1402",
        		  text:"別表十四(二) 寄附金の損金算入に関する明細書",
        		  edited: false
        	  },
        	  {
        		  id:"o",
        		  url:"15",
        		  text:"別表十五 交際費等の損金算入に関する明細書",
        		  edited: false
        	  }
          ];

var localPdfUrl = [
			  {
				  id:"a",
				  url:"6a",
				  text:"第6号様式【東京都以外】",
				  edited: true
			  },
        	  {
        		  id:"b",
        		  url:"6a_d",
        		  text:"第6号様式【東京都】",
        		  edited: true
        	  },
        	  {
        		  id:"c",
        		  url:"21_a_d",
        		  text:"第6号様式 別表四の三 【東京都】 均等割額の計算に関する明細書",
        		  edited: true
        	  },
        	  {
        		  id:"d",
        		  url:"r1_no6_yosiki_beppyo9",
        		  text:"第6号様式 別表九 欠損金等の控除明細書",
        		  edited: true
        	  },
        	  {
        		  id:"e",
        		  url:"20_d",
        		  text:"第20号様式",
        		  edited: true
        	  }
          ];

var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "pdf",
				id: "pdf",
			},
		},
		inputForms: [],
		form: {
		},
		years: [],
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
	        $('.form-check-input-styled-success').uniform({
	            wrapperClass: 'border-success-600 text-success-800'
	        });
		},
		onSelect(year) {
//			this.form.year = year;
//			this.$http.post('./setYear?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
//				window.location.href="input/a_taxList";
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

if (typeof(c_inputForms) != undefined) {
	vm.$data.inputForms = c_inputForms;
}

vm.$data.pdfUrl = pdfUrl;