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
            width: 927px;
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
            width: 927px;
            height: 62px;
        }
        .auto-style10 {
            margin-right: 49px;
            margin-bottom: 3px;
        }
        .auto-style11 {
            margin-right: 0px;
            margin-bottom: 32px;
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
    <h3>Request Data</h3>
    <table>
        <tr>
            <td class="auto-style6">Arrival date
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtArrivalDate" runat="server"></asp:TextBox>
            </td>


        </tr>
        <tr>
            <td class="auto-style6">Departure date
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDepartureDate" runat="server"></asp:TextBox></td>
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
    <asp:ListBox ID="ListBox1" runat="server" Height="171px" Width="844px"></asp:ListBox>
    <br />

    <h3>Contact information</h3>
    <table>
        <tr>
            <td>
                First name
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                Last name
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                Email Address
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                Telephone number
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtTelephoneNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                Preferred method
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlPreffereedMethod" runat="server">
                    <asp:ListItem>Email</asp:ListItem>
                    <asp:ListItem>Telephone</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="203px" />
&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" Width="203px" />
            </td>
        </tr>
    </table>
        <asp:Label ID="lblSubmitMessage" runat="server" CssClass="auto-style11" Height="96px" Text="Thank you for your request. We will get back to you within 24 hours." Width="471px"></asp:Label>
        <br />
    </form>
    </body>
</html>
