using SLKUniversity.DataAccess_Layer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SLKUniversity.Presentation_Layer
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();             
            }
        }

        private void BindGrid()
        {
            string Name = Convert.ToString(Session["EmailId"]);
            CheckDuringLogin cdl = new CheckDuringLogin();
            DataTable dt = cdl.Login(Name); 
            //data.DataSource = dt;
            //data.DataBind();
            GridView1.DataSource = dt;          
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewOrUpdate.aspx");           
        }
    }
}