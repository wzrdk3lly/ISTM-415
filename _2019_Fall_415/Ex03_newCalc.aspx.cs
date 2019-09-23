using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex03_newCalc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btn_Calculate_Click(object sender, EventArgs e)
    {
        decimal decWage = Convert.ToDecimal(txt_Wage.Text);
        decimal decTaxRate = .30m;
        decimal decAmountDeducted = decWage * decTaxRate;
        decimal decTakeHomePay = decWage - decAmountDeducted;

        lbl_TaxRate.Text = decTaxRate.ToString("p");
        lbl_AmountDeducted.Text = decAmountDeducted.ToString("c");
        lbl_TakeHomePay.Text = decTakeHomePay.ToString("c");
    }

    protected void btn_Clear_Click(object sender, EventArgs e)
    {
        lbl_TaxRate.Text = "";
        lbl_AmountDeducted.Text = "";
        lbl_TakeHomePay.Text = "";
    }
}