using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class AddCourse : System.Web.UI.Page
    {
        hacDataContext dc;
        protected void Page_Load(object sender, EventArgs e)
        {
            dc = Connection.getdatacontext();

  
            Div2.Visible = false;
            Div3.Visible = false;
            Div4.Visible = false;
            Div5.Visible = false;
            Div6.Visible = false;
            Div7.Visible = false;

        }


        protected void Approve_Click(object sender, EventArgs e)
        {
            var User = (from s in dc.Courses
                        where s.CourseID == int.Parse(CourseIDText.Text)
                        select s).FirstOrDefault();
            if (User != null)
            {


                Div2.Visible = true;
                Div3.Visible = true;
                Div4.Visible = true;
                Div5.Visible = true;
                Div6.Visible = true;
                Div7.Visible = true;

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "שגיאת פרטים", "alert(\"לא קיים מזהה קורס עם מספר זה\");", true);
            }
        }
    }
}