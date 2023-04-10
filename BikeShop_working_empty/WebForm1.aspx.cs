using System;
using System.Web;
using System.Linq;
using System.Data;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace BikeShop_working_empty
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into utbl values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Label1.Text = "Data has been inserted into db";
            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}