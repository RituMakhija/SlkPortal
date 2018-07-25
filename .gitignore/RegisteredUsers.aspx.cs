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
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        DataTable dt=new DataTable();
        //int flag = 0;       

        protected void Page_Load(object sender, EventArgs e)
        {           
            if (!IsPostBack)
            {
                this.BindData();
            }
        }
        private void BindData()
        {
            string query = "select * from slkreg";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);            
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Control control = null;
            if (GridView1.FooterRow != null)
            {
                control = GridView1.FooterRow;
            }
            else
            {
                control = GridView1.Controls[0].Controls[0];
            }
            string RegNo = (control.FindControl("txtRegNo") as TextBox).Text;
            string UserName = (control.FindControl("txtUserName") as TextBox).Text;          
            string EmailID = (control.FindControl("txtEmailId") as TextBox).Text;
            string Password = (control.FindControl("txtPassword") as TextBox).Text;            
            SqlCommand cmd = new SqlCommand("INSERT INTO [slkreg] VALUES(@UserName,@EmailId,@Password)", con);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@EmailId", EmailID);
            cmd.Parameters.AddWithValue("@Password", Password);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            //if (e.CommandName == "DeleteRow")
            //{
            //    var id = GridView1.SelectedIndex;
            //    dt.Rows.RemoveAt(id);
            //    GridView1.DataSource = dt;
            //    GridView1.DataBind();
            //int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            //BindData();             
            //    string E_Id = Convert.ToString(e.CommandArgument);                
            //    con.Open();              
            //    SqlCommand cmd = new SqlCommand("DELETE FROM slkreg WHERE EmailId='" + E_Id + "'", con);
            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    Response.Redirect(Request.Url.AbsoluteUri);
            //}            
            //string id;
            //foreach (GridViewRow rows in GridView1.Rows)
            //{
            ////Label userid = (Label)rows.FindControl("regno");
            ////id = userid.Text;
            //int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            ////flag = 1;
            ////if (flag == 1)
            ////{
            //    GridView1.Rows[rowIndex].Visible = false;
            //    GridView1.DataBind();                   
            ////}
            ////flag = 0; 
            //}string query = "select * from slkreg";
            //string query = "select * from slkreg";
            //SqlDataAdapter sda = new SqlDataAdapter(query, con);
            //sda.Fill(dt);
            //int id =Convert.ToInt32(dt.Rows[0]["SlNo"]);
            ////dt.Rows[id].Delete();
            //dt.Rows.RemoveAt(id);
            //GridView1.DataSource = dt;        
            //GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];           
            string UserName = (row.FindControl("uname") as TextBox).Text;
            string EmailId = (row.FindControl("eid") as TextBox).Text;
            string Password = (row.FindControl("pwd") as TextBox).Text;
            SqlCommand cmd = new SqlCommand("UPDATE slkreg SET UserName=@UserName,Password=@Password WHERE EmailId=@EmailId", con);                          
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@EmailId", EmailId);
            cmd.Parameters.AddWithValue("@Password", Password);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();                         
            GridView1.EditIndex = -1;
            this.BindData();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAllData.aspx");
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindData();

        }
    }
}