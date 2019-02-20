using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HotelManagementApplication
{
    public partial class BillingandFinance : System.Web.UI.Page
    {
        string uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            string param = Request.QueryString["uname"];
            uname = param.Substring(0, (param.Length));
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select usernamef, usernamel, cstatus from LOGINDAT where email = '" + uname + "'; ", con);
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            label1.Text = Convert.ToString(dt.Rows[0][0]) + Convert.ToString(dt.Rows[0][1]);


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
    }
}