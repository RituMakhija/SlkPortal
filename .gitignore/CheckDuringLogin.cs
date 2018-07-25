using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SLKUniversity.DataAccess_Layer
{
    public class CheckDuringLogin
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);

        public bool LoginData(string Name, string Password)
        {                      
                int rc;
                string query = "select * from slkreg where EmailId='" + Name + "' and Password='" + Password + "'";
                SqlDataAdapter myadapter = new SqlDataAdapter(query, con);
                DataSet myds = new DataSet();
                myadapter.Fill(myds, "Slk");
                rc = myds.Tables["Slk"].Rows.Count;
                if (rc > 0)
                {
                    Name = myds.Tables["Slk"].Rows[0][1].ToString();
                    Password = myds.Tables["Slk"].Rows[0][2].ToString();
                    return true;
                }
                else
                {
                    return false;
                }           
        }

        public DataTable Login(string Email)
        {            
                con.Open();
                string query = "select * from details where EmailID='" + Email + "'";
                //SqlDataAdapter myadapter = new SqlDataAdapter(query, con);
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                //myadapter.Fill(dt);
                con.Close();
                return dt;                                  
        }
    }
}