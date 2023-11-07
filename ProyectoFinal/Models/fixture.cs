public class fixture
{
    public int IdFixture{get;set;}
    public string nombreEquipos{get;set;}
    public int golesLocal{get;set;}
    public int golesVisitante{get;set;}
    

    public fixture()
    {

    }
    public fixture(int idFix, string NE, int Gl, int GV)
    {
        IdFixture = idFix;
        nombreEquipos = NE;
        golesLocal = Gl;
        golesVisitante = GV;
    }
}