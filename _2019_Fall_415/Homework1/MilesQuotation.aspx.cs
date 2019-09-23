using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homework1_MilesQuotation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if(!IsPostBack)
        {
  
            lbl_DiscountAmount.Text = "";
            lbl_TotalPrice.Text = "";
        }
    }

    protected void btn_calculate_Click(object sender, EventArgs e)
    {
      
        //calculates total price when user enters discount percent and sales price
            decimal decSalesPrice = Convert.ToDecimal(txt_SalesPrice.Text);
           
            decimal decDiscountPercent = decimal.Parse(txt_DiscountPercent.Text, System.Globalization.NumberStyles.Any);
            decimal decDiscountAmount = decSalesPrice * (decDiscountPercent * .01m);
            decimal decTotalPrice = decSalesPrice - decDiscountAmount;

            lbl_DiscountAmount.Text = decDiscountAmount.ToString("c");
            lbl_TotalPrice.Text = decTotalPrice.ToString("c");

          
       
    }

    protected void txt_SalesPrice_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        
    }
}