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
    public partial class loginpage : System.Web.UI.Page
    {
        static string gmail="";
        protected void Page_Load(object sender, EventArgs e)
        {
            gmail = trans.Value;
        }
        public void loginclick(object sender, EventArgs e)
        {
            
            string uname = Textbox1.Text;
            string pw = Textbox2.Text;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM LOGINDAT WHERE email='"+uname+"' and password='"+pw+"';",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            if(dt.Rows.Count==0)
            {
                Label1.Text = "The Username or password you entered was incorrect please try again";
            }
            else
            {
                Response.Redirect("Dashboard.aspx?uname=" + Server.UrlEncode(Textbox1.Text));
            }

        }
        public static string ProcessIT(string name, string address)
        {
            string result = "Welcome Mr. " + name + ". Your address is '" + address + "'.";
            return result;
        }

    }
}