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
                $("#Arqueros").empty();
                $("#Arqueros").append('<h2>Arqueros</h2>');
                $("#Defensores").empty();
                $("#Defensores").append('<h2>Defensores</h2>');
                $("#Mediocampistas").empty();
                $("#Mediocampistas").append('<h2>Mediocampistas</h2>');
                $("#Delanteros").empty();
                $("#Delanteros").append('<h2>Delanteros</h2>');
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
function MostrarTablaGrupoA() {
    $.ajax(
        {
            url: '/Home/ObtenerTablaGrupoAController',
            type: 'POST',
            dataType: 'JSON',
            data: {},
            success: function (response) {
                response.forEach(element => {
                    if(element.pocision == "NombreEquipo"){
                        $("#NombreEquipo").append("<p>" + response.NombreEquipo + "</p>");
                    }
                    if (element.pocision == "puntos") {
                        $("#Puntos").append("<p>" + response.puntos + "</p>");
                    
                }});
                
                }
        });
}