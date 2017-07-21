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
            Div5.Visible = false;
            Div6.Visible = false;
            Div7.Visible = false;
            CreateButton.Visible = false;
            SearchAgain.Visible = false;  
            if (Session["CourseNum"] != null)
            {
                CourseIDText.Text = Session["CourseNum"].ToString();
                Approve_Click(Approve, EventArgs.Empty);
            }
                    
                     

        }


        protected void Approve_Click(object sender, EventArgs e)
        {
            try {
                var CourseD = (from s in dc.Courses
                               where s.CourseID == int.Parse(CourseIDText.Text)
                               select s).FirstOrDefault();
                if (CourseD != null)
                {


                    Div2.Visible = true;
                    Div3.Visible = true;
                    Div5.Visible = true;
                    Div6.Visible = true;
                    Div7.Visible = true;
                    CourseIDText.ReadOnly = true;
                    CreateButton.Visible = true;
                    SearchAgain.Visible = true;
                    CourseNameText.Text =  CourseD.CourseName;
                    SourceText.Text = CourseD.Source;
                    FirstNameText.Text = CourseD.ManagerFirstName;
                    LastNameText.Text = CourseD.ManagerLastName;
                    InstitueIDText.Text = CourseD.Institute.Name;




                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Error1();", true);
                }
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Error1();", true);
            }
            
        }

        protected void Clean_Click(object sender, EventArgs e)
        {
            //    CourseIDText.Text = string.Empty;
            //CourseIDText.ReadOnly = false;
            Response.Redirect("SearchCourses.aspx");


        }

       

    }
}