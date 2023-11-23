public class jugador
{
    public string nombreJugador{get;set;}
    public int IDjugador{get;set;}
    public int pocision{get;set;}
    public string pais{get;set;}
    public int Fkequipo{get;set;}
    public jugador()
    {

    }
    public jugador(string nomJugador, int id_J, int pos, string nacionalidadP, int FK_Equipo)
    {
        nombreJugador = nomJugador;
        IDjugador = id_J;
        pocision = pos;
        pais = nacionalidadP;
        Fkequipo = FK_Equipo;
    }
}