using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HotelManagementApplication.Manage_Bookings
{
	public partial class Create_Bookings : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            DateTime dateTime = DateTime.UtcNow.Date;
            indate.Text = dateTime.ToString("dd/MM/yyyy");
            intime.Text=DateTime.Now.ToString("HH:mm:ss");
            

        }
        protected void upload_passport(object sender, EventArgs e)
        {
            
        }
        protected void btnsave_Clickpassport(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            if (FileUpload1.HasFile)
            {
                try
                {
                    sb.AppendFormat(" Uploading file: {0}", FileUpload1.FileName);

                    //saving the file
                    FileUpload1.SaveAs("<c:\\SaveDirectory>" + FileUpload1.FileName);

                    //Showing the file information
                    sb.AppendFormat("<br/> Save As: {0}", FileUpload1.PostedFile.FileName);
                    sb.AppendFormat("<br/> File type: {0}", FileUpload1.PostedFile.ContentType);
                    sb.AppendFormat("<br/> File length: {0}", FileUpload1.PostedFile.ContentLength);
                    sb.AppendFormat("<br/> File name: {0}", FileUpload1.PostedFile.FileName);

                }
                catch (Exception ex)
                {
                    sb.Append("<br/> Error <br/>");
                    sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
                }
            }
            else
            {
                lblmessage.Text = sb.ToString();
            }
        }
        protected void btnsave_Clickaadhar(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            if (FileUpload2.HasFile)
            {
                try
                {
                    sb.AppendFormat(" Uploading file: {0}", FileUpload2.FileName);

                    //saving the file
                    FileUpload2.SaveAs("<c:\\SaveDirectory>" + FileUpload2.FileName);

                    //Showing the file information
                    sb.AppendFormat("<br/> Save As: {0}", FileUpload2.PostedFile.FileName);
                    sb.AppendFormat("<br/> File type: {0}", FileUpload2.PostedFile.ContentType);
                    sb.AppendFormat("<br/> File length: {0}", FileUpload2.PostedFile.ContentLength);
                    sb.AppendFormat("<br/> File name: {0}", FileUpload2.PostedFile.FileName);

                }
                catch (Exception ex)
                {
                    sb.Append("<br/> Error <br/>");
                    sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
                }
            }
            else
            {
                Label1.Text = sb.ToString();
            }
        }
        protected void btnsave_Clickother(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            if (FileUpload3.HasFile)
            {
                try
                {
                    sb.AppendFormat(" Uploading file: {0}", FileUpload3.FileName);

                    //saving the file
                    FileUpload1.SaveAs("<c:\\SaveDirectory>" + FileUpload3.FileName);

                    //Showing the file information
                    sb.AppendFormat("<br/> Save As: {0}", FileUpload3.PostedFile.FileName);
                    sb.AppendFormat("<br/> File type: {0}", FileUpload3.PostedFile.ContentType);
                    sb.AppendFormat("<br/> File length: {0}", FileUpload3.PostedFile.ContentLength);
                    sb.AppendFormat("<br/> File name: {0}", FileUpload3.PostedFile.FileName);

                }
                catch (Exception ex)
                {
                    sb.Append("<br/> Error <br/>");
                    sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
                }
            }
            else
            {
                Label2.Text = sb.ToString();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            checkoutdate.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
            Calendar1.Visible = false;
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }
        protected void Calendar2_SelectionChanged1(object sender, EventArgs e)
        {
            indate.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
            Calendar2.Visible = false;
        }
        public void Create_Bookings_click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Cyril Johnson\Source\Repos\HotelManagement\HotelManagementApplication\App_Data\SignUpDB.mdf;Integrated Security=True");            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO checkinform(SL,FirstName,LastName,Roomno,NumberofOccupants,Numberofchildren,flatno,StreetName,City,District,State," +
                "Nationality,Pincode,Passport,Aadhar,Otherdocname,otherdoc,Checkindatetime) VALUES()";
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}