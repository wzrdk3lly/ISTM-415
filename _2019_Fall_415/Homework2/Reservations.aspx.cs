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
        if (!IsPostBack)
        {
            txtArrivalDate.Text = DateTime.Today.ToShortDateString();
            
            rblBedType.Items[0].Selected = true;

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
    }
}