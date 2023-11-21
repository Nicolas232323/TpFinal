namespace ProyectoFinal.Models;
public class equipo
{
    public string imagenEquipo{get;set;}
    public string nombreEquipo{get;set;}
    public int Id_equipo{get;set;}
    public int partidosJugados{get;set;}
    public int puntos{get;set;}
    public int partidosGanados{get;set;}
    public int partidosEmpatados{get;set;}
    public int partidosPerdidos{get;set;}
    public int diferenciaGoles{get;set;}

    public equipo()
    {

    }
    public equipo(string imgEquipo, string nomEquipo, int id_e, int pJ, int puntosP, int pG, int pP, int pE, int dG, DateTime fF, string lC, string cancha)
    {
        imagenEquipo = imgEquipo;
        nombreEquipo = nomEquipo;
        Id_equipo = id_e;
        partidosJugados = pJ;
        puntos = puntosP;
        partidosGanados = pG;
        partidosEmpatados = pE;
        partidosPerdidos = pP;
        diferenciaGoles = dG;
<<<<<<< HEAD
    //    fechaFundacion = fF;
      //  localidadClub = lC;
        //estadio = cancha;
=======
>>>>>>> 6429d4ca43c2f3a852c7b4ae0f5ff14238d6e1e0
    }
}