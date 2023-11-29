public class jugador
{
    public string nombreJugador{get;set;}
    public int IDjugador{get;set;}
    public string pocision{get;set;}
    public string pais{get;set;}
    public int Fkequipo{get;set;}
    public jugador()
    {

    }
    public jugador(string nomJugador, int id_J, string pos, string nacionalidadP, int FK_Equipo)
    {
        nombreJugador = nomJugador;
        IDjugador = id_J;
        pocision = pos;
        pais = nacionalidadP;
        Fkequipo = FK_Equipo;
    }
}