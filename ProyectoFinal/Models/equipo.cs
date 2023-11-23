namespace ProyectoFinal.Models;
public class equipo
{
    public string Image_equipo{get;set;}
    public string Nombre_equipo{get;set;}
    public int IDequipo{get;set;}
    public int partido_jugados{get;set;}
    public int puntos_equipo{get;set;}
    public int partidos_ganados{get;set;}
    public int partidos_empatados{get;set;}
    public int partidos_perdidos{get;set;}
    public int diferencia_de_gol{get;set;}

    public equipo()
    {

    }
    public equipo(string imgEquipo, string nomEquipo, int id_e, int pJ, int puntosP, int pG, int pP, int pE, int dG, DateTime fF, string lC, string cancha)
    {
        Image_equipo = imgEquipo;
        Nombre_equipo = nomEquipo;
        IDequipo = id_e;
        partido_jugados = pJ;
        puntos_equipo = puntosP;
        partidos_ganados = pG;
        partidos_empatados = pE;
        partidos_perdidos = pP;
        diferencia_de_gol = dG;
    }
}