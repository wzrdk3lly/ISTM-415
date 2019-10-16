using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
   
    
        //
        // TODO: Add constructor logic here
        //
    public string ProductCode { get; set; }
    public string Description { get; set; }
    public decimal UnitPrice { get; set; }
    public int OnHandQuantity { get; set; } 

    public Product()
    { 
    }
}