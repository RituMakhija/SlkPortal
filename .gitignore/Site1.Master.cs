using SLKUniversity.DataAccess_Layer;
using SLKUniversity.Presentation_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SLKUniversity.Presentation_Layer
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "select * from slkreg where EmailId='" + Session["EmailId"] + "'";
                SqlDataAdapter myadapter = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                if (Session["EmailId"] != null)
                {                  
                    DisplayName.Text = "Welcome " + dt.Rows[0]["UserName"].ToString();
                    Session["Display"] = DisplayName.Text;
                }
                
            }
        }
    }
}