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
         ViewBag.Equipos = BD.ObtenerEquiposPorId(Id_equipo);

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
public IActionResult DetalleEquipo(int Id_equipo)
{
    ViewBag.jugadoresPorPosicion = BD.ObtenerJugadores(Id_equipo);

    var jugadoresPorPosicion = ViewBag.jugadoresPorPosicion as List<jugador>;

    ViewBag.Arqueros = jugadoresPorPosicion.Where(j => j.pocision == "Arquero");
    ViewBag.Defensores = jugadoresPorPosicion.Where(j => j.pocision == "Defensor");
    ViewBag.Mediocampistas = jugadoresPorPosicion.Where(j => j.pocision == "Mediocampista");
    ViewBag.Delanteros = jugadoresPorPosicion.Where(j => j.pocision == "Delantero");

    return View("equipo");
}





}
/*
    public IActionResult AgarrarImagenesLocal()
    {

        ViewBag.ImagenLocal = BD.ObtenerImagenesPorNombreLocal();
    
        return View();
    }

    public IActionResult AgarrarImagenesVisitante()
    {

        ViewBag.ImagenVisitante = BD.ObtenerImagenesPorNombreVisitante();
    
        return View();
    }


    public IActionResult AgarrarImagenesLocal2()
    {

        ViewBag.ImagenLocal2 = BD.ObtenerImagenesPorNombreLocal2();
    
        return View();
    }

    public IActionResult AgarrarImagenesVisitante2()
    {

        ViewBag.ImagenVisitante2 = BD.ObtenerImagenesPorNombreVisitante2();
    
        return View();
    }


    
    //    public IActionResult TablasCopa()
 //   {
      
     //  ViewBag.equipos = BD.Equipos(); 
    //    ViewBag.ultimosCampeones = BD.Campeonatos();
      //  return View(Tablas);
   // }

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
*/