// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
function MostrarEquipo(IdE) {
    $.ajax(
        {
            url: '/Home/MostrarEquipoAjax',
            type: 'POST',
            dataType: 'JSON',
            data: { IDequipo: IdE },
            success: function (response) {
                response.forEach(element => {
                    if(element.pocision == "Arquero"){
                        $("#Arqueros").append("<p>" + element.nombre + "</p>");
                    }
                    if (element.pocision == "Defensor") {
                        $("#Defensores").append("<p>" + element.nombre + "</p>");
                    }
                    if (element.pocision == "Mediocampista") {
                        $("#Mediocampistas").append("<p>" + element.nombre + "</p>");
                    }
                    if (element.pocision == "Delantero") {
                        $("#Delanteros").append("<p>" + element.nombre + "</p>");
                    }
                });
                
                }
        });
}