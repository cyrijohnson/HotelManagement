using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagementApplication
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)

        {



            Calendar1.Visible = true;



        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToLongDateString();

            Calendar1.Visible = false;
        }
    }
}