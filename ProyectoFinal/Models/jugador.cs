public class jugador
{
    public string nombreJugador{get;set;}
    public int Id_jugador{get;set;}
    public int posicion{get;set;}
    public string nacionalidad{get;set;}
    public int Fkequipo{get;set;}
    public jugador()
    {

    }
    public jugador(string nomJugador, int id_J, int pos, string nacionalidadP, int FK_Equipo)
    {
        nombreJugador = nomJugador;
        Id_jugador = id_J;
        posicion = pos;
        nacionalidad = nacionalidadP;
        Fkequipo = FK_Equipo;
    }
}