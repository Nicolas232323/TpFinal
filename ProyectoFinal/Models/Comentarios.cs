public class Comentarios
{
public int IdComentarios{get;set;}
public string comentario{get;set;}
public int FK_IdUsuario{get;set;}


 public Comentarios()
    {

    }
    public Comentarios(int Idcoment, string coment, int FKusuario)
    {
       Idcoment=IdComentarios;
       coment=comentario;
       FKusuario=FK_IdUsuario;



       }


}