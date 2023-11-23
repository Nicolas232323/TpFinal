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
  //public IActionResult Detalle(int id)
    //{
      //  ViewBag.equipo = BD.Equipo(id);
        

        //ViewBag.arqueros = jugador.Jugador();
        //ViewBag.defensores = BD.Jugador();
        //ViewBag.mediocampistas = BD.Jugador();
        //ViewBag.delanteros = BD.Jugador();

     

    //    return View("Equipo");
    //}
    
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
