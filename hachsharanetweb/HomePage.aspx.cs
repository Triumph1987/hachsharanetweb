﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Metam.Visible = false;
            if (Session["UserType"].ToString() == "יועץ")
            {
                Metam.Visible = true;
            }
        }
    }
}