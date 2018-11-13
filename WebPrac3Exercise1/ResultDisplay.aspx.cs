using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrac3Exercise1
{
    public partial class ResultDisplay : System.Web.UI.Page
    {
        int differences = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                lblWelcome.Text = "Happy Holiday from MOM Travel";
            }
            if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
            {
                DropDownList TravelFrom = PreviousPage.FindControl("ddlFrom") as DropDownList;
                DropDownList TravelTo = PreviousPage.FindControl("ddlTo") as DropDownList;
                TextBox BudgetInput = PreviousPage.FindControl("txtBudget") as TextBox;
                TextBox TravelPrice = PreviousPage.FindControl("txtPrice") as TextBox;

                lblMessage.Text = "You have selected to Travel from : " + TravelFrom.SelectedItem.Value + " to " + TravelTo.SelectedItem.Value + "<br/>" +
                    "Your Eligibility to go for the holiday : " + differencesPrice(BudgetInput, TravelPrice) + "<br/>" +
                    "Your budget given : RM " + BudgetInput.Text + "<br/>" + 
                    "Destination price : RM " + TravelPrice.Text + "<br/>" +
                    "Differences between budget and destination price : RM " + differences;

            }
        }

        private string differencesPrice(TextBox budget, TextBox price)
        {
            int budgetInput = int.Parse(budget.Text);
            int suggestPrice = int.Parse(price.Text);
            string result = "";

            if(budgetInput >= suggestPrice)
            {
                result = "Yes";
            }
            else
            {
                result = "No";
                
            }
            differences = budgetInput - suggestPrice;
            return result;
        }
    }
}