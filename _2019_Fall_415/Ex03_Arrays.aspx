<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex03_Arrays.aspx.cs" Inherits="Ex03_Arrays" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Arrays</title>
    <style type="text/css">
        .auto-style1 {
            width: 32%;
        }
        .auto-style9 {
            margin-right: 50px;
        }
        .auto-style12 {
            margin-left: 0px;
            margin-right: 50px;
        }
        </style>
</head>
  
<body>
      <h1>
        Arrays and Collections
    </h1>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="btnArrayString" runat="server" BackColor="Yellow" Text="Array String" Width="123px" OnClick="btnArrayString_Click" />
                    </td>
                    <td>
                    </td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnCollectionString" runat="server" BackColor="Yellow" Text="collection String" width="123px" />
                    </td>
                    <td >
                        <asp:Button ID="btnArrayDecimal" runat="server" BackColor="Yellow" Text="Array Decimal" width="112px" />
                    </td>
                     <td>
                    </td>
                    <td></td>
                    <td >
                        <asp:Button ID="btnCollectionDecimal" runat="server" BackColor="Yellow" CssClass="auto-style9" Text="Collection Decimal" width="123px" />
                    </td>
                     <td>
                    </td>
                    <td></td>
                    <td >
                        <asp:Button ID="btnMultidemensianlArray" runat="server" BackColor="Yellow" CssClass="auto-style12" Text="Multidimensional Array" width="175px" />
                    </td>
                </tr>
            </table>
            <br />

        </div>
        <asp:ListBox ID="ListBox1" runat="server" Height="307px" Width="737px"></asp:ListBox>
    </form>
</body>
</html>
