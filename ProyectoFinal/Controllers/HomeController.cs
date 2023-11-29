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
        return View();
    }
     public IActionResult TablaLigaAnual()
    {

        ViewBag.torneos = BD.ObtenerEquiposTablaLiga();
    


        return View("TablaLigaAnual");
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
[HttpPost] public IActionResult Login(Usuario usuarioP)
    {
        Usuario nuevo = BD.loginUsuario(usuarioP);
        if(nuevo == null)
        {
            ViewBag.error = "No existe el usuario";
            return View("FormLogin");
        }
        return View("Bienvenida");
    }

    public IActionResult LoginForm()
    {
        return View("FormLogin");
    }

    [HttpPost] public IActionResult Registrar(Usuario usuarioP)
    {
        BD.agregarUsuario(usuarioP);
        return View("FormLogin");
    }

    public IActionResult registrarForm()
    {
        return View("FormRegistrar");
    }

    [HttpPost] public IActionResult olvideMiContra(Usuario usuarioP)
    {
        string str = BD.olvideMiContraseña(usuarioP);
        ViewBag.mail = usuarioP.Email;
        ViewBag.Contraseña = str;
        return View("olvidemiContra");
    }

    public IActionResult olvideMiContraForm()
    {
        return View("olvideMiContraForm");
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