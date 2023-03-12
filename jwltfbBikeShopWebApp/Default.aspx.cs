using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jwltfbBikeShopWebApp
{
    public partial class _Default : Page  : System.Web.UI.Page
    {
       
            protected void Page_Load(object sender, EventArgs e)
            {
                var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["DBConnection"];

                using (SqlConnection dbConnection = new SqlConnection(connectionFromConfiguration.ConnectionString))
                {
                    try
                    {
                        dbConnection.Open();
                         bikeshopeIn.Text = "Connection successful.";
                        try
                        {
                            SqlCommand command = new SqlCommand("SELECT * FROM jwltbfBikeShop", dbConnection);
                            SqlDataReader reader = command.ExecuteReader();
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                            bikeShopOut.Text += string.Format("<li>\"{0}\"\"{2}\"\"{3}\"\"{4}\"\"{5}</li>", reader.GetString(5), reader.GetString(4) reader.GetString(3) reader.GetString(2), reader.GetString(1), reader.GetString(0)));
                                }
                            }
                        }
                        catch (SqlException ex)
                        {
                    bikeShopOut.Text = "<li> Select Command Failed:" + ex.Message + "</li>";
                        }
                    }
                    catch (SqlException ex)
                    {
                bikeshopeIn.Text = "Connection failed: " + ex.Message;
                    }
                    finally
                    {
                        dbConnection.Close();
                        dbConnection.Dispose();
                    }

                }
            }
 
    ///Working
    protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said your name was {0} you email address was {1}, your age is {2}, and your favorite color {3}",
                txtName.Text, txtEmail.Text, txtAge.Text, ddlColor.SelectedValue);
           
        }
        protected void orderComplete_Click(object sender, EventArgs e)
        {
            string message = string.Format("{0},  {1},  {2}, {3}, {4}, {5},  {6}, {7}",
                ddlPlaceOrder.SelectedValue, ddlStorePulldown.SelectedValue, disCount.Text, firstName.Text, lastName.Text, ddlBikeName.SelectedValue, ddlQty.SelectedValue, ddlStoreName.SelectedValue);

        }
        protected void addStaff_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said your name was {0}",
             addStaff.Text);

        }
        protected void addChangeManager_Click(object sender, EventArgs e)
        {

            string message = string.Format("You said your name was {0}",
             addChangeManager.Text);

        }
        protected void addCustomer_Click(object sender, EventArgs e)
        {

            string message = string.Format("You said your name was {0}",
            addCustomer.Text);
        }
        protected void addInventoryToStores_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said your name was {0}",
           addInventoryToStores.Text);
        }
        protected void addStore_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said your name was {0}",
            addStore.Text);

        }
        protected void addBikeName_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said your name was {0}",
            addBikeName.Text);
            
        }
        protected void addBikeCost_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said your name was {0}",
            addBikeCost.Text);

        }
        protected void addBikeBrand_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said your name was {0}",
            addBikeBrand.Text);

        }
     

    }
}


// protected void Page_Load(object sender, EventArgs e)
//{

//}



//public partial class DBConnectionExample
//{