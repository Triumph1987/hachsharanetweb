﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace hachsharanetweb
{
    public partial class SearchCourses : System.Web.UI.Page
    {
        hacDataContext dc;
        protected void Page_Load(object sender, EventArgs e)
        {
            dc = Connection.getdatacontext();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            // Open the connection 
            using (SqlConnection cnn = new SqlConnection(Connection.ConnectionString))
            {
                cnn.Open();

                // Define the command 
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "SearchCourses";
                    int parsedValue;
                    if (int.TryParse(TextBox1.Text, out parsedValue))
                    {
                        cmd.Parameters.Add("@CourseID", SqlDbType.Int).Value = parsedValue;
                    }
                    cmd.Parameters.Add("@CourseName", SqlDbType.NVarChar).Value = '%' + TextBox1.Text + '%';
                 //   con.Open();
                 //   GridView2.EmptyDataText = "No Records Found";
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();

                    // Define the data adapter and fill the dataset 
                    //using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    //{
                    //    da.Fill(dt);
                    //}
                }
            }

            // This is the key code; you can set the DataSource to "collection"
            //GridView2.DataSource = dt.DefaultView;
            //GridView2.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "AddToCart")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GridView1.Rows[index];

                Session["CourseNum"] = row.Cells[0].ToString();
                Response.Redirect("AddCourse.aspx");
            }

        }

        


    }
}