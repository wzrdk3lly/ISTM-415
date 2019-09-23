<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex02_Calc.aspx.cs" Inherits="Ex02_Calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Wage Calculator
            </h1>
            <table>
                <tr>
                    <td>Wage:
                        <asp:TextBox ID="txt_wage" runat="server"></asp:TextBox>

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
                    <td>Take Home: 
                        <asp:Label ID="lbl_TakeHome" runat="server" Text=""></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn_calculate" runat="server" Text="Caclulate" OnClick="btn_calculate_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>

</body>
</html>
