using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HotelManagementApplication
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void signupclick(object sender, EventArgs e)
        {
            string cstatus = "true";
            bool flag1, flag2, flag3, flag4;
            DateTime dob = Convert.ToDateTime("01-01-1999");
            string name = TextBox1.Text + " " + TextBox2.Text;
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {
                flag4 = true;
            }
            else
            {
                Label1.Text = "All fields are mandatory!!!";
                flag4 = false;
            }
            try
            {
                long ph = Convert.ToInt64(TextBox4.Text);

                if (TextBox4.Text.Length == 10)
                {
                    flag1 = true;
                }

                else
                {
                    flag1 = false;
                    Label2.Text = "Please enter a valid mobile number and DOB";
                }
            }
            catch (FormatException)
            {
                Label2.Text = "Please enter a valid mobile number and DOB";
                flag1 = false;
            }
            if (TextBox6.Text == TextBox7.Text)
            {
                flag2 = true;
            }
            else
            {
                flag2 = false;
                Label5.Text = "Both password fields must match";
            }
            if (TextBox3.Text != "")
            {
                flag3 = true;
            }
            else
            {
                flag3 = false;
                Label4.Text = "Please enter a valid E-mail id";
            }


            if (flag1 && flag2 && flag3 && flag4 && flag4)
            {

                {
                    SqlCommand cmd = new SqlCommand();
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandText = "INSERT INTO LOGINDAT(email,username,password,phone,dob,cstatus) VALUES('" + TextBox3.Text + "','" + name + "','" + TextBox6.Text + "','" + TextBox4.Text + "','" + dob + "','"+cstatus+"');";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("loginpage.aspx");
                }


            }
            else
            {

            }

        }
    }
}