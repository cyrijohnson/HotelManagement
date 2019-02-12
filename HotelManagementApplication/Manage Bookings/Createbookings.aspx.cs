using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}