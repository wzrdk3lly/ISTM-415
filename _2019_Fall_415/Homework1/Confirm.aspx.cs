using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homework1_Confirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            TextBox txtsalespricepage1 = (TextBox)PreviousPage.FindControl("txt_salesprice");

            lbl_SalesPrice.Text = txtsalespricepage1.Text;

            //lbl_SalesPrice.Text = ((TextBox)PreviousPage.FindControl("txt_SalesPrice")).Text;


            Label lblDiscountAmount = (Label)PreviousPage.FindControl("lbl_DiscountAmount");

            lbl_DiscountAmount.Text = lblDiscountAmount.Text;

            Label lblTotalPrice = (Label)PreviousPage.FindControl("lbl_TotalPrice");
            lbl_TotalPrice.Text = lblTotalPrice.Text;


            decimal SalesPriceCurrency = Convert.ToDecimal(lbl_SalesPrice.Text);
            lbl_SalesPrice.Text = SalesPriceCurrency.ToString("c");

            
        }
       

        

        
        
    }

    protected void btn_Return_Click(object sender, EventArgs e)
    {

    }

    protected void btn_SendQuotation_Click(object sender, EventArgs e)
    {

        Response.Write("<script>alert('" + "Function not available" + "')</script>");
    }
}