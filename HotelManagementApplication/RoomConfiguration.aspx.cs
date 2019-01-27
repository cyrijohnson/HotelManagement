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
    public partial class RoomConfiguration : System.Web.UI.Page
    {
        string uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            string param = Request.QueryString["uname"];
            // uname = param.Substring(0, (param.Length));
            uname = "cyril39999@gmail.com";
            try
            {
                
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf; Integrated Security = True");
                SqlCommand cmd = new SqlCommand("select username,cstatus from LOGINDAT where email='" + uname + "';", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                alttext.Text = "Lets answer a few quick questions to get you set up.";
            }
            catch
            {
                alttext.Text = "Error occured!!! Please try again later";
            }
        }
    }
}