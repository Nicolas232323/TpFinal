using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;
namespace ProyectoFinal.Models;
public static class BD
{
    private static string _connectionString = @"Server=DESKTOP-MMQE38N\SQLEXPRESS;DataBase=TpFinal;Trusted_Connection=True;";
    
  static List<equipo> _listadoEquipos = new List<equipo>();

public static List<equipo> ObtenerEquiposTablaLiga()
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT * FROM Equipo";
        _listadoEquipos = db.Query<equipo>(sql).ToList();
    }

    return _listadoEquipos; 
}


    public static List<equipo> ObtenerEquiposPorId(int Id_equipo)
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT * FROM equipo";
                _listadoEquipos = db.Query<equipo>(sql).ToList();
        }
        return _listadoEquipos;
    }
    public static void ObtenerJugadores()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT * FROM jugador";
                _listadoEquipos = db.Query<equipo>(sql).ToList();
        }
    }
}

/*
    static List<Fixture1> _Fixture1 = new List<Fixture1>();
    public static void ObtenerFixture1()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "Select * from Fixture";

            return DB.Query<Fixture1>(SQL).ToList();
        }
    }

    static List<Fixture2> _Fixture2 = new List<Fixture1>();
    public static void ObtenerFixture2()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "Select * from Fixture2";

            return DB.Query<Fixture2>(SQL).ToList();
        }
    }

     public static bool AgregarUsuario(Usuario us)
    {
        Usuario encontrado = null;
        string SQL = "INSERT INTO Usuarios(NombreUsuario, Password, Nombre, Email, Telefono, IdPregunta, Respuesta) VALUES (@pNombreUsuario, HASHBYTES('MD5',@pPassword), @pNombre, @pEmail, @pTelefono, @pIdPregunta, @pRespuesta)";
        string SQL2 = "SELECT * FROM Usuarios WHERE NombreUsuario = @pNombreUsuario OR Email = @pEmail";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            encontrado = db.QueryFirstOrDefault<Usuario>(SQL2, new{ pNombreUsuario = us.NombreUsuario, pEmail = us.Email });
            if (encontrado != null)
            {
                return false;
            }
            else
            {
                db.Execute(SQL, new { pNombreUsuario = us.NombreUsuario, pPassword = us.Password, pNombre = us.Nombre, pEmail = us.Email, pTelefono = us.Telefono, pIdPregunta = us.IdPregunta, pRespuesta = us.Respuesta });
                return true;
            }
        }
}

    internal static dynamic ObtenerEquiposPorId(object id_equipo)
    {
        throw new NotImplementedException();
    }
}
*/