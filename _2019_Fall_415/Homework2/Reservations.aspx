<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reservations.aspx.cs" Inherits="Homework2_Reservations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Miles Nolan's Reservation Page </title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }

        .auto-style2 {
            margin-bottom: 0px;
        }

        .auto-style3 {
            color: #FF0000;
        }

        .auto-style4 {
            color: #0000FF;
        }

        .auto-style5 {
            width: 1200px;
        }

        .auto-style6 {
            width: 288px;
        }
        .auto-style7 {
            width: 458px;
        }
        .auto-style8 {
            width: 288px;
            height: 62px;
        }
        .auto-style9 {
            width: 1200px;
            height: 62px;
        }
        .auto-style10 {
            margin-right: 49px;
            margin-bottom: 3px;
        }
        .auto-style11 {
            margin-right: 0px;
            margin-bottom: 32px;
            color: #33CC33;
        }
        .auto-style12 {
            width: 288px;
            height: 42px;
        }
        .auto-style13 {
            width: 1200px;
            height: 42px;
        }
        .auto-style14 {
            width: 1319px;
        }
        .auto-style15 {
            margin-right: 0px;
        }
        .auto-style16 {
            height: 56px;
        }
        .auto-style17 {
            width: 1319px;
            height: 56px;
        }
        .auto-style18 {
            width: 458px;
            height: 56px;
        }
    </style>
</head>
<body>
    <h1 class="auto-style4">Royal Inns and Suites </h1>
    <h2 class="auto-style1"><span class="auto-style3"><em>Where you're always treated like royalty</em></span> </h2>
    <form id="form1" runat="server" defaultfocus="txtArrivalDate">
        <div>
            <hr class="auto-style2" />
        </div>
    <p>
        &nbsp;
    </p>
    <h2 class="auto-style4">Reservation Request </h2>
        <p class="auto-style4">
            <asp:RequiredFieldValidator ID="rfvAsterick" runat="server" ControlToValidate="txtFirstName" CssClass="auto-style3"></asp:RequiredFieldValidator>
        </p>
    <h3>Request Data</h3>
    <table>
        <tr>
            <td class="auto-style6">Arrival date
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtArrivalDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvArrival" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtArrivalDate"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="cvArrivalDate" runat="server" ControlToValidate="txtArrivalDate" Display="Dynamic" ErrorMessage="A date must be entered" ForeColor="Red" Type="Date" Operator="DataTypeCheck"></asp:CompareValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtArrivalDate" ErrorMessage="The format must be in 99/99/9999 format" Display="Dynamic" Enabled="False" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>


        </tr>
        <tr>
            <td class="auto-style12">Departure date
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="txtDepartureDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDeparture" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtDepartureDate" Display="Dynamic"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="cvAfterArrivalDate" runat="server" ControlToCompare="txtArrivalDate" ControlToValidate="txtDepartureDate" Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="Red" Operator="GreaterThan" Type="Date">Must be after arrival date</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Number of people
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlNumberPeople" runat="server" OnSelectedIndexChanged="ddlNumberPeople_SelectedIndexChanged"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Bed Type
            </td>
            <td class="auto-style9">
                <asp:RadioButtonList ID="rblBedType" runat="server" CssClass="auto-style10" Height="16px" RepeatDirection="Horizontal" Width="594px">
                    <asp:ListItem>King</asp:ListItem>
                    <asp:ListItem>Two Queens</asp:ListItem>
                    <asp:ListItem>One Queen</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
    <br />
    <h3>Special Request
    </h3>
        <asp:TextBox ID="txtSpecialRequest" runat="server" Height="172px" TextMode="MultiLine" Width="358px"></asp:TextBox>
    <br />

    <h3>Contact information</h3>
    <table>
        <tr>
            <td>
                First name
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style16">
                Last name
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="auto-style15" Height="36px" Width="249px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style18">
                </td>
        </tr>
         <tr>
            <td>
                Email Address
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmailAddress" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailAddress" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Must be valid email address</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
         <tr>
            <td>
                Telephone number
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtTelephoneNumber" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvTelephone" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtTelephoneNumber"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelephoneNumber" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Display="Dynamic">Use this format: 999-999-9999</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
         <tr>
            <td>
                Preferred method
            </td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddlPreffereedMethod" runat="server" AutoPostBack="True">
                    <asp:ListItem>Email</asp:ListItem>
                    <asp:ListItem>Telephone</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
         <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style14">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="203px" />
&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="203px" />
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
    </table>
        <asp:Label ID="lblSubmitMessage" runat="server" CssClass="auto-style11" Height="96px" Text="Thank you for your request. We will get back to you within 24 hours." Width="471px"></asp:Label>
        <asp:Label ID="lblHiddenFinalCost" runat="server" Visible="False"></asp:Label>
        <br />
    </form>
    </body>
</html>
