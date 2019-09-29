using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homework2_Reservations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        
        if (!IsPostBack)
        {

            txtArrivalDate.Text = DateTime.Today.ToShortDateString();
            rblBedType.SelectedIndex = 0; 


            // Populates ddlNumber of people from #'s 1 - 7
            for (int i = 1; i <= 7; i++)
            {
                ddlNumberPeople.Items.Add(i.ToString());
            }

            lblSubmitMessage.Visible = false;
        }

    }

    protected void ddlNumberPeople_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblSubmitMessage.Visible = true;

        // converting arrival and departure time 
        DateTime arrivalTime = DateTime.Parse(txtArrivalDate.Text);
        DateTime departureTime = DateTime.Parse(txtDepartureDate.Text);

        TimeSpan totalSpan = departureTime - arrivalTime;
        decimal totalTime = Convert.ToDecimal(totalSpan.TotalDays.ToString());

        
        decimal finalCost = 0m;
        decimal addCost = 0m;

        lblHiddenDays.Text = totalTime.ToString();
        
        int numPeople = Convert.ToInt32(ddlNumberPeople.SelectedItem.Text);

        // finds additional cost of extra people
        if (numPeople > 2)
        {
            addCost = 20m * (numPeople - 2);
        }
        
        //calculates final cost 
        if ( rblBedType.SelectedIndex == 0)
        {
            finalCost = (120m * totalTime) + (addCost * totalTime);
        }
        
        else if (rblBedType.SelectedIndex == 1)
        {
            finalCost = (110m * totalTime) + (addCost * totalTime);
        }

        else if (rblBedType.SelectedIndex == 2)
        {
            finalCost = (100 + totalTime) + (addCost * totalTime);
        }

        lblHiddenFinalCost.Text = finalCost.ToString("c");

        /* Psudo-code for calculation logic
         * decimal arrivalTime = Convert.Todecimal(arrivaltime)
         * decimal departureTime = Convert.Todecimal(departuretime)
         * decimal finalCost = 0m
         * decimal totalTime = depatureDate - arrivalDate
         * decimal addPeopleCost = 0m
         * int addPeople = ddlnumberPeople.SelectedValue
         * 
         * if(ddlnumberPeople.SelectedValue.converttoInto > 2)
         * addPeopleCost = 20 * (addPeople - 2
         * 
         * 
         * if(ddlBedType == "King")
         *     dec finalCost = (120 * totalTime) + (addPeopleCost * totalTime) 
         * elseif(ddlBedType =="Two Queens")
         *    dec  finalCost = (110 * totalTime) + (addPeopleCost * totalTime)
         * elseif(ddlBedType == "One Queen")
         *    decL  finalcost = (100 * totalTime) + (addPEopleCost * totalTime)
    
         * 
         */

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        // reset all controls//text to default

        txtArrivalDate.Text = DateTime.Today.ToShortDateString();
        txtDepartureDate.Text = "";
        rblBedType.SelectedIndex = 0;
        ddlNumberPeople.SelectedIndex = 0;

        txtSpecialRequest.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtEmailAddress.Text = "";
        txtTelephoneNumber.Text = "";
        ddlPreffereedMethod.SelectedIndex = 0;


    }
}