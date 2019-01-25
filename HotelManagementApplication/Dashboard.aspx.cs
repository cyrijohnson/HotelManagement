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
    public partial class Dashboard : System.Web.UI.Page
    {
        string uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            uname = Request.QueryString["uname"];
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf; Integrated Security = True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            SqlDataAdapter da= new SqlDataAdapter("select username from LOGINDAT where email='"+uname+"';", con); 
            DataTable dt = new DataTable();
            
            da.Fill(dt);
            label1.Text = Convert.ToString(dt.Rows[0]);
        }
        public void isoft_click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }
    }
}