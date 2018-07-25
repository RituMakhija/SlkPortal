using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using SLKUniversity.DataAccess_Layer;
using System.Data;

namespace SLKUniversity.Presentation_Layer
{
    public partial class WebForm5 : System.Web.UI.Page
    {     
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (Session["EmailId"] != null)
            {               
                lblmsg.Text = "" + Session["EmailId"];                             
            }                          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            string firstname = FirstName.Text;
            string lastname = LastName.Text;
            string phonenumber = (PhoneNumber.Text);
            string emailid = lblmsg.Text;
            string address = Address.Text;
            string city = City.Text;
            string state = State.Text;
            string country = Country.Text;
            string department = Department.Text;
            string gender = Gender.Text;
            string thenthboard = TenthBoard.Text;
            int tenthmarks =Convert.ToInt32(TenthMarks.Text);
            string twelfthboard = TwelfthBoard.Text;
            int twelthmarks =Convert.ToInt32(TwelfthMarks.Text);
            char flag = 'N';
            SavingData sd = new SavingData();       
            sd.DataStore(firstname,lastname,phonenumber,emailid,address,city,state,country,department,gender,thenthboard,tenthmarks,twelfthboard,twelthmarks,flag);          
            Response.Redirect("ViewOrUpdate.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("HomePage.aspx");
        }
    }
}