﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HotelManagementApplication
{
    public partial class Settings : System.Web.UI.Page
    {
        string uname, temp;
        protected void Page_Load(object sender, EventArgs e)
        {

            string param = Request.QueryString["uname"];
            uname = param.Substring(0, (param.Length));


            try
            {
               
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf; Integrated Security = True");
                SqlCommand cmd = new SqlCommand("select usernamef,usernamel,cstatus from LOGINDAT where email='" + uname + "';", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                label1.Text = Convert.ToString(dt.Rows[0][0]) + Convert.ToString(dt.Rows[0][1]);


               
            }
            catch
            {
               
            }
        }
        public void dashclick(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx?uname=" + Server.UrlEncode(uname));
        }
        public void userproclick(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx?uname=" + Server.UrlEncode(uname));
        }
        public void managebookingclick(object sender, EventArgs e)
        {
            Response.Redirect("ManageBookings.aspx?uname=" + Server.UrlEncode(uname));
        }
        public void billingclick(object sender, EventArgs e)
        {
            Response.Redirect("BillingandFinance.aspx?uname=" + Server.UrlEncode(uname));
        }
        public void settingsclick(object sender, EventArgs e)
        {
            Response.Redirect("Settings.aspx?uname=" + Server.UrlEncode(uname));
        }
    }
}