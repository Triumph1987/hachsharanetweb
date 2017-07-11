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
    public partial class MatchingQuestions : System.Web.UI.Page
    {
        hacDataContext dc;
        protected void Page_Load(object sender, EventArgs e)
        {
            dc = Connection.getdatacontext();
            var Questions = (from s in dc.MatchingQuestions
                            orderby s.qID descending
                            select s).FirstOrDefault();

            if (Questions == null)
            {
                QuestionID.Text = 1.ToString();

            }
            else
            {
                QuestionID.Text = (Questions.qID + 1).ToString();
            }
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            string cmdString = "INSERT INTO MatchingQuestions (qID,Question,QuestionType,QuestionRelevance) VALUES (@val1, @val2, @val3, @val4)";
            string connString = Connection.ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand comm = new SqlCommand(cmdString, conn))
                {

                    // conn.Connectio n = conn;
                    //comm.CommandText = cmdString;
                    comm.Parameters.Add("@val1", SqlDbType.Int).Value = int.Parse(QuestionID.Text);
                    comm.Parameters.Add("@val2", SqlDbType.NVarChar).Value = QuestionText.Text;
                    comm.Parameters.Add("@val3", SqlDbType.NVarChar).Value = QuestionTypeText.Text;
                    comm.Parameters.Add("@val4", SqlDbType.Bit).Value = ReleventQuestion.Text;
               
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

        protected void Clean_Click(object sender, EventArgs e)
        {

        }
    }
}