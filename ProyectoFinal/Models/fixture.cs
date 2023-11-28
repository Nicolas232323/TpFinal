public class fixture
{
    public int IdFixture{get;set;}
    public string Fkequipo{get;set;}
    public string equipo_local{get;set;}
    public string equipo_visitante{get;set;}

    public string fecha_juego{get;set;}

    public string Hora_Partido{get;set;}
    

    public fixture()
    {

    }
    public fixture(int idFix, string Fkequ,string equLoc,string equVis,string FJuego,string HPart)
    {
        IdFixture = idFix;
        equipo_local = equLoc;
        equipo_visitante = equVis;
        fecha_juego = FJuego;
        Hora_Partido = HPart;
        Fkequipo = Fkequ;
    }
}