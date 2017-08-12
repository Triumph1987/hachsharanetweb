using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class QuestionsAnswersMosad : System.Web.UI.Page
    {
        hacDataContext dc;
        public Course theCourse = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            dc = Connection.getdatacontext();
            if (Session["Institute"]== null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session["Qnum"] = 1;

                var s = (from CourseNameItems in dc.Courses
                         where CourseNameItems.InstituteID == int.Parse(Session["Institute"].ToString())
                         select CourseNameItems);
                
              
                foreach (var d in s)
                {
                    CourseNameDD.Items.Add("בחר קורס");
                    CourseNameDD.Items.Add(d.CourseName);

                }
                var institueN= (from CourseNameItems in dc.Institutes
                                     where CourseNameItems.InstituteID == int.Parse(Session["Institute"].ToString())
                                     select CourseNameItems).FirstOrDefault();
                InsIDText.Text = institueN.Name;

                var Questions = (from QItems in dc.MatchingQuestions
                                 select QItems).FirstOrDefault();
                QuestionID.Text = Questions.qID.ToString();
                QuestionText.Text = Questions.Question;



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
            theCourse = (from c in dc.Courses where c.CourseName == CourseNameDD.Text && c.InstituteID == int.Parse(Session["Institute"].ToString()) select c).First();
            var HowManyAnswered = (from c in dc.CourseAnswers where c.CourseID == theCourse.CourseID select c).Count();
            var HowManyQuestions = (from c in dc.MatchingQuestions select c).Count();
            TextBox3.Text = (HowManyAnswered + 1).ToString() + "/" + (HowManyQuestions).ToString(); 
        }

        protected void SaveAndMove_Click(object sender, EventArgs e)
        {

            string cmdString = "INSERT INTO CourseAnswers (CourseID,QuestionID,Answer) VALUES (@val1, @val2, @val3)";
            string connString = Connection.ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand comm = new SqlCommand(cmdString, conn))
                {

                    // conn.Connectio n = conn;
                    //comm.CommandText = cmdString;
                    comm.Parameters.Add("@val1", SqlDbType.Int).Value = int.Parse(theCourse.CourseID.ToString());
                    comm.Parameters.Add("@val2", SqlDbType.Int).Value = int.Parse(QuestionID.Text);
                    comm.Parameters.Add("@val3", SqlDbType.Bit).Value = QuestionAnswer.Text;



                    try
                    {
                        var CourseExists = (from c in dc.CourseAnswers where c.CourseID == theCourse.CourseID && c.QuestionID == int.Parse(QuestionID.Text) select c).First();
                        if (CourseExists == null) {
                        conn.Open();
                        comm.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                        }
                        Session["Qnum"] = int.Parse(Session["Qnum"].ToString()) + 1;
                        var Questions = (from QItems in dc.MatchingQuestions
                                         orderby QItems.qID
                                         select QItems).ToArray();
                        if (Questions.Count() >= int.Parse(Session["Qnum"].ToString()))
                        {
                            QuestionID.Text = Questions[int.Parse(Session["Qnum"].ToString())-1].qID.ToString();
                            QuestionText.Text = Questions[int.Parse(Session["Qnum"].ToString())-1].Question;
                        }
                        else {

                            ScriptManager.RegisterStartupScript(this, GetType(), "שגיאת פרטים", "אין שאלות לענות\");", true);
                        }

                    }
                    catch (Exception)

                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "שגיאת פרטים", "אנא הזן מספר קורס\");", true);
                    }
                }
            }
        }

        protected void Previous_Click(object sender, EventArgs e)
        {
            Session["Qnum"] = int.Parse(Session["Qnum"].ToString()) - 1;
            if (int.Parse(Session["Qnum"].ToString()) > 0) { 
            var Questions = (from QItems in dc.MatchingQuestions
                             orderby QItems.qID
                             select QItems).ToArray();
            
                QuestionID.Text = Questions[int.Parse(Session["Qnum"].ToString())-1].qID.ToString();
                QuestionText.Text = Questions[int.Parse(Session["Qnum"].ToString())-1].Question;
            }
            else
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "שגיאת פרטים", "אין שאלות קודמות\");", true);
            }
           
        }
    }
}