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
public IActionResult DetalleEquipo(int equipoId) 
{
    ViewBag.nombreEquipo = BD.ObtenerEquiposPorId(equipoId);
    ViewBag.jugadoresPorPosicion = BD.ObtenerJugadores(equipoId);
    ViewBag.jugadoresArqueros = BD.ObtenerJugadoresArqueros(equipoId);
    ViewBag.jugadoresDefensores = BD.ObtenerJugadoresDefensores(equipoId);
    ViewBag.jugadoresMediocampistas = BD.ObtenerJugadoresMediocampistas(equipoId);
    ViewBag.jugadoresDelanteros = BD.ObtenerJugadoresDelanteros(equipoId);

    return View("equipo");
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