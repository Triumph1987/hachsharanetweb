using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace hachsharanetweb
{
    public partial class AddSession : System.Web.UI.Page
    {
        hacDataContext dc;

        protected void Page_Load(object sender, EventArgs e)
        {
            dc = Connection.getdatacontext();

            Div1.Visible = false;
            Div2.Visible = false;
            Div3.Visible = false;
            Div4.Visible = false;
            Div5.Visible = false;
            Div6.Visible = false;
            Div7.Visible = false;
            Div8.Visible = false;
            Div9.Visible = false;
            Div10.Visible = false;
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
            try
            {
                var CourseD = (from s in dc.Courses
                               where s.CourseID == int.Parse(CourseIDText.Text)
                               select s).FirstOrDefault();
                if (CourseD != null)
                {

                    Div1.Visible = true;
                    Div2.Visible = true;
                    Div3.Visible = true;
                    Div4.Visible = true;
                    Div5.Visible = true;
                    Div6.Visible = true;
                    Div7.Visible = true;
                    Div8.Visible = true;
                    Div9.Visible = true;
                    Div10.Visible = true;
                    CourseIDText.ReadOnly = true;
                    CreateButton.Visible = true;
                    SearchAgain.Visible = true;
                    CourseNameText.Text = CourseD.CourseName;
                    SessionIDText.ReadOnly = true;
                    InsIDText.ReadOnly = true;
                    InsIDText.Text =CourseD.Institute.Name;

                    var SessionD = (from s in dc.CourseSessions
                                    where s.CourseID == int.Parse(CourseIDText.Text)
                                    orderby s.SessionID descending
                                    select s).FirstOrDefault();

                    if (SessionD == null)
                    {
                        SessionIDText.Text = 1.ToString();
                        
                    }
                    else
                    {
                        SessionIDText.Text = (SessionD.SessionID+1).ToString();
                    }


                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "שגיאת פרטים", "alert(\"לא קיים מזהה קורס עם מספר זה\");", true);
                }
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "שגיאת פרטים", "אנא הזן מספר קורס\");", true);
            }

        }

        protected void Clean_Click(object sender, EventArgs e)
        {
            Clean.Attributes.Add("onClick", "document.forms[0].reset();return false;");
            CourseIDText.Text = string.Empty;
            CourseIDText.ReadOnly = false;

        }

        protected void Create_Click(object sender, EventArgs e)
        {
            string cmdString = "INSERT INTO CourseSessions (CourseID,SessionID,StartDate,EndDate,SessionNAME,MaxNumOfParticipants,MinNumOfParticipants,District,SessionStatus) VALUES (@val1, @val2, @val3, @val4, @val5 ,@val6, @val7, @val8, @val9)";
            string connString = Connection.ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand comm = new SqlCommand(cmdString, conn))
                {
                   
                   // conn.Connectio n = conn;
                    //comm.CommandText = cmdString;
                    comm.Parameters.Add("@val1", SqlDbType.Int).Value = int.Parse(CourseIDText.Text);
                    comm.Parameters.Add("@val2", SqlDbType.Int).Value= int.Parse(SessionIDText.Text);
                    comm.Parameters.Add("@val3", SqlDbType.DateTime).Value = DateTime.Parse(StartDateText.Text);
                    comm.Parameters.Add("@val4", SqlDbType.DateTime).Value = DateTime.Parse(EndDateText.Text);
                    comm.Parameters.Add("@val5", SqlDbType.NVarChar).Value = SessionNameText.Text;
                    comm.Parameters.Add("@val6", SqlDbType.Int).Value = int.Parse(MaxParticipText.Text);
                    comm.Parameters.Add("@val7", SqlDbType.Int).Value = int.Parse(MinParticipText.Text);
                    comm.Parameters.Add("@val8", SqlDbType.NVarChar).Value = DistrictText.Text;
                    comm.Parameters.Add("@val9", SqlDbType.NVarChar).Value = SessionStatusText.Text;
                    try
                    {
                        conn.Open();
                        comm.ExecuteNonQuery();
                    }
                    catch (Exception)

                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "שגיאת פרטים", "אנא הזן מספר קורס\");", true);
                    }
                }
            }
        }
    }
    }
