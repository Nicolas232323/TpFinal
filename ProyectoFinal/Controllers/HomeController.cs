using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using ProyectoFinal.Models;

namespace ProyectoFinal.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {


        return View();
    }

<<<<<<< HEAD
     ViewBag.Ligas = BD.ListarLigas();
     ViewBag.Ligas = BD.ListarLigas2();
        return View("Ligas");
    }
        public IActionResult MostrarEquipos()
    {
        ViewBag.Equipos = BD.ListarEquipos();
=======
>>>>>>> 5895a9359b1c768ee39f6a282a692b922fe05f50

     public IActionResult Index()
    {
<<<<<<< HEAD
    ViewBag.EquipoUni = BD.ListarEquipo(IdEquipo);
=======
        ViewBag.torneos = BD.Torneos.ToList();
        ViewBag.goleadores = BD.Goleadores.ToList();
        ViewBag.asistidores = BD.Asistidores.ToList();
>>>>>>> 5895a9359b1c768ee39f6a282a692b922fe05f50

        return View();
    }
    
        public IActionResult MostrarEquipos()
    {
         ViewBag.Equipos = BD.ListarEquipos();

         return View("Equipos");
    }
  public IActionResult Detalle(int id)
    {
        ViewBag.equipo = BD.Equipo(id);
        

        ViewBag.arqueros = BD.Jugador();
        ViewBag.defensores = BD.Jugador();
        ViewBag.mediocampistas = BD.Jugador();
        ViewBag.delanteros = BD.Jugador();

     

        return View("Equipo");
    }
    
        public IActionResult TablasCopa()
    {
      
        ViewBag.equipos = BD.Equipos(); 
        ViewBag.ultimosCampeones = BD.Campeonatos();
        return View(Tablas);
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
