<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MilesQuotation.aspx.cs" Inherits="Homework1_MilesQuotation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            width: 149px;
            height: 30px;
        }

        .auto-style7 {
            width: 197px;
            height: 30px;
        }

        .auto-style8 {
            height: 30px;
        }

        .auto-style9 {
            width: 149px;
            height: 32px;
        }

        .auto-style10 {
            width: 197px;
            height: 32px;
        }

        .auto-style11 {
            height: 32px;
        }

        .auto-style12 {
            width: 149px;
            height: 35px;
        }

        .auto-style13 {
            width: 197px;
            height: 35px;
        }

        .auto-style14 {
            height: 35px;
        }

        .auto-style15 {
            width: 149px;
            height: 33px;
        }

        .auto-style16 {
            width: 197px;
            height: 33px;
        }

        .auto-style17 {
            height: 33px;
        }

        .auto-style18 {
            width: 149px;
            height: 31px;
        }

        .auto-style19 {
            width: 197px;
            height: 31px;
        }

        .auto-style20 {
            height: 31px;
        }

        .auto-style21 {
            width: 149px;
            height: 29px;
        }

        .auto-style22 {
            width: 197px;
            height: 29px;
        }

        .auto-style23 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Price Quotation</h1>
            <table>
                <!-- Row 1 -->
                <tr>

                    <td class="auto-style6">Sales price
                     
                    </td>

                    <td class="auto-style7">
                        <asp:TextBox ID="txt_SalesPrice" runat="server" ValidationGroup="SalesPrice" OnTextChanged="txt_SalesPrice_TextChanged"></asp:TextBox>

                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ID="rfvtxt_SalesPrice" ControlToValidate="txt_SalesPrice" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" Display="Dynamic" ControlToValidate="txt_SalesPrice" MaximumValue="1000" MinimumValue="10" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <!-- Row 2-->

                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>
                </tr>
                <!-- Row 3 -->
                <tr>
                    <td class="auto-style12">Discount percent</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txt_DiscountPercent" runat="server"></asp:TextBox></td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="rfvtxt_DiscountPercent" runat="server" ErrorMessage="Required"
                            ControlToValidate="txt_DiscountPercent" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Must be between 50 and 10" MaximumValue="50" MinimumValue="10" Type="Integer" Display="Dynamic" ControlToValidate="txt_DiscountPercent"></asp:RangeValidator>

                    </td>
                </tr>
                <!-- Row 4 -->
                <tr>
                    <td class="auto-style15">Discount amount</td>
                    <td class="auto-style16">
                        <asp:Label ID="lbl_DiscountAmount" runat="server" Text=""></asp:Label></td>
                    <td class="auto-style17"></td>
                </tr>
                <!-- Row 5 -->
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>

                </tr>
                <!-- Row 6 -->
                <tr>
                    <td class="auto-style18">Total Price</td>
                    <td class="auto-style19">
                        <asp:Label ID="lbl_TotalPrice" runat="server" Text=""></asp:Label></td>
                    <td class="auto-style20"></td>
                </tr>
                <!-- Row 7 -->
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style23"></td>
                </tr>
                <!-- Row 8 -->
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="btn_calculate" runat="server" Text="Calculate" OnClick="btn_calculate_Click" Width="136px" /></td>
                    <td class="auto-style16">
                        <asp:Button ID="btn_confirm" runat="server" Text="Confirm" Width="131px" OnClick="btn_confirm_Click" PostBackUrl="~/Homework1/Confirm.aspx" />
                    </td>
                    <td class="auto-style17"></td>
                </tr>
            </table>
            <p>
                <asp:Label ID="lbl_Message" runat="server" Text="Click the send quotation button to send the quotation via email." ForeColor="#009933"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
