using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;

public static class BD
{
    private static string _connectionString = @"Server=Localhost;DataBase=;Trusted_Connection=True;";
    
    static List<equipo> _listadoEquipos = new List<equipo>();
    public static void ObtenerEquipos()
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {

        }
    }
}