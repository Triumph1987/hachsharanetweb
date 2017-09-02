using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace hachsharanetweb
{
    public partial class DoreshReceive : System.Web.UI.Page
    {
        hacDataContext dc;
        protected void Page_Load(object sender, EventArgs e)
        {
            dc = Connection.getdatacontext();
            AfterData.Visible = false;
        }

        protected void Approve_Click(object sender, EventArgs e)
        {
            try
            {
                var JobS = (from s in dc.JobSeekers
                               where s.ID == int.Parse(IDText.Text)
                               select s).FirstOrDefault();
                if (JobS != null)
                {


                    AfterData.Visible = true;
                    FirstnameText.Text = JobS.FirstName;
                    LastnameText.Text = JobS.LastName;
                    StreetNumText.Text = JobS.StreetNum.ToString();
                    StreetText.Text = JobS.Street;
                    CityText.Text = JobS.City;
                    GenderText.Text = JobS.Gender;
                    BirthDateText.Text =JobS.DateOfBirth.Value.ToString();
                    DistrictText.Text = JobS.District;
                    CourseRefuseText.Text = JobS.RefusedCourse.ToString();
                    Session["DoreshName"] = JobS.FirstName + "" + JobS.LastName;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ntmtch", "AddDoreshName();", true);


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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IDText.Text != null) { 
            
            Session["JID"] = IDText.Text;
                Response.Redirect("JobSeekersAnswer.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
        protected void Button4_Click(object sender, EventArgs e)
        {

        }

    }
}