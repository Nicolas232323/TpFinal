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
        public IActionResult MostrarLigas()
    {

     ViewBag.Ligas = BD.ListarLigas();
     ViewBag.Ligas = BD.ListarLigas2();
        return View("Ligas");
    }
        public IActionResult MostrarEquipos()
    {
        ViewBag.Equipos = BD.ListarEquipos();

        return View("Equipos");
    }
        public IActionResult MostrarEquipo(int IdEquipo)
    {
    ViewBag.EquipoUni = BD.ListarEquipo(IdEquipo);

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
