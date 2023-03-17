using System;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace jwltfbBikeShopWebApp
{
    public partial class _Default : Page  
    {
       
            protected void Page_Load(object sender, EventArgs e)
            {
            
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