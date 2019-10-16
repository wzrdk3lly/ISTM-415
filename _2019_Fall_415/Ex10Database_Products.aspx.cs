using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    private Product selectedProduct; //?? what does this one do 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) ddlProducts.DataBind();
        // get and show every load
        selectedProduct = this.GetSelectedProduct();

        txtCode.Text = selectedProduct.ProductCode;
        txtDescription.Text = selectedProduct.Description;
    }

    private Product GetSelectedProduct()
    {
        DataView productTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        productTable.RowFilter = string.Format("ProductCode = '{0}'", ddlProducts.SelectedValue);

        DataRowView row = productTable[0];

        Product p = new Product();
        p.ProductCode = row["ProductCode"].ToString();
        p.Description = row["Description"].ToString();
        p.UnitPrice = (decimal)row["UnitPrice"];
        p.OnHandQuantity = (int)row["OnHandQuantity"];

        return p;


    }
}