public class Comentarios
{
public int IdComentarios{get;set;}
public string comentario{get;set;}


 public Comentarios()
    {

    }
    public Comentarios(int Idcoment, string coment)
      {
       IdComentarios = Idcoment;
       comentario = coment;
       }


}