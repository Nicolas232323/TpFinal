namespace ProyectoFinal.Models;
public class TablaBgrupoA
{
    public string NombreEquipo{get;set;}
    public int IdTablaGrupoA{get;set;}

    public TablaBgrupoA()
    {

    }
    public TablaBgrupoA(string nomEquipo, int id_T)
    {
        NombreEquipo = nomEquipo;
        IdTablaGrupoA = id_T;
    }
}