using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;

public static class BD
{
    private static string _connectionString = @"Server=Localhost;DataBase=;Trusted_Connection=True;";
    
    static List<equipo> _listadoEquipos = new List<equipo>();
    public static void ObtenerEquiposTablaLiga()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT imagenEquipo, nombreEquipo, Id_equipo, partidosJugados, puntos, partidosGanados, partidosEmpatados, partidosPerdidos, diferenciaGoles FROM Equipo";
                _listadoEquipos = db.Query<equipo>(sql).ToList();
        }
    }
    public static void ObtenerEquiposPorId(int Id_equipo)
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
                string sql = "SELECT imagenEquipo, nombreEquipo, fechaFundacion, localidadClub, estadio FROM Equipo";
                _listadoEquipos = db.Query<equipo>(sql).ToList();
        }
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