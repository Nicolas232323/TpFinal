using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using Dapper;
using Microsoft.AspNetCore.Mvc;
namespace ProyectoFinal.Models;

public static class BD
{
private static string _connectionString = @"Server=LocalHost;DataBase=TpFinal;Trusted_Connection=True;";
static List<equipo> _listadoEquipos = new List<equipo>();
static List<fixture> _listadoFixture = new List<fixture>(); 
static List<fixture2> _listadoFixture2 = new List<fixture2>(); 
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
public static List<jugador> ObtenerJugadores(int Id_equipo)
{
    using(SqlConnection db = new SqlConnection(_connectionString))
    {
        string sql = "SELECT * FROM Jugador WHERE Fkequipo = @EquipoId";
        return db.Query<jugador>(sql, new { EquipoId = Id_equipo }).ToList();
    }
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
    public static void AgregarComentario(Comentarios ComentariosP)
    {
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "INSERT INTO Comentarios(comentario) values (@comentarioP)";
            {
                db.Execute(sql, new{comentarioP = ComentariosP.comentario});
            }
        }
    }
    public static List<Comentarios> ObtenerComentarios()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SP = "SP_ObtenerComentarios";
            return db.Query<Comentarios>(SP, commandType: CommandType.StoredProcedure).ToList();
        }
    }
    public static List<TablaBgrupoA> ObtenerTablaGrupoA()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SP = "SP_ObtenerTablaGrupoA";
            return db.Query<TablaBgrupoA>(SP, commandType: CommandType.StoredProcedure).ToList();
        }
    }
    public static List<TablaBgrupoB> ObtenerTablaGrupoB()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SP = "SP_ObtenerTablaGrupoB";
            return db.Query<TablaBgrupoB>(SP, commandType: CommandType.StoredProcedure).ToList();
        }
    }
}