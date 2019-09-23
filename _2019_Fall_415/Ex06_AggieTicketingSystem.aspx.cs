using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex06_AggieTicketingSystem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 1; i <= 9; i++)
                ddlNumberTicketsPage1.Items.Add(i.ToString());
        }
    }

    protected void btn_Confirm_Click(object sender, EventArgs e)
    {

    }

    protected void btn_calculate_Click(object sender, EventArgs e)
    {
        decimal decTotalCost = Convert.ToDecimal(ddlNumberTicketsPage1.SelectedValue) * 50.0m;
        lbl_TotalCost.Text = decTotalCost.ToString("c");
    }
}