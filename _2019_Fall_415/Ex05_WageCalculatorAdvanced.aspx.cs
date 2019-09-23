using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class Ex05_WageCalculatorAdvanced : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            lbl_WageCount.Text = "0";
            lbl_TotalWages.Text = "0";
            lbl_TotalDeducted.Text = "0";
            lbl_TotalTakeHome.Text = "0";
        }
    }

    protected void btn_Calculate_Click(object sender, EventArgs e)
    {

        int intWageCount = Convert.ToInt16(lbl_WageCount.Text);
        intWageCount++;
        lbl_WageCount.Text = intWageCount.ToString();
        decimal decWage = Convert.ToDecimal(txt_Wage.Text);
        decimal decTaxRate = 0;
        decimal decTotalWages = 0m;
        

      
        decTotalWages = Convert.ToDecimal(lbl_TotalWages.Text.Trim('$'));

    
        // decimal decTotalWages = decimal.Parse(lbl_TotalWages.Text,NumberStyles.Any);


        decimal decTotalDeducted = decimal.Parse(lbl_TotalDeducted.Text,NumberStyles.Any);
        decimal decTotalTakeHome = decimal.Parse(lbl_TotalTakeHome.Text,NumberStyles.Any);


        if (decWage < 50000)
        {

            decTaxRate = .15m;

        }


        else if (decWage >= 50000 && decWage < 100000)
        {
            decTaxRate = .25m;


        }
        else
        {
            decTaxRate = .35m;

        }

        decimal decAmountDeducted = decWage * decTaxRate;
        decimal decTakeHomePay = decWage - decAmountDeducted;


        decTotalWages = decWage + decTotalWages;
        decTotalDeducted = decAmountDeducted + decTotalDeducted;
        decTotalTakeHome = decTakeHomePay + decTotalTakeHome;



        lbl_TaxRate.Text = decTaxRate.ToString("p");
        lbl_AmountDeducted.Text = decAmountDeducted.ToString("c");
        lbl_TakeHomePay.Text = decTakeHomePay.ToString("c");

        lbl_TotalWages.Text = decTotalWages.ToString("c");
        lbl_TotalDeducted.Text = decTotalDeducted.ToString("c");
        lbl_TotalTakeHome.Text = decTotalTakeHome.ToString("c");


    }

    protected void btn_Clear_Click(object sender, EventArgs e)
    {
        txt_Wage.Text = "0";
        lbl_TaxRate.Text = "0";
        lbl_AmountDeducted.Text = "0";
        lbl_TakeHomePay.Text = "0";
        lbl_TotalWages.Text = "0";
        lbl_TotalDeducted.Text = "0";
        lbl_TotalTakeHome.Text = "0";
        lbl_WageCount.Text = "0";

    }
}