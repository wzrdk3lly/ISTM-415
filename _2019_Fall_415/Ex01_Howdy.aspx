<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex01_Howdy.aspx.cs" Inherits="Ex01_Howdy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Exercise 01</h1>

            <asp:Button ID="Button1" runat="server" Text="Display Message" OnClick="Button1_Click" />
        </div>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Clear Message" OnClick="Button2_Click" />

            </p>
        <p>

            <asp:Label ID="lbl_Howdy" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
