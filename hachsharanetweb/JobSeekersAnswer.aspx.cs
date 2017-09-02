using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        hacDataContext dc;

        protected void Page_Load(object sender, EventArgs e)
        {
            dc = Connection.getdatacontext();
            if (Session["JID"] != null)
            {

                IDText.Text = Session["JID"].ToString();
                Approve_Click(Approve, null);
                EnterDet.Visible = false;
            }
        }

        protected void Approve_Click(object sender, EventArgs e)
        {
            try
            {

                var JobS = (from s in dc.JobSeekers
                            where s.ID == int.Parse(IDText.Text)
                            select s).FirstOrDefault();
                var Questions = (from QItems in dc.MatchingQuestions
                                 select QItems).FirstOrDefault();


                if (JobS != null && Questions != null)
                {

                  
                    QuestionID.Text = Questions.qID.ToString();
                    QuestionText.Text = Questions.Question;

                    JobSFullnameText.Text = JobS.FirstName +" "+ JobS.LastName;
                    
               


                }
                else
                {

                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Error3();", true);
                }
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Error3();", true);
            }
        }

        protected void Clean_Click(object sender, EventArgs e)
        {

        }

        protected void QuestionID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SaveAndMove_Click(object sender, EventArgs e)
        {

        }

        protected void Previous_Click(object sender, EventArgs e)
        {

        }

        protected void CheckMatch_Click(object sender, EventArgs e)
        {
            Response.Redirect("HatamaResults.aspx");
        }
    }
}