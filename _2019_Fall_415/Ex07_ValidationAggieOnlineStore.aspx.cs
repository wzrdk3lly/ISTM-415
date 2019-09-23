using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex07_ValidationAggieOnlineStore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        
       
    }

    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            Response.Write("<script>alert('Account Successfully Created');</script>");
        }
    }
}