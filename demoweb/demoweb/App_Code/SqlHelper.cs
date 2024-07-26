using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for SqlHelper
/// </summary>
public class SqlHelper
{
    
        public static SqlConnection GetConnection()
        {
        //insert update delete
            try
            {
                string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                return con;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public static void ExecuteNonQuery(string strcmd)
        {
            try
            {
                SqlConnection con = GetConnection();
                SqlCommand cmd = new SqlCommand(strcmd, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ex)
            {

            throw ex;
            }
        }
        public static DataTable FillData(string strcmd)
        {
            
            try
            {
                SqlConnection con = GetConnection();
                SqlCommand cmd = new SqlCommand(strcmd, con);
                SqlDataAdapter dtadp = new SqlDataAdapter();
                dtadp.SelectCommand = cmd;
                DataTable dt = new DataTable();
                dtadp.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }
   public static string sf(string str)
    {
        return str.Replace("'", "''");
    }
    }
