<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex05_WageCalculatorAdvanced.aspx.cs" Inherits="Ex05_WageCalculatorAdvanced" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Wage Calculator Conditional 
            </h1>
            <table>
                <tr>
                    <td>Wage:
                     <asp:TextBox ID="txt_Wage" runat="server"></asp:TextBox>
                    </td>
                    <td>Number of Wages:
                        <asp:Label ID="lbl_WageCount" runat="server" Text=""></asp:Label></td>
                    
                </tr>
                <tr>
                    <td>Tax Rate:
                        <asp:Label ID="lbl_TaxRate" runat="server" Text=""></asp:Label>
                    </td>
                    <td>Total  Wages:
                        <asp:Label ID="lbl_TotalWages" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>Amount Deducted:
                        <asp:Label ID="lbl_AmountDeducted" runat="server" Text=""></asp:Label>
                    </td>
                    <td>Total Deducted:
                        <asp:Label ID="lbl_TotalDeducted" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>Take Home Pay:
                        <asp:Label ID="lbl_TakeHomePay" runat="server" Text=""></asp:Label>
                    </td>
                    <td>Total Take Home:
                        <asp:Label ID="lbl_TotalTakeHome" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn_Calculate" runat="server" Text="Calculate" OnClick="btn_Calculate_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn_Clear" runat="server" Text="Clear Totals" OnClick="btn_Clear_Click" />
                    </td>
                </tr>
            </table>


            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="txt_Wage" ErrorMessage="RequiredFieldValidator" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
