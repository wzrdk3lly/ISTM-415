using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homework2_Confirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblSubmitMessage.Visible = false;
            TextBox previousFirstName = (TextBox)PreviousPage.FindControl("txtFirstName");
            lblFirstName.Text = previousFirstName.Text;
            TextBox previousLastName = (TextBox)PreviousPage.FindControl("txtLastName");
            lblLastName.Text = previousLastName.Text;
            TextBox previousEmail = (TextBox)PreviousPage.FindControl("txtEmailAddress");
            lblEmail.Text = previousEmail.Text;
            TextBox previousTelephone = (TextBox)PreviousPage.FindControl("txtTelephoneNumber");
            lblPhone.Text = previousTelephone.Text;
            DropDownList previousPrefered = (DropDownList)PreviousPage.FindControl("ddlPreffereedMethod");

            lblPrefferredMethod.Text = previousPrefered.Text;

            TextBox previousArrival = (TextBox)PreviousPage.FindControl("txtArrivalDate");
            lblArrivalDate.Text = previousArrival.Text;

            TextBox previousDeparture = (TextBox)PreviousPage.FindControl("txtDepartureDate");
            lblDepartureDate.Text = previousDeparture.Text;
            Label previousDays = (Label)PreviousPage.FindControl("lblHiddenDays");
            lblNoDays.Text = previousDays.Text;

            DropDownList previousNumberPeople = (DropDownList)PreviousPage.FindControl("ddlNumberPeople");
            lblNoPeople.Text = previousNumberPeople.Text;


            RadioButtonList previousBedType = (RadioButtonList)PreviousPage.FindControl("rblBedType");
            lblBedType.Text = previousBedType.Text;

            TextBox previousSpeialRequest = (TextBox)PreviousPage.FindControl("txtSpecialRequest");
            lblSpecialRequest.Text = previousSpeialRequest.Text;

            Label previousFinalCost = (Label)PreviousPage.FindControl("lblHiddenFinalCost");
            lblTotalCost.Text = previousFinalCost.Text;
        }
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        lblSubmitMessage.Visible = true;
    }
}