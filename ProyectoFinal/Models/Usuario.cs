public class Usuario
{
    public int IdUsuario{get; set;}
    public string NombreUsuario{get;set;}
    public string Password{get;set;}
    public Usuario()
    {

    }
    public Usuario(int IdU, string NU, string Pass)
    {
        IdUsuario = IdU;
        NombreUsuario = NU;
        Password = Pass;
    }
}