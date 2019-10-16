<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex09DatabaseCustomer.aspx.cs" Inherits="Ex09DatabaseCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 24%;
        }
        .auto-style3 {
            width: 283px;
        }
        .auto-style4 {
            width: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1> Customer Information</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblCity" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblState" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblZip" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:DropDownList ID="ddlCustomerID" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CustomerID" DataValueField="CustomerID">
        </asp:DropDownList>
    </form>
</body>
</html>
