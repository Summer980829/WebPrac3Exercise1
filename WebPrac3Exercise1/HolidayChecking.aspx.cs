using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrac3Exercise1
{
    public partial class HolidayChecking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if(IsPostBack == false)
            {
                lblWelcome.Text = "Thank you for using our service";
            }
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {

        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            calculatePrice();
        }

        private void calculatePrice()
        {
            if(ddlFrom.SelectedValue.Equals("KL") && ddlTo.SelectedValue.Equals("Japan"))
            {
                txtPrice.Text = "2400";
            }else if(ddlFrom.SelectedValue.Equals("KL") && ddlTo.SelectedValue.Equals("Auckland"))
            {
                txtPrice.Text = "2200";
            }else if(ddlFrom.SelectedValue.Equals("Penang") && ddlTo.SelectedValue.Equals("Japan"))
            {
                txtPrice.Text = "3400";
            }
            else
            {
                txtPrice.Text = "3200";
            }
        }
    }
}