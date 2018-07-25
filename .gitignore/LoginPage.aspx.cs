using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using SLKUniversity.DataAccess_Layer;
using System.Web.SessionState;
using System.Configuration;
//using SLKUniversity.DataAccess_Layer.CheckDuringLogin;

namespace SLKUniversity.Presentation_Layer
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Display"] != null)
            {
                Session["Display"] = "hello";    
            }
            else
            {
                Session["Display"] = "welcome";
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string Name = name.Text;
            string Password=password.Text;
            CheckDuringLogin cdl = new CheckDuringLogin();      
            if (cdl.LoginData(Name, Password) == true)
            {                                           
                Session["EmailId"] = name.Text;
                DataTable dt= cdl.Login(Name);

                    if (dt.Rows.Count > 0)
                    {
                        Response.Redirect("ViewOrUpdate.aspx");

                    }
                    else
                    {
                        Response.Redirect("EnterDetails.aspx");
                    }
            }
            else if(name.Text=="" && password.Text=="" || name.Text == "" || password.Text == "")
            {
                Label3.Text = "Please enter both the fields ";
            }
            else if (name.Text == "admin" && password.Text == "itsasecret")
            {
                Response.Redirect("RegisteredUsers.aspx");
            }
            else
            {
                Label3.Text = "Invaild username and/or password or Click on SignUp to register ";
            }           

        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}