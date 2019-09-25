using System;
using System.Web.UI.WebControls;

public partial class Ex08_AggieHut_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox PreviousPageAddress = (TextBox)PreviousPage.FindControl("txt_Address");

            lbl_StartPageAddress.Text = PreviousPageAddress.Text;

            RadioButtonList PreviousPageSelection = (RadioButtonList)PreviousPage.FindControl("rbl_DeliveryMethod");

            lbl_StartPageDeliveryMethod.Text = PreviousPageSelection.SelectedItem.Text;

            ddl_SelectedItemSize.Items[0].Attributes["disabled"] = "disabled";
        }
        

       
    }

    protected void ddl_SelectedItemPrice_SelectedIndexChanged(object sender, EventArgs e)
    {

        ddl_SelectedItemSize.Items[0].Attributes["disabled"] = "disabled";


        if (Convert.ToInt16(ddl_SelectedItemSize.SelectedIndex) == 1)
        {
            lbl_ShowSelectionPrice.Text = "$15.99";
        }
        else if (Convert.ToInt16(ddl_SelectedItemSize.SelectedIndex) == 2)
        {
            lbl_ShowSelectionPrice.Text = "$12.99";
        }
        else if (Convert.ToInt16(ddl_SelectedItemSize.SelectedIndex) == 3)
        {
            lbl_ShowSelectionPrice.Text = "$8.99";
        }
    }

    protected void btn_AddToOrder_Click(object sender, EventArgs e)
    {

    }
}