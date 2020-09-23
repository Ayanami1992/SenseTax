
var c_inputForms = [
        	  {
        		  id:"a",
        		  url:"/tax/input/a_taxList",
        		  text:"[A]　当期利益(損失)額",
        		  edited: true,
        		  required: true
        	  },
        	  {
        		  id:"b",
        		  url:"/tax/input/b_companyInfo",
        		  text:"[B]　会社基本情報",
        		  edited: true,
        		  required: true
        	  },
        	  {
        		  id:"c",
        		  url:"/tax/input/c_establishmentInfo",
        		  text:"[C]　事業所情報・税率",
        		  edited: true,
        		  required: true
        	  },
        	  {
        		  id:"d",
        		  url:"/tax/input/d_table52",
        		  text:"[D]　別表五(二)期首",
        		  edited: true,
        		  required: false
        	  },
        	  {
        		  id:"e",
        		  url:"/tax/input/e_table51",
        		  text:"[E]　別表五(一)期首",
        		  edited: true,
        		  required: false
        	  },
        	  {
        		  id:"f",
        		  url:"/tax/input/f_carryOverLoss",
        		  text:"[F]　繰越欠損金",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"g",
        		  url:"/tax/input/g_temporaryTaxCancellation",
        		  text:"[G]　仮払税金消却",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"h",
        		  url:"/tax/input/h_taxPayments",
        		  text:"[H]　法人税等納付",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"i",
        		  url:"/tax/input/i_taxPayback",
        		  text:"[I]　 法人税等還付",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"j",
        		  url:"/tax/input/j_intermediatepayments",
        		  text:"[J]　中間納付",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"k",
        		  url:"/tax/input/k_taxCourses",
        		  text:"[K]　租税公課",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"l",
        		  url:"/tax/input/l_interestAndDividends",
        		  text:"[L]　利子・配当金",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"m",
        		  url:"/tax/input/m_expenses",
        		  text:"[M]　交際費",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"n",
        		  url:"/tax/input/n_donation",
        		  text:"[N]　寄付金",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"o",
        		  url:"/tax/input/o_loanAllowance",
        		  text:"[O]　貸倒引当金",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"p",
        		  url:"/tax/input/p_dividendsReceivable",
        		  text:"[P]　受取配当金",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"q",
        		  url:"/tax/input/q_excessDepreciation",
        		  text:"[Q]　減価償却超過額",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"r",
        		  url:"/tax/input/r_unpaidCorporationTax",
        		  text:"[R]　未払法人税計上",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"s",
        		  url:"/tax/input/s_transferLoss",
        		  text:"[S]　繰越損益金・配当・五(一)修正",
        		  edited: false,
        		  required: false
        	  },
        	  {
        		  id:"t",
        		  url:"/tax/input/t_companyIdentification",
        		  text:"[T]　同族会社判定",
        		  edited: false,
        		  required: true
        	  },
        	  {
        		  id:"u",
        		  url:"/tax/input/u_localTaxCommon",
        		  text:"[U]　地方税共通",
        		  edited: false,
        		  required: false
        	  },

          ];




var parseNumber = function (number) {
	if (number == null || number == "") {
		return 0;
	} else if (typeof number != "number") {
		return 0;
	} else {
		return number;
	}
};