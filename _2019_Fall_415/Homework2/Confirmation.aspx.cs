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
        TextBox previousFirstName = (TextBox)PreviousPage.FindControl("txtFirstName");
        lblFirstName.Text = previousFirstName.Text;
        TextBox previousLastName = (TextBox)PreviousPage.FindControl("txtLastName");
        TextBox previousEmail = (TextBox)PreviousPage.FindControl("txtEmailAddress");
        TextBox previousTelephone = (TextBox)PreviousPage.FindControl("txtTelephoneNumber");
        DropDownList previousPrefered = (DropDownList)PreviousPage.FindControl("ddlPreffereedMethod");

        TextBox previousArrival = (TextBox)PreviousPage.FindControl("txtArrivalDate");
        TextBox previousDeparture = (TextBox)PreviousPage.FindControl("txtDepartureDate");
    
        DropDownList previousNumberPeople = (DropDownList)PreviousPage.FindControl("ddlNumberPeople");
        RadioButtonList previousBedType = (RadioButtonList)PreviousPage.FindControl("rblBedType");
        TextBox previousSpeialRequest = (TextBox)PreviousPage.FindControl("txtSpecialRequest");
    }
}