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


   static List<jugador> _listadoJugadores = new List<jugador>();
   static List<Usuario> _Usuarios = new List<Usuario>();

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
        string sql = "SELECT Jugador.nombre FROM Jugador inner join Equipo on Jugador.Fkequipo = Equipo.IDequipo where pocision = 'Arquero' and  Jugador.Fkequipo = @EquipoId";
        _listadoJugadores = db.Query<jugador>(sql, new { EquipoId = Id_equipo }).ToList();
    }
    return _listadoJugadores;
}

public static List<jugador> ObtenerJugadoresDefensores(int Id_equipo)
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT Jugador.nombre FROM Jugador inner join Equipo on Jugador.Fkequipo = Equipo.IDequipo where pocision = 'Defensor' and  Jugador.Fkequipo = @EquipoId";
        _listadoJugadores = db.Query<jugador>(sql, new { EquipoId = Id_equipo }).ToList();
    }
    return _listadoJugadores;
}

public static List<jugador> ObtenerJugadoresMediocampistas(int Id_equipo)
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT nombre FROM Jugador inner join Equipo on Jugador.Fkequipo = Equipo.IDequipo where pocision = 'MedioCampista' and  Jugador.Fkequipo = @EquipoId";
        _listadoJugadores = db.Query<jugador>(sql, new { EquipoId = Id_equipo }).ToList();
    }
    return _listadoJugadores;
}


public static List<jugador> ObtenerJugadoresDelanteros(int Id_equipo)
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT Jugador.nombre FROM Jugador inner join Equipo on Jugador.Fkequipo = Equipo.IDequipo where pocision = 'Delantero' and  Jugador.Fkequipo =@EquipoId";
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


    

     public static void agregarUsuario(Usuario usuarioP)
    {
        string SQL = "INSERT INTO Usuario (NombreUsuario,Password) VALUES (@NombreUsuarioP,@ContraseñaP)";
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(SQL, new {NombreUsuarioP = usuarioP.NombreUsuario, ContraseñaP = usuarioP.Password});
        }
    }

    public static Usuario loginUsuario(Usuario usuarioP)
    {
        Usuario obj = null;
        string SQL ="SELECT * FROM Usuario where NombreUsuario = @NombreUsuarioP AND Password = @PasswordP";
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            obj = db.QueryFirstOrDefault<Usuario>(SQL, new {NombreUsuario = usuarioP.NombreUsuario, Password = usuarioP.Password});
        }
        return obj;
    }

    public static string olvideMiContraseña(Usuario usuarioP)
    {
        string contraseña = "";
        string SQL = "SELECT Contraseña FROM Usuario where Email = @Email";
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            contraseña = db.QueryFirstOrDefault<string>(SQL, new {Email = usuarioP.Email});
        }
        return contraseña;
    }

}




