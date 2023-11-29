public class Usuario
{
    public int IdUsuario{get; set;}
    public string NombreUsuario{get;set;}
    public string Password{get;set;}
    public string Email{get;set;}
    public Usuario()
    {

    }
    public Usuario(int IdU, string NU, string Pass, string Mail)
    {
        IdUsuario = IdU;
        NombreUsuario = NU;
        Password = Pass;
        Email = Mail;
    }
}