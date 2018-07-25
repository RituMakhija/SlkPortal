
using SLKUniversity.DataAccess_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SLKUniversity.Presentation_Layer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Username = UserName.Text;
            string Email = EmailId.Text;
            string Password1 = Password.Text;
            SavingData sd = new SavingData();
            sd.GetData(Username, Email, Password1);           
            Response.Redirect("LoginPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}