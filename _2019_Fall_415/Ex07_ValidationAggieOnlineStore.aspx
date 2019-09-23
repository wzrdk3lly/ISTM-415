<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex07_ValidationAggieOnlineStore.aspx.cs" Inherits="Ex07_ValidationAggieOnlineStore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Aggie Online Store</title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            width: 43%;
            margin-right: 70px;
        }
        .auto-style10 {
            width: 174px;
        }
        .auto-style11 {
            width: 174px;
            height: 23px;
        }
        .auto-style12 {
            width: 144px;
        }
        .auto-style13 {
            width: 144px;
            height: 23px;
        }
        .auto-style16 {
            width: 43%;
            margin-bottom: 36px;
        }
        .auto-style17 {
            width: 166px;
        }
        .auto-style22 {
            margin-top: 0px;
        }
        .auto-style23 {
            width: 391px;
        }
        .auto-style24 {
            width: 391px;
            height: 23px;
        }
        .auto-style25 {
            width: 184px;
        }
        .auto-style28 {
            width: 144px;
            height: 26px;
        }
        .auto-style29 {
            width: 174px;
            height: 26px;
        }
        .auto-style30 {
            width: 391px;
            height: 26px;
        }
        .auto-style31 {
            width: 166px;
            height: 34px;
        }
        .auto-style32 {
            height: 34px;
            width: 184px;
        }
        .auto-style33 {
            height: 34px;
        }
        .auto-style34 {
            width: 166px;
            height: 19px;
        }
        .auto-style35 {
            height: 19px;
            width: 184px;
        }
        .auto-style36 {
            height: 19px;
        }
        .auto-style37 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <h1>
        Aggie Online Store
    </h1>
    <form id="form1" runat="server">
        <div class="auto-style1">
          
            Aggie Online Store</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style12">Name:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtName" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name is a required field."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Email:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtEmail" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter an e-mail address."></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Email Again:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtEmailAgain" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmailAgain" Display="Dynamic" ErrorMessage="Required Field. "></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmailAgain" Display="Dynamic" ErrorMessage="CompareValidator"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Password:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtPassword" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Password Again</td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtPasswordAgain" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="Required. "></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="Must be the same as password entered."></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Income:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtIncome" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtIncome" Display="Dynamic" ErrorMessage="Income has to be between 10,000 and 20,000" MaximumValue="20000" MinimumValue="10000" Type="Currency"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <p class="auto-style1">
            Shipping Address</p>
        <table class="auto-style16">
            <tr>
                <td class="auto-style17">Address:</td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtAddress" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Address is required."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31">Zip-Code:</td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtZipCode" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td class="auto-style33">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtZipCode" Display="Dynamic" ErrorMessage="Zip Code is required."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtZipCode" Display="Dynamic" ErrorMessage=" Zip must be an integer " Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">Country:</td>
                <td class="auto-style35">
                    <asp:DropDownList ID="ddlCountry" runat="server" CssClass="auto-style37" Height="25px" Width="156px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>Mexico</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style36">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlCountry" Display="Dynamic" ErrorMessage="You must select a country." InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">City:</td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtCity" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="You must enter a city. "></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnCreateAccount" runat="server" CssClass="auto-style22" OnClick="btnCreateAccount_Click" Text="Create your Aggie Account" Width="413px" />
    </form>
</body>
</html>
