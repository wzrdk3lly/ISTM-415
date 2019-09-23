<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex06_AggieTicketingSystem.aspx.cs" Inherits="Ex06_AggieTicketingSystem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 40px;
            width: 258px;
        }
        .auto-style2 {
            width: 258px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Aggie Ticketing System</h1>
            <table>
                <tr>
                    <td class="auto-style1">Special Price
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Please select the number of tickets: 
                    </td>
                    <td><asp:DropDownList ID="ddlNumberTicketsPage1" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btn_calculate" runat="server" Text="Calculate Total" OnClick="btn_calculate_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                       Total Cost 
                    </td>
                    <td>
                        <asp:Label ID="lbl_TotalCost" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btn_Confirm" runat="server" Text="Confirm" OnClick="btn_Confirm_Click" 
                            PostBackUrl="~/Ex06b_AggieShoppingCart.aspx"/>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_by" runat="server" Text="Developmed by Miles Nolan"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
