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
        string uname,tbkey;
        protected void Page_Load(object sender, EventArgs e)
        {
            string param = Request.QueryString["uname"];
            uname = param.Substring(0, (param.Length));
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");
            SqlCommand cmd2 = new SqlCommand("select usernamef,phone from LOGINDAT where email='" + uname + "';", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            tbkey = Convert.ToString(dt.Rows[0][0])+ Convert.ToString(dt.Rows[0][1]);
            // uname = "cyril39999@gmail.com";
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
            Tab4.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            Tab4.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
        }
        protected void Tab4_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Clicked";
            MainView.ActiveViewIndex = 3;
        


        }
        public void address_click(object sender,EventArgs e)
        {
            this.Tab2_Click(e,e);
        }
        public void adddata_click(object sender, EventArgs e)
        {
            string bookings = "flase", agoda = "flase", trivago = "flase", oyo = "flase";
            if (checkbox1.Checked)
            {
                bookings = "true";
            }
            if (checkbox2.Checked)
            {
                agoda = "true";
            }
            if (checkbox3.Checked)
            {
                trivago = "true";
            }
            if (checkbox4.Checked)
            {
                oyo = "true";
            }
            insertdb();
             void insertdb() {
                Random rand = new Random();
                long moreid=rand.Next(100000,999999);
                try {

                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand();
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandText = "INSERT INTO " + tb1.Text + "(email,assetname,careof,buildingnameno,streetname,locality,city,district,state,pincode," +
                  "totalrooms,bookings,agoda,trivago,oyorooms,moredetid) VALUES ('" + uname + "','" + tb1.Text + "','" + tb2.Text + "','" + tb3.Text + "','" + tb4.Text + "'" +
                        ",'" + tb5.Text + "','" + tb6.Text + "','" + tb7.Text + "','" + tb8.Text + "','" + tb9.Text + "','" + TextBox1.Text + "','" + bookings + "'" +
                        ",'" + agoda + "','" + trivago + "','" + oyo + "','"+moreid+"');";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    this.Tab3_Click(e, e);
                }
                catch
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");
                    SqlCommand createuttable = new SqlCommand();
                    con.Open();
                    createuttable.Connection = con;
                    createuttable.CommandText = "CREATE TABLE [dbo].["+tb1.Text+"] (" +
        "[email]          VARCHAR (50) NOT NULL," +
        "[assetname]      VARCHAR (50) NOT NULL," +
        "[careof]         VARCHAR (50) NULL," +
        "[buildingnameno] VARCHAR (50) NOT NULL," +
        "[streetname]     VARCHAR (50) NULL," +
        "[locality]       VARCHAR (50) NULL," +
        "[city]           VARCHAR (50) NOT NULL," +
        "[district]       VARCHAR (50) NOT NULL," +
        "[state]          VARCHAR (50) NOT NULL," +
        "[pincode]        VARCHAR (50) NOT NULL," +
        "[totalrooms]     VARCHAR (50) NOT NULL," +
        "[bookings]       VARCHAR (50) NOT NULL," +
        "[agoda]          VARCHAR (50) NOT NULL," +
        "[trivago]        VARCHAR (50) NOT NULL," +
        "[oyorooms]       VARCHAR (50) NOT NULL," +
        "[moredetid] VARCHAR(50) NULL, " +
        "PRIMARY KEY CLUSTERED ([email] ASC));";
                    createuttable.ExecuteNonQuery();
                    con.Close();
                    insertdb();
                }
            }
            }
        

        public void complete_click(object sender,EventArgs e)
        {

            int count=0;
            int keeper;
           
                if (Cat1.Text != "" && Catno1.Text != "")
                {
                    try
                    {
                        keeper = Convert.ToInt16(Catno1.Text);
                        count++;
                    }
                    catch
                    {
                    Tableerr.Text = "*****Enter the categories in the appropriate format*****";
                    }
                }
            if (Cat2.Text != "" && Catno2.Text != "")
            {
                try
                {
                    keeper = Convert.ToInt16(Catno2.Text);
                    count++;
                }
                catch
                {
                    Tableerr.Text = "*****Enter the categories in the appropriate format*****";
                }
            }
            if (Cat3.Text != "" && Catno3.Text != "")
            {
                try
                {
                    keeper = Convert.ToInt16(Catno3.Text);
                    count++;
                }
                catch
                {
                    Tableerr.Text = "*****Enter the categories in the appropriate format*****";
                }
            }
            if (Cat4.Text != "" && Catno4.Text != "")
            {
                try
                {
                    keeper = Convert.ToInt16(Catno4.Text);
                    count++;
                }
                catch
                {
                    Tableerr.Text = "*****Enter the categories in the appropriate format*****";
                }
            }
            if (Cat5.Text != "" && Catno5.Text != "")
            {
                try
                {
                    keeper = Convert.ToInt16(Catno5.Text);
                    count++;
                }
                catch
                {
                    Tableerr.Text = "*****Enter the categories in the appropriate format*****";
                }

            }
            if (Cat6.Text != "" && Catno6.Text != "")
            {
                try
                {
                    keeper = Convert.ToInt16(Catno6.Text);
                    count++;
                }
                catch
                {
                    Tableerr.Text = "*****Enter the categories in the appropriate format*****";
                }
            }
            if (Cat7.Text != "" && Catno7.Text != "")
            {
                try
                {
                    keeper = Convert.ToInt16(Catno7.Text);
                    count++;
                }
                catch
                {
                    Tableerr.Text = "*****Enter the categories in the appropriate format*****";
                }
            }
            if (Cat8.Text != "" && Catno8.Text != "")
            {
                try
                {
                    keeper = Convert.ToInt16(Catno8.Text);
                    count++;
                }
                catch
                {
                    Tableerr.Text = "*****Enter the categories in the appropriate format*****";
                }
            }

           SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");
           SqlCommand cmd = new SqlCommand();
           SqlCommand cmd2 = new SqlCommand("select assetname,moredetid from " +tb1.Text+" where email='" + uname + "';", con);
           SqlDataAdapter sda = new SqlDataAdapter(cmd2);
           DataTable dt = new DataTable();
           sda.Fill(dt);
            string tblname = Convert.ToString(dt.Rows[0][0])+ Convert.ToString(dt.Rows[0][1]);
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "CREATE TABLE [dbo].["+tblname+"] ( [email]          VARCHAR(50) NOT NULL," +
                "[totalrooms]     VARCHAR(50) NOT NULL," +
                "[category1]      VARCHAR(50) NOT NULL," +
                "[category2]      VARCHAR(50) NOT NULL," +
                "[category3]      VARCHAR(50) NOT NULL," +
                "[category4]      VARCHAR(50) NOT NULL," +
                "[category5]      VARCHAR(50) NOT NULL," +
                "[category6]      VARCHAR(50) NOT NULL," +
                "[category7]      VARCHAR(50) NOT NULL," +
                "[category8]      VARCHAR(50) NOT NULL," +
                "[categoryrooms1]      VARCHAR(50) NOT NULL," +
                "[categoryrooms2]      VARCHAR(50) NOT NULL," +
                "[categoryrooms3]      VARCHAR(50) NOT NULL," +
                "[categoryrooms4]      VARCHAR(50) NOT NULL," +
                "[categoryrooms5]      VARCHAR(50) NOT NULL," +
                "[categoryrooms6]      VARCHAR(50) NOT NULL," +
                "[categoryrooms7]      VARCHAR(50) NOT NULL," +
                "[categoryrooms8]      VARCHAR(50) NOT NULL," +
                "[totcategories]      VARCHAR(50) NOT NULL," +
                "PRIMARY KEY CLUSTERED([email] ASC));";
            cmd.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand();
            cmd3.Connection = con;
            cmd3.CommandText = "INSERT INTO " + tblname + "(email,totalrooms,category1,category2,category3,category4,category5," +
                "category6,category7,category8,categoryrooms1,categoryrooms2,categoryrooms3" +
                ",categoryrooms4,categoryrooms5,categoryrooms6,categoryrooms7," +
                "categoryrooms8,totcategories)VALUES('" + uname+"','"+TextBox2.Text+"','"+Cat1.Text+"','"+Cat2.Text+"','"+Cat3.Text+"'," +
                "'"+Cat4.Text+"','"+Cat5.Text+"','"+Cat6.Text+"','"+Cat7.Text+"','"+Cat8.Text+"','"+Catno1.Text+"'," +
                "'"+ Catno2.Text+ "','"+ Catno3.Text + "','"+ Catno4.Text + "','"+ Catno5.Text+ "','"+ Catno6.Text + "','"+ Catno7.Text+ "'," +
                "'"+ Catno8.Text + "'," +"'"+count+"');";
            cmd3.ExecuteNonQuery();
            SqlCommand incasset = new SqlCommand("SELECT noofassets FROM LOGINDAT WHERE email='"+uname+"'");
            incasset.Connection = con;
            SqlDataAdapter asetinc = new SqlDataAdapter(incasset);
            DataTable noofasset = new DataTable();
            asetinc.Fill(noofasset);
            int num = Convert.ToInt16(noofasset.Rows[0][0]) + 1;
            SqlCommand updatenumofassets = new SqlCommand("UPDATE LOGINDAT SET noofassets='"+num+"' WHERE email='"+uname+"'");
            updatenumofassets.Connection = con;
            updatenumofassets.ExecuteNonQuery();
            SqlCommand cmd5 = new SqlCommand("UPDATE LOGINDAT SET cstatus='" + true + "' WHERE email='" + uname + "';", con);
            cmd5.Connection = con;
            cmd5.ExecuteNonQuery();
            con.Close();
            this.Tab4_Click(sender,e);
        }
       
    }
    
}
