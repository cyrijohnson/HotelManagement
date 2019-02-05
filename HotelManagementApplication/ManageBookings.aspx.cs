using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagementApplication
{
    public partial class ManageBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Create_bookings(object sender, EventArgs e)
        {
            Response.Redirect("loginpage.aspx");
        }
        public void Check_out(object sender, EventArgs e)
        {

        }
        public void View_recent_bookings(object sender, EventArgs e)
        {

        }
        public void View_upcoming_bookings(object sender, EventArgs e)
        {

        }
    }
}