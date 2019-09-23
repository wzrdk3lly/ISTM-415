<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex04_WageCalculaorConditional.aspx.cs" Inherits="Ex04_WageCalculaorConditional" %>

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
                </tr>
                <tr>
                    <td>Tax Rate:
                        <asp:Label ID="lbl_TaxRate" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Amount Deducted:
                        <asp:Label ID="lbl_AmountDeducted" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Take Home Pay:
                        <asp:Label ID="lbl_TakeHomePay" runat="server" Text=""></asp:Label>
                    </td>
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
        </div>












    </form>
</body>
</html>
