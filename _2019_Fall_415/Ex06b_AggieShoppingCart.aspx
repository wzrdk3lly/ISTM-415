<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex06b_AggieShoppingCart.aspx.cs" Inherits="Ex06b_AggieShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Shoopping Cart
            </h1>
            <table>
                <tr>
                    <td>
                        Number of Tickets:
                    </td>
                    <td>
                        <asp:Label ID="lbl_NumberTickets" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Total Amount:
                    </td>
                    <td>
                        <asp:Label ID="lbl_TotalAmount" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
