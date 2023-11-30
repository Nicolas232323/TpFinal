namespace ProyectoFinal.Models;
public class TablaBgrupoB
{
    public int puntos {get;set;}
    public string NombreEquipo{get;set;}
    public int IdTablaGrupoB{get;set;}

    public TablaBgrupoB()
    {

    }
    public TablaBgrupoB(string nomEquipo, int pts, int id_T)
    {
        puntos = pts;
        NombreEquipo = nomEquipo;
        IdTablaGrupoB = id_T;
    }
}