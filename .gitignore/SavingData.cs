using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SLKUniversity.DataAccess_Layer
{
    public class SavingData
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);

        public void GetData(string UserName, string EmailId, string Password)
        {           
                con.Open();
                SqlCommand cmd = new SqlCommand("Sample1", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@EmailId", EmailId);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.ExecuteNonQuery();
                con.Close();           
        }

        public void DataStore(string firstname,string lastname,string phonenumber,string emailid,string address,string city,string state,string country,string department,string gender,string tenthboard,int tenthmarks,string twelfthboard,int twelthmarks,char flag)
        {       
            con.Open();
            SqlCommand cmd = new SqlCommand("Sample2", con);
            cmd.CommandType = CommandType.StoredProcedure;                
            cmd.Parameters.AddWithValue("@FirstName", firstname);
            cmd.Parameters.AddWithValue("@LastName", lastname);
            cmd.Parameters.AddWithValue("@PhoneNumber", phonenumber);
            cmd.Parameters.AddWithValue("@EmailID", emailid);
            cmd.Parameters.AddWithValue("@Address", address);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@State", state);
            cmd.Parameters.AddWithValue("@Country", country);
            cmd.Parameters.AddWithValue("@Department", department);
            cmd.Parameters.AddWithValue("@Gender", gender);
            cmd.Parameters.AddWithValue("@TenthBoard", tenthboard);
            cmd.Parameters.AddWithValue("@TenthMarks", tenthmarks);
            cmd.Parameters.AddWithValue("@TwelfthBoard", twelfthboard);
            cmd.Parameters.AddWithValue("@TwelfthMarks", twelthmarks);
            cmd.Parameters.AddWithValue("@Delete_Flag", flag);
            cmd.ExecuteNonQuery();
            con.Close();          
        }

        public void UpdateDate(int userid,string firstname, string lastname, string phonenumber, string emailid, string address, string city, string state, string country, string department, string gender, string tenthboard, int tenthmarks, string twelfthboard, int twelthmarks,char flag)
        {          
                con.Open();
                SqlCommand cmd = new SqlCommand("Sample3", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserId", userid);
                cmd.Parameters.AddWithValue("@FirstName", firstname);
                cmd.Parameters.AddWithValue("@LastName", lastname);
                cmd.Parameters.AddWithValue("@PhoneNumber", phonenumber);
                cmd.Parameters.AddWithValue("@EmailID", emailid);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@State", state);
                cmd.Parameters.AddWithValue("@Country", country);
                cmd.Parameters.AddWithValue("@Department", department);
                cmd.Parameters.AddWithValue("@Gender", gender);
                cmd.Parameters.AddWithValue("@TenthBoard", tenthboard);
                cmd.Parameters.AddWithValue("@TenthMarks", tenthmarks);
                cmd.Parameters.AddWithValue("@TwelfthBoard", twelfthboard);
                cmd.Parameters.AddWithValue("@TwelfthMarks", twelthmarks);
                cmd.Parameters.AddWithValue("@Delete_Flag", flag);
                cmd.ExecuteNonQuery();
                con.Close();       
        }
    }
}