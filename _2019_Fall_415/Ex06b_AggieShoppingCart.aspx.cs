using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex06b_AggieShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList ddlNumberTicketsPage2 = (DropDownList)PreviousPage.FindControl("ddlNumberTicketsPage1");
        lbl_NumberTickets.Text = ddlNumberTicketsPage2.SelectedValue.ToString();

        Label txtTotalAmount = (Label)PreviousPage.FindControl("lbl_TotalCost");
        lbl_TotalAmount.Text = txtTotalAmount.Text;
    }
}