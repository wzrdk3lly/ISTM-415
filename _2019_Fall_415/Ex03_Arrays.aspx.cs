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
        ListBox1.Items.Clear();
        //create array

        string[] customers = new string[3];

        customers[0] = "Sports";
        customers[1] = "club";
        customers[2] = "International";

      for (int x = 0; x <= 2; x++)
        {
            ListBox1.Items.Add(customers[x]);
        }

      //foreach ( string s in customers)
      //  {
      //      ListBox1.Items.Add(s);
      //  }
    }

    protected void btnCollectionString_Click(object sender, EventArgs e)
    {
      
        List<string> customers = new List<string>();

        //populate array 
        customers.Add("Daniel");
        customers.Add("Hayley");
        customers.Add("jojo");

        // loop to display content 
        ListBox1.Items.Clear();
        ListBox1.Items.Add("Button 2 executed - collection string case");

        foreach (string name in customers)
        {
            ListBox1.Items.Add(name);
        }
    }

    protected void btnArrayDecimal_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
        decimal[] arrayDecimals = new decimal[5];

        arrayDecimals[0] = 100;
        arrayDecimals[1] = 200;
        arrayDecimals[2] = 300;
        arrayDecimals[3] = 400;
        arrayDecimals[4] = 500;

        
        foreach (decimal d in arrayDecimals)
        {
            ListBox1.Items.Add(d.ToString());
        }

    }

    protected void btnCollectionDecimal_Click(object sender, EventArgs e)
    {
        List<decimal> listDecimal = new List<decimal>();

        listDecimal.Add(700);
        listDecimal.Add(800);
        listDecimal.Add(900);
        listDecimal.Add(1000);
        listDecimal.Add(1100);
        listDecimal.Add(1200);

        ListBox1.Items.Clear();

        foreach(decimal d in listDecimal)
        {
            ListBox1.Items.Add(d.ToString());
        }
       
    }
}