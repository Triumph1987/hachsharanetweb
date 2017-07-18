using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class MatchingQuestionsDB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Goback_Click(object sender, EventArgs e)
        {
            Response.Redirect("MatchingQuestions.aspx");
        }
    }
}