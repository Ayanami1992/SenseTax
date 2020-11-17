
var showCancelSwal = function (vm) {
	swal("変更を戻りますか？", {
          buttons: {
            ok: {
              text: "はい",
              value: "OK",
            },
            no: {
              text: "いええ",
              value: "NO",
            }
          },
        })
        .then((value) => {
          switch (value) {
            case "OK":
              vm._data.form = JSON.parse(JSON.stringify(vm._data.backForm));
              swal("戻りました", "", "success");
              break;
            case "NO":
              break;
          }
        });
};