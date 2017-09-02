using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class Login : System.Web.UI.Page
    {
        hacDataContext dc;
        protected void Page_Load(object sender, EventArgs e)
        {
            dc = Connection.getdatacontext();

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            var User = (from s in dc.Users
                        where s.UserName == username.Text
                        && s.Password == password.Text
                        select s).FirstOrDefault();
            if (User != null)
            {
                Session["UserName"] = User.FirstName.ToString();
                Session["Institute"] = User.InstituteID.ToString();
                Session["UserType"] = User.Type.ToString();
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "שגיאת פרטים", "alert(\"הפרטים אינם נכונים\");", true);
            }
        }
    }
}