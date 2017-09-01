using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            circle.Visible = false;
            Results.Visible = false;
        }

        protected void Approve_Click(object sender, EventArgs e)
        {
            circle.Visible = true;
            Approve.Visible = false;
            Results.Visible = true;
        }

        protected void Results_Click(object sender, EventArgs e)
        {
            Response.Redirect("Resultshatamarep.aspx");
        }
        }
}