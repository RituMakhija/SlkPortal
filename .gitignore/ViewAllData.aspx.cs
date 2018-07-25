using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SLKUniversity.Presentation_Layer
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        DataTable dtable = new DataTable();      

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {           
            string query = "SELECT * FROM details where Delete_Flag = 'N'";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);          
            sda.Fill(dtable);
            GV.DataSource = dtable;
            GV.DataBind();        
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GV.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GV.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {            
            GridViewRow row = GV.Rows[e.RowIndex];
            string FirstName = (row.FindControl("fname") as TextBox).Text;
            string LastName = (row.FindControl("lname") as TextBox).Text;
            string PhoneNumber = (row.FindControl("phoneno") as TextBox).Text;
            string EmailId = (row.FindControl("emid") as TextBox).Text;
            string Address = (row.FindControl("addr") as TextBox).Text;
            string City = (row.FindControl("cit") as TextBox).Text;
            string State = (row.FindControl("stat") as TextBox).Text;
            string Country = (row.FindControl("coun") as TextBox).Text;
            string Department = (row.FindControl("dept") as TextBox).Text;
            string Gender = (row.FindControl("gen") as TextBox).Text;
            string TenthBoard = (row.FindControl("tenb") as TextBox).Text;
            string TenthMarks = (row.FindControl("tenm") as TextBox).Text;
            string TwelfthBoard = (row.FindControl("twelb") as TextBox).Text;
            string TwelfthMarks = (row.FindControl("twelm") as TextBox).Text;
            char Delete_Flag = 'N';
            SqlCommand cmd = new SqlCommand("UPDATE details SET FirstName=@FirstName,LastName=@LastName,PhoneNumber=@PhoneNumber,EmailId=@EmailID,Address=@Address,City=@City,State=@State,Country=@Country,Department=@Department,Gender=@Gender,TenthBoard=@TenthBoard,TenthMarks=@TenthMarks,TwelfthBoard=@TwelfthBoard,TwelfthMarks=@TwelfthMarks,Delete_Flag=@Delete_Flag WHERE EmailId=@EmailId", con);
            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            cmd.Parameters.AddWithValue("@EmailId", EmailId);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@State", State);
            cmd.Parameters.AddWithValue("@Country", Country);
            cmd.Parameters.AddWithValue("@Department", Department);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@TenthBoard", TenthBoard);
            cmd.Parameters.AddWithValue("@TenthMarks", TenthMarks);
            cmd.Parameters.AddWithValue("@TwelfthBoard", TwelfthBoard);
            cmd.Parameters.AddWithValue("@TwelfthMarks", TwelfthMarks);
            cmd.Parameters.AddWithValue("@Delete_Flag", Delete_Flag);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GV.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
                string em = Convert.ToString(e.CommandArgument);
                string query = "update details set Delete_Flag ='Y' where EmailID='" + em + "'";
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.Fill(dtable);
                GV.DataSource = dtable;
                GV.DataBind();

                BindGrid();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Control control = null;
            if (GV.FooterRow != null)
            {
                control = GV.FooterRow;
            }
            else
            {
                control = GV.Controls[0].Controls[0];
            }
            string UserId = (control.FindControl("txtUserId") as TextBox).Text;
            string FirstName = (control.FindControl("txtFirstName") as TextBox).Text;
            string LastName = (control.FindControl("txtLastName") as TextBox).Text;
            string PhoneNumber = (control.FindControl("txtPhoneNumber") as TextBox).Text;
            string EmailID = (control.FindControl("txtEmailI") as TextBox).Text;
            string Address = (control.FindControl("txtAddress") as TextBox).Text;
            string City = (control.FindControl("txtCity") as TextBox).Text;
            string State = (control.FindControl("txtState") as TextBox).Text;
            string Country = (control.FindControl("txtCountry") as TextBox).Text;
            string Department = (control.FindControl("txtDepartment") as DropDownList).Text;
            string Gender = (control.FindControl("txtGender") as DropDownList).Text;
            string TenthBoard = (control.FindControl("txtTenthBoard") as DropDownList).Text;
            string TenthMarks = (control.FindControl("txtTenthMarks") as TextBox).Text;
            string TwelfthBoard = (control.FindControl("txtTwelfthBoard") as DropDownList).Text;
            string TwelfthMarks = (control.FindControl("txtTwelfthMarks") as TextBox).Text;
            char Delete_Flag = 'N';
            SqlCommand cmd = new SqlCommand("insert into [details] values(@FirstName,@LastName,@PhoneNumber,@EmailID,@Address,@City,@State,@Country,@Department,@Gender,@TenthBoard,@TenthMarks,@TwelfthBoard,@TwelfthMarks,@Delete_Flag)", con);
            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            cmd.Parameters.AddWithValue("@EmailId", EmailID);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@State", State);
            cmd.Parameters.AddWithValue("@Country", Country);
            cmd.Parameters.AddWithValue("@Department", Department);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@TenthBoard", TenthBoard);
            cmd.Parameters.AddWithValue("@TenthMarks", TenthMarks);
            cmd.Parameters.AddWithValue("@TwelfthBoard", TwelfthBoard);
            cmd.Parameters.AddWithValue("@TwelfthMarks", TwelfthMarks);
            cmd.Parameters.AddWithValue("@Delete_Flag", Delete_Flag);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Done_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisteredUsers.aspx");
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {         
            
        }

        private void GridData()
        {
            string query = "SELECT * FROM details where FirstName like '" + txtSearch.Text + "'" + "or LastName like '" + txtSearch.Text + "'" + "or City like '" + txtSearch.Text + "'" + "and Delete_Flag = 'N'";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();        
            sda.Fill(dt);
            GV.DataSource = dt;
            GV.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GridData();
            GV.Visible = true;
        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {            
            //int UserId =Convert.ToInt32(GV.Columns[0]);
            //string query = "update details set Delete_Flag ='Y' where UserId='" + UserId + "'";
            //SqlDataAdapter sda = new SqlDataAdapter(query, con);
            //sda.Fill(dtable);
            //GV.DataSource = dtable;
            //this.BindGrid();

        }

        protected void GV_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV.PageIndex = e.NewPageIndex;
            BindGrid();
        }

      
    }        
}
