<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex08_AggieHut.aspx.cs" Inherits="Ex08_AggieHut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 16px;
        }
        .auto-style3 {
            height: 54px;
        }
    </style>
</head>
    <h1>
        Aggie Hut
    </h1>
    <h2>
        Start your Order
    </h2>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;<asp:RadioButtonList ID="rbl_DeliveryMethod" runat="server" Height="44px">
                <asp:ListItem>Delivery</asp:ListItem>
                <asp:ListItem>Carryout</asp:ListItem>
                </asp:RadioButtonList></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Continue as a guest</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Street Address:
                <asp:TextBox ID="txt_Address" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style3"></td>
        </tr>
    </table>
        <div>
            <asp:Button ID="btn_Continue" runat="server" CausesValidation="False" PostBackUrl="~/Ex08_AggieHut_Order.aspx" Text="Continue" />
        </div>
    </form>
</body>
</html>
