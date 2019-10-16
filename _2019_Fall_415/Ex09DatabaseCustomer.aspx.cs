using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Ex09DatabaseCustomer : System.Web.UI.Page
{
    private Customer selectedRecord;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) ddlCustomerID.DataBind();
        //get and show the webform on every load
        selectedRecord = this.GetSelectedRecord();
        lblName.Text = selectedRecord.Name;
    }
    private Customer GetSelectedRecord()
    {
        DataView customersTable = (DataView)
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        customersTable.RowFilter = string.Format("CustomerID = '{0}'",ddlCustomerID.SelectedValue);
        DataRowView row = customersTable[0];

        Customer p = new Customer();
        p.Name = row["Name"].ToString();
        p.Address = row["Address"].ToString();
        p.City = row["City"].ToString();

        return p;
    }
}