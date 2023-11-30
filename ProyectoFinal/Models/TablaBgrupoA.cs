namespace ProyectoFinal.Models;
public class TablaBgrupoA
{
    public int puntos {get;set;}
    public string NombreEquipo{get;set;}
    public int IdTablaGrupoA{get;set;}

    public TablaBgrupoA()
    {

    }
    public TablaBgrupoA(string nomEquipo, int pts, int id_T)
    {
        puntos = pts;
        NombreEquipo = nomEquipo;
        IdTablaGrupoA = id_T;
    }
}