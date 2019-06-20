using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxLearning.WebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            lbl.Text = "See the Magic! Asp.Net Ajax in Action..\n The current date in Pakistan is " + DateTime.Now.ToLongDateString() + "\n The current time in Pakistan is " + DateTime.Now.ToLongTimeString();
        }
    }
}