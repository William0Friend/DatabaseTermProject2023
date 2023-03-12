using System;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jwltfbBikeShopWebApp
{
    public partial class DBCpnnectionExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["DBConnection"];

            using(SqlConnection dbConnection = new SqlConnection(connectionFromConfiguration.ConnectionString))
            {
                try
                {
                    dbConnection.Open();
                    ltConnectionMessage.Text = "Connection successful.";
                    try
                    {
                        SqlCommand command = new SqlCommand("SELECT name, hex FROM Color", dbConnection);
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while(reader.Read())
                            {
                                ltOutput.Text += string.Format("<li style=\"color:#{0};\">{1}</li>", reader.GetString(1), reader.GetString(0));
                            }
                        }
                    }
                    catch (SqlException ex)
                    { 
                        ltOutput.Text = "<li> Select Command Failed:" + ex.Message + "</li>";
                    }
                }
                catch (SqlException ex)
                {
                    ltConnectionMessage.Text = "Connection failed: " + ex.Message;
                }
                finally
                {
                    dbConnection.Close();
                    dbConnection.Dispose();
                }

            }
        }
    }
}