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
    public IActionResult RegistroUsuario()
    {
        ViewBag.Usuario = BD.AgregarUsuario(Usuario usuario);
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
public IActionResult DetalleEquipo(int Id_equipo)
{
    ViewBag.nombreEquipo = BD.ObtenerEquiposPorId(Id_equipo);
    ViewBag.jugadoresPorPosicion = BD.ObtenerJugadores(Id_equipo);
    ViewBag.jugadoresArqueros = BD.ObtenerJugadoresArqueros(Id_equipo);
    ViewBag.jugadoresDefensores = BD.ObtenerJugadoresDefensores(Id_equipo);
    ViewBag.jugadoresMediocampistas = BD.ObtenerJugadoresMediocampistas(Id_equipo);
    ViewBag.jugadoresDelanteros = BD.ObtenerJugadoresDelanteros(Id_equipo);

  

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