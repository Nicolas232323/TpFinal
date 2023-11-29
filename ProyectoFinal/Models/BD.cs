using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;
namespace ProyectoFinal.Models;

public static class BD
{
    private static string _connectionString = @"Server=LocalHost;DataBase=TpFinal;Trusted_Connection=True;";
    
  static List<equipo> _listadoEquipos = new List<equipo>();
 
 static List<fixture> _listadoFixture = new List<fixture>(); 
 static List<fixture2> _listadoFixture2 = new List<fixture2>(); 

 static List<string> _listadoImagenesL = new List<string>(); 

  static List<string> _listadoImagenesV = new List<string>(); 


   static List<string> _listadoImagenesL2 = new List<string>(); 

  static List<string> _listadoImagenesV2 = new List<string>(); 
   static List<jugador> _listadoJugadores = new List<jugador>();

public static List<equipo> ObtenerEquiposTablaLiga()
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT * FROM Equipo";
        _listadoEquipos = db.Query<equipo>(sql).ToList();
    }

    return _listadoEquipos; 
}


public static equipo ObtenerEquiposPorId(int Id_equipo)
{
    equipo equipoEncontrado;

    using (SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT * FROM Equipo WHERE IDequipo = @ID";
        equipoEncontrado = db.QueryFirstOrDefault<equipo>(sql, new { ID = Id_equipo });
    }

    return equipoEncontrado;
}

public static List<equipo> ObtenerJugadores(int Id_equipo)
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT * FROM Jugador WHERE Fkequipo = @EquipoId";
        _listadoEquipos = db.Query<equipo>(sql, new { EquipoId = Id_equipo }).ToList();
    }
    return _listadoEquipos;
}
public static List<jugador> ObtenerJugadoresArqueros(int Id_equipo)
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT pocision FROM Jugador WHERE pocision = 'Arquero' and Fkequipo = @EquipoId";
        _listadoJugadores = db.Query<jugador>(sql, new { EquipoId = Id_equipo }).ToList();
    }
    return _listadoJugadores;
}

public static List<jugador> ObtenerJugadoresDefensores(int Id_equipo)
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT pocision FROM Jugador WHERE pocision = 'Defensor' and Fkequipo = @EquipoId";
        _listadoJugadores = db.Query<jugador>(sql, new { EquipoId = Id_equipo }).ToList();
    }
    return _listadoJugadores;
}

public static List<jugador> ObtenerJugadoresMediocampistas(int Id_equipo)
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT pocision FROM Jugador WHERE pocision = 'Mediocampista' and Fkequipo = @EquipoId";
        _listadoJugadores = db.Query<jugador>(sql, new { EquipoId = Id_equipo }).ToList();
    }
    return _listadoJugadores;
}


public static List<jugador> ObtenerJugadoresDelanteros(int Id_equipo)
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT pocision FROM Jugador WHERE pocision = 'Delantero' and Fkequipo = @EquipoId";
        _listadoJugadores = db.Query<jugador>(sql, new { EquipoId = Id_equipo }).ToList();
    }
    return _listadoJugadores;
}



 public static List<fixture> ObtenerFixture1()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT * FROM Fixture";
                _listadoFixture = db.Query<fixture>(sql).ToList();
        }
        return _listadoFixture;
    }

    public static List<fixture2> ObtenerFixture2()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT * FROM Fixture2";
                _listadoFixture2 = db.Query<fixture2>(sql).ToList();
        }
        return _listadoFixture2;
    }
}
/*
      public static List<string> ObtenerImagenesPorNombreLocal()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT Image_equipo FROM equipo INNER JOIN Fixture ON equipo.IDequipo = Fixture.Fkequipo WHERE Fixture.equipo_local =equipo.Nombre_equipo ";
                _listadoImagenesL = db.Query<string>(sql).ToList();
        }
        return _listadoImagenesL;
    }

          public static List<string> ObtenerImagenesPorNombreVisitante()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT Image_equipo FROM equipo INNER JOIN Fixture ON equipo.IDequipo = Fixture.Fkequipo WHERE Fixture.equipo_visitante =equipo.Nombre_equipo";
                _listadoImagenesV = db.Query<string>(sql).ToList();
        }
        return _listadoImagenesV;
    }


    public static List<string> ObtenerImagenesPorNombreLocal2()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT Image_equipo FROM equipo INNER JOIN Fixture2 ON equipo.IDequipo = Fixture2.Fkequipo2 WHERE Fixture2.equipo_local2 =equipo.Nombre_equipo ";
                _listadoImagenesL2 = db.Query<string>(sql).ToList();
        }
        return _listadoImagenesL2;
    }

          public static List<string> ObtenerImagenesPorNombreVisitante2()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT Image_equipo FROM equipo INNER JOIN Fixture2 ON equipo.IDequipo = Fixture2.Fkequipo2 WHERE Fixture2.equipo_visitante2 =equipo.Nombre_equipo ";
                _listadoImagenesV2 = db.Query<string>(sql).ToList();
        }
        return _listadoImagenesV2;
    }

}

/*
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

}

*/