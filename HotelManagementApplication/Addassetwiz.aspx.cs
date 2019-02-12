using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

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
        protected void AddTextBox(object sender, EventArgs e)
        {
            int index = pnlTextBoxes.Controls.OfType<TextBox>().ToList().Count + 1;
            this.CreateTextBox("txtDynamic" + index);
            int index2 = pnlTextBoxes2.Controls.OfType<TextBox>().ToList().Count + 1;
            this.CreateTextBox2("txtDynamicval" + index2);

        }

        private void CreateTextBox(string id)
        {
            TextBox txt = new TextBox();
            txt.ID = id;
            txt.Attributes.Add("placeholder","Ex. Delux, Super Delux, Suite...");
            txt.CssClass = "form-control";
            pnlTextBoxes.Controls.Add(txt);
            Literal lt = new Literal();
            lt.Text = "<br />";
            pnlTextBoxes.Controls.Add(lt);
        }
        private void CreateTextBox2(string id)
        {
            TextBox txt = new TextBox();
            txt.ID = id;
            txt.Attributes.Add("placeholder", "No. of rooms");
            txt.CssClass = "form-control";
            pnlTextBoxes2.Controls.Add(txt);
            Literal lt = new Literal();
            lt.Text = "<br />";
            pnlTextBoxes2.Controls.Add(lt);
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            List<string> keys = Request.Form.AllKeys.Where(key => key.Contains("txtDynamic")).ToList();
            int i = 1;
            foreach (string key in keys)
            {
                this.CreateTextBox("txtDynamic" + i);
                this.CreateTextBox2("txtDynamicval" + i);
                i++;
            }
        }
        protected void Save(object sender, EventArgs e)
        {
            foreach (TextBox textBox in pnlTextBoxes.Controls.OfType<TextBox>())
            {
                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Names(Name) VALUES(@Name)"))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@Name", textBox.Text);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
        }
        public void complete_click(object sender,EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "UPDATE LOGINDAT SET [cstatus]='true' WHERE [email]='"+uname+"';";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Dashboard.aspx?uname=" + Server.UrlEncode(uname));
        }
    }
}
