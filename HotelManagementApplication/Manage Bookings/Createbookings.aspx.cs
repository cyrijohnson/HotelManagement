using System;
using System.Collections.Generic;
using System.Linq;
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
	}
}