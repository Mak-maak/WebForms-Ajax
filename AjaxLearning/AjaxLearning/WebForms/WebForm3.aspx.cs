using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace AjaxLearning.WebForms
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SelectedIndex_Changed(object sender, EventArgs e)
        {
            lblColor.Text = ddlColor.SelectedValue;
            lblColor.BackColor = Color.FromName(ddlColor.SelectedValue);
            scriptManager.AddHistoryPoint("SelectedColor", ddlColor.SelectedValue);
        }

        protected void ScriptManager_Navigate(object sender, HistoryEventArgs e)
        {
            string color = e.State["SelectedColor"];
            if (!String.IsNullOrEmpty(color))
            {
                lblColor.Text = color;
                lblColor.BackColor = Color.FromName(color);
            }
        }
    }
}