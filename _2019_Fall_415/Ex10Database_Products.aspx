<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex10Database_Products.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            width: 634px;
        }
        .auto-style3 {
            width: 409px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Database Products</h1>
            <p> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
            </p>

        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Description:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Unit Price:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Code:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Quantity on Hand: </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtQuantityOnHand" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Description" DataValueField="ProductCode" Height="35px" Width="522px">
        </asp:DropDownList>
    </form>
</body>
</html>
