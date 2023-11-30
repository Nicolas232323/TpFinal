using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using ProyectoFinal.Models;

namespace ProyectoFinal.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public int Id_equipo { get; private set; }

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

  

   
     public IActionResult Index()
    {

        ViewBag.torneos = BD.ObtenerEquiposTablaLiga();
    


        return View();
    }
    
        public IActionResult MostrarEquipos()
    {
         ViewBag.Equipos = BD.ObtenerEquiposTablaLiga();

         return View("equipos");
    }
       public IActionResult MostrarFixture1()
    {
         ViewBag.Fixture1 = BD.ObtenerFixture1();

         return View("Fixture1");
    }

      public IActionResult MostrarFixture2()
    {
         ViewBag.Fixture2 = BD.ObtenerFixture2();

         return View("Fixture2");
    }
public IActionResult DetalleEquipo()
{
    ViewBag.jugadoresArqueros = BD._listadoArqueros;
    ViewBag.jugadoresDefensores = BD._listadoDefensores;
    ViewBag.jugadoresMediocampistas = BD._listadoMediocampistas;
    ViewBag.jugadoresDelanteros = BD._listadoDelanteros;
    return View("equipo");
}
public IActionResult AgregarComentario(Comentarios comentarioP)
{
    BD.AgregarComentario(comentarioP);
    ViewBag.Comentarios = BD.ObtenerComentarios();
    return View("Comentarios");
}
public IActionResult VerComentarios()
{
    BD.ObtenerComentarios();
    ViewBag.Comentarios = BD.ObtenerComentarios();
    return View("Comentarios");
}
    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }

}