using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex03_Arrays : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnArrayString_Click(object sender, EventArgs e)
    {
        //create array

        string[] customers = new string[3];

        customers[0] = "Sports";
        customers[1] = "club";
        customers[2] = "International";

        foreach (string s in customers)
        {
            ListBox1.Items.Add(customers);
        }
    }
}