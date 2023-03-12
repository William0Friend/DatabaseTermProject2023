using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jwltfbBikeShopWebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said your name was {0} you email address was {1}, your age is {2}, and your favorite color {3}",
                txtName.Text, txtEmail.Text, txtAge.Text, ddlColor.SelectedValue);
            ltMessage.Text = message;
        }
    }
}