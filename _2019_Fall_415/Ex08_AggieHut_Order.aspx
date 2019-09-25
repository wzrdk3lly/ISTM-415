<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex08_AggieHut_Order.aspx.cs" Inherits="Ex08_AggieHut_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 308px;
        }
        .auto-style3 {
            width: 233px;
        }
        .auto-style4 {
            width: 308px;
            height: 46px;
        }
        .auto-style5 {
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            Aggie Hut
            - Order</h1>
        <div>
            
            <table class="auto-style1">
                <tr>
                    <td>Street Address:
                        <asp:Label ID="lbl_StartPageAddress" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>Delivery Method:
                        <asp:Label ID="lbl_StartPageDeliveryMethod" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
    <img src="Pizza%20Image/pizzaim.jpg" /></td>
                    <td>Supreme:<br />
                        Classis marinara sauce, with a dab of dat good ole basil, throw alil
                        <br />
                        tomato in that guy, cheese, PARSELEY</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddl_SelectedItemType" runat="server">
                            <asp:ListItem>Pan Pizza</asp:ListItem>
                            <asp:ListItem>Hand Tossed Pizza</asp:ListItem>
                            <asp:ListItem>Skinny Slice</asp:ListItem>
                            <asp:ListItem>Cheesy Bites Pizza</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="lbl_ShowSelectionPrice" runat="server"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddl_SelectedItemSize" runat="server" OnSelectedIndexChanged="ddl_SelectedItemPrice_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>Select a Size</asp:ListItem>
                            <asp:ListItem>Large </asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Small</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        </td>
                </tr>
            </table>
            
        </div>
    &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btn_AddToOrder" runat="server" BackColor="#FF9900" Text="Add to Order" OnClick="btn_AddToOrder_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    </body>
</html>
