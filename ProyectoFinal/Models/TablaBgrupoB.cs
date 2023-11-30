namespace ProyectoFinal.Models;
public class TablaBgrupoB
{
    public string NombreEquipo{get;set;}
    public int IdTablaGrupoB{get;set;}

    public TablaBgrupoB()
    {

    }
    public TablaBgrupoB(string nomEquipo, int id_T)
    {
        NombreEquipo = nomEquipo;
        IdTablaGrupoB = id_T;
    }
}