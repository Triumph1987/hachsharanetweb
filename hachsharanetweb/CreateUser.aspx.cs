using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hachsharanetweb
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Items.Add(new ListItem("מנהל מערכת", "Value 2"));
            DropDownList1.Items.Add(new ListItem("מנהל מטה", "Value 3"));
            DropDownList1.Items.Add(new ListItem("יועץ תעסוקה", "Value 4"));
            DropDownList1.Items.Add(new ListItem("מוסדות הכשרה", "Value 5"));
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }
    }
}