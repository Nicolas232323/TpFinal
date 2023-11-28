public class fixture
{
    public int IdFixture{get;set;}
    public string Fkequipo{get;set;}
    public string equipo_local{get;set;}
    public string equipo_visitante{get;set;}

    public DateTime fecha_juego{get;set;}

    public DateTime Hora_Partido{get;set;}
    

    public fixture()
    {

    }
    public fixture(int idFix, string Fkequ,string equLoc,string equVis,DateTime FJuego,DateTime HPart)
    {
        idFix = idFixture;
        Fkequ = Fkequipo;
        equLoc = equipo_local;
        equVis = equipo_visitante;
        FJuego = fecha_juego;
        HPart = Hora_Partido;
    }
}