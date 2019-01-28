using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HotelManagementApplication
{
    public partial class Addassetwiz : System.Web.UI.Page
    {
        string uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            uname = "cyril39999@gmail.com";
            if (!IsPostBack)
            {
                Tab1.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
            }
        }

        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            MainView.ActiveViewIndex = 2;
        }
        public void address_click(object sender,EventArgs e)
        {
            this.Tab2_Click(e,e);
        }
        public void adddata_click(object sender,EventArgs e)
        {
            string bookings = "flase", agoda = "flase", trivago = "flase", oyo="flase";
            if (checkbox1.Checked)
            {
                bookings = "true";
            }
            if(checkbox2.Checked)
            {
                agoda = "true";
            }
            if(checkbox3.Checked)
            {
                trivago = "true";
            }
            if(checkbox4.Checked)
            {
                oyo = "true";
            }
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO ASSETDATA(email,assetname,careof,buildingnameno,streetname,locality,city,district,state,pincode," +
          "totalrooms,bookings,agoda,trivago,oyorooms) VALUES ('"+uname+"','"+tb1.Text+"','"+tb2.Text+"','"+tb3.Text+ "','" + tb4.Text + "'" +
                ",'" + tb5.Text + "','" + tb6.Text + "','" + tb7.Text + "','" + tb8.Text + "','" + tb9.Text + "','"+TextBox1.Text+"','"+bookings+"'" +
                ",'"+agoda+"','"+trivago+"','"+oyo+"');";
            cmd.ExecuteNonQuery();
            con.Close();
            this.Tab3_Click(e, e);
        }
    }
}