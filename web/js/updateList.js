$(document).ready(function () {

    $("#lstA").submit(function () {
        var handler = $("#lstAccounting").val();

        if (handler >= 1100) {
            $.ajax({
                url: "noOptions.jsp", //pagina de destino
                type: "POST", //metodo de envio
                data: $("#lstA").serialize(), //donde estan los datos
                beforeSend: function () {

                },
                success: function (res) {
                    $("#divLst").html(res); //mensaje desde verificar.php
                }
            });
        } else {
            $.ajax({
                url: "UpdateListServlet",
                type: "POST",
                data: $("#lstA").serialize(),
                beforeSend: function () {

                },
                success: function (res) {
                    $("#lstAccounting").html(res);
                }
            });
        }
    });

});