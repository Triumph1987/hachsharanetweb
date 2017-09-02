using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class General : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Metpal.Visible = false;
            if (!this.IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    this.showname.Text = string.Format(Session["UserName"].ToString());
                    if (Session["UserType"].ToString() == "מוסד")
                    {
                        NotMossad1.Visible = false;
                        AdminOnly.Visible = false;

                    }
                    if (Session["UserType"].ToString() == "יועץ")
                    {
                        AdminOnly.Visible = false;
                        Mossad.Visible = false;
                    }
                    
                }
            }
        }

        public void AddDoreshName()
        {
            if (Session["DoreshName"] != null)
            {

                Metpal.Visible = true;
                this.FullName.Text = string.Format(Session["DoreshName"].ToString());
            }
        }
        
    }
}