using SLKUniversity.DataAccess_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SLKUniversity.Presentation_Layer
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (Session["EmailId"] != null)
            {
                Email.Text = "" + Session["EmailId"];
            }

            if(!IsPostBack)
            { 
                string emailid = Email.Text;
                CheckDuringLogin cdl = new CheckDuringLogin();
                DataTable dt = cdl.Login(emailid);
                UserI.Text = dt.Rows[0]["UserId"].ToString();
                FirstName.Text = dt.Rows[0]["FirstName"].ToString();
                LastName.Text = dt.Rows[0]["LastName"].ToString();
                PhoneNumber.Text = dt.Rows[0]["PhoneNumber"].ToString();
                PhoneNumber.Text = dt.Rows[0]["PhoneNumber"].ToString();
                Address.Text = dt.Rows[0]["Address"].ToString();
                City.Text = dt.Rows[0]["City"].ToString();
                State.Text = dt.Rows[0]["State"].ToString();
                Country.Text = dt.Rows[0]["Country"].ToString();
                Department.Text = dt.Rows[0]["Department"].ToString();
                Gender.Text = dt.Rows[0]["Gender"].ToString();
                TenthBoard.Text = dt.Rows[0]["TenthBoard"].ToString();
                TenthMarks.Text = dt.Rows[0]["TenthMarks"].ToString();
                TwelfthBoard.Text = dt.Rows[0]["TwelfthBoard"].ToString();
                TwelfthMarks.Text = dt.Rows[0]["TwelfthMarks"].ToString();
                dt.Clear();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int userid = Convert.ToInt32(UserI.Text); 
            string firstname = FirstName.Text;
            string lastname = LastName.Text;
            string phonenumber = (PhoneNumber.Text);
            string emailid = Email.Text;
            string address = Address.Text;
            string city = City.Text;
            string state = State.Text;
            string country = Country.Text;
            string department = Department.Text;
            string gender = Gender.Text;
            string thenthboard = TenthBoard.Text;
            int tenthmarks = Convert.ToInt32(TenthMarks.Text);
            string twelfthboard = TwelfthBoard.Text;
            int twelthmarks = Convert.ToInt32(TwelfthMarks.Text);
            char flag = 'N';
            SavingData sd = new SavingData();        
            sd.UpdateDate(userid,firstname, lastname, phonenumber, emailid, address, city, state, country, department, gender, thenthboard, tenthmarks, twelfthboard, twelthmarks,flag);
            Response.Redirect("ShowOfDatabase.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewOrUpdate.aspx");
        }
    }
}