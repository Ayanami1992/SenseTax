var vm = new Vue({
	el: '#app',
	data: {
		page: {
			cur: {
				menu_id: "login",
				id: "login",
			},
		},
		form:{}
	},
	methods: {
		onSubmit(evt) {
			evt.preventDefault()
			this.$http.post('./registerCheck?_csrf='+$("#_csrf").val(), this.form).then(function(data) {
				 $("#confirmClose").click();
				 if (data.body.errors == null) {
					 swal("Please verify your email.", "", "success");
				 } else {
					 swal(data.body.errors[0], "", "error");
				 }
			}, function(res) {
				 console.log(res.status);
				 swal(data.errors[0], "", "error");
			});
		},
	}
})
