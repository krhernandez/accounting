$(document).ready(function() {
    
    $("#lstALV1").submit(function() {
        
        $.ajax({
            url: "UpdateListServlet", //pagina de destino
            type: "POST", //metodo de envio
            data: $("#lstALV1").serialize(), //donde estan los datos
            beforeSend: function() {

            },
            success: function(res) {
                $("#divLstLV2").show();
                $("#divLstLV2").append(res); //mensaje desde verificar.php
            }
        });    
    });
    
    $("#lstALV2").submit(function() {
        
        $.ajax({
            url: "UpdateListLV2Servlet", //pagina de destino
            type: "POST", //metodo de envio
            data: $("#lstALV2").serialize(), //donde estan los datos
            beforeSend: function() {
                
            },
            success: function(res) {
                $("#divLstLV3").show();
                $("#divLstLV3").append(res); //mensaje desde verificar.php
            }
        });    
    });

});