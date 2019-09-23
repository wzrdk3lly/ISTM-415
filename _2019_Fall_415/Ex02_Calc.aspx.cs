using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex02_Calc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_calculate_Click(object sender, EventArgs e)
    {
        decimal decWage = Convert.ToDecimal(txt_wage.Text);
        decimal decTaxRate = 0.30m;
        decimal decAmountDeducted = decWage * decTaxRate;
        decimal decTakeHome = decWage - decAmountDeducted;

        lbl_TaxRate.Text = decTaxRate.ToString("p");
        lbl_AmountDeducted.Text = decAmountDeducted.ToString("c");
        lbl_TakeHome.Text = decTakeHome.ToString("c");


    }
}