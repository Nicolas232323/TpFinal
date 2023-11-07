public class jugador
{
    public string nombreJugador{get;set;}
    public int Id_jugador{get;set;}
    public int posicion{get;set;}
    public DateTime fechaNacimiento{get;set;}
    public int altura{get;set;}
    public string nacionalidad{get;set;}
    public string fotoBanderaNacionalidad{get;set;}

    public jugador()
    {

    }
    public jugador(string nomJugador, int id_J, int pos, DateTime fN, int alt, string nacionalidadP, string ftBanderaNacion)
    {
        nombreJugador = nomJugador;
        Id_jugador = id_J;
        posicion = pos;
        fechaNacimiento = fN;
        altura = alt;
        nacionalidad = nacionalidadP;
        fotoBanderaNacionalidad = ftBanderaNacion;
    }
}