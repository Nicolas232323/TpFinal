
public class fixture2 
{
    public int IdFixture2{get;set;}
    public string equipo_local2{get;set;}
    public string equipo_visitante2{get;set;}
    public string  fecha_juego2{get;set;}
    public string  Hira_Partido2{get;set;}
    public int Fkequipo2{get;set;}
    
    

    public fixture2()
    {

    }
    public fixture2(int idFix2, string Local2, string Visitante2, string fechaJ2,string HoraP2, int Fkeqp2)
    {
        IdFixture2 = idFix2;
        equipo_local2 = Local2;
        equipo_visitante2 = Visitante2;
        fecha_juego2 = fechaJ2;
        Hira_Partido2 = HoraP2;
        Fkequipo2 = Fkeqp2;
    }
}
