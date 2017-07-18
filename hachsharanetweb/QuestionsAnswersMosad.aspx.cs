using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class QuestionsAnswersMosad : System.Web.UI.Page
    {
        hacDataContext dc;

        protected void Page_Load(object sender, EventArgs e)
        {
            dc = Connection.getdatacontext();
            if (Session["Institute"]== null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                var s = (from CourseNameItems in dc.Courses
                         where CourseNameItems.InstituteID == int.Parse(Session["Institue"].ToString())
                         select CourseNameItems);
                foreach (var d in s)
                {
                    CourseNameDD.Items.Add(d.CourseName);

                }
            }
           
                
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void QuestionID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CourseNameDD_SelectedIndexChanged(object sender, EventArgs e)
        {
            var theCourse = (from c in dc.Courses where c.CourseName == CourseNameDD.Text && c.InstituteID == int.Parse(Session["Institue"].ToString()) select c).First();
            var HowManyAnswered = (from c in dc.CourseAnswers where c.CourseID == theCourse.CourseID select c).Count();
            var HowManyQuestions = (from c in dc.MatchingQuestions select c).Count();
            TextBox3.Text = (HowManyAnswered + 1).ToString() + "/" + (HowManyQuestions).ToString(); 
        }
    }
}