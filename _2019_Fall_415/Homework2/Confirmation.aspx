<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Homework2_Confirmation" %>

<!DOCTYPE html>
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 48px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 1384px;
            color: #FF0000;
            margin-left: 40px;
        }
        .auto-style5 {
            width: 1168px;
        }
        .auto-style7 {
            width: 534px;
        }
        .auto-style8 {
            width: 31%;
        }
        .auto-style9 {
            width: 444px;
        }
        .auto-style10 {
            width: 249px;
        }
        .auto-style11 {
            margin-right: 0px;
            margin-bottom: 32px;
            color: #33CC33;
        }
        .auto-style12 {
            width: 1382px;
            color: #0000FF;
        }
        </style>
</head>
<body>
    <h1 class="auto-style12">Royal Inns and Suites </h1>
    <h2 class="auto-style1"><span class="auto-style3"><em>Where you're always treated like royalty</em></span> </h2>
    <form id="form1" runat="server" defaultfocus="txtArrivalDate">
        <div>
            <hr class="auto-style2" />
        </div>
    <p>
        &nbsp;
    </p>
    <h2 class="auto-style12">Request Confirmation </h2>
    <h3>Please confirm your reservation request</h3>
        <table class="auto-style8">
            <tr>
                <td class="auto-style7">First name</td>
                <td class="auto-style5">
                    <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Last name</td>
                <td class="auto-style5">
                    <asp:Label ID="lblLastName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Email</td>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Phone</td>
                <td class="auto-style5">
                    <asp:Label ID="lblPhone" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Preferred method</td>
                <td class="auto-style5">
                    <asp:Label ID="lblPrefferredMethod" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <h3>Request data</h3>
        <table class="auto-style8">
            <tr>
                <td class="auto-style10">Arrival date</td>
                <td class="auto-style9">
                    <asp:Label ID="lblArrivalDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Departure date</td>
                <td class="auto-style9">
                    <asp:Label ID="lblDepartureDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">No. of days</td>
                <td class="auto-style9">
                    <asp:Label ID="lblNoDays" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">No. of people</td>
                <td class="auto-style9">
                    <asp:Label ID="lblNoPeople" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Bed type</td>
                <td class="auto-style9">
                    <asp:Label ID="lblBedType" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Special request</td>
                <td class="auto-style9">
                    <asp:Label ID="lblSpecialRequest" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Total cost</td>
                <td class="auto-style9">
                    <asp:Label ID="lblTotalCost" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm Request" Width="251px" OnClick="btnConfirm_Click" />
&nbsp;
        <asp:Button ID="btnModifyRequest" runat="server" Text="Modify Request" Width="251px" />
        <p>
        <asp:Label ID="lblSubmitMessage" runat="server" CssClass="auto-style11" Height="96px" Text="Thank you for your request. We will get back to you within 24 hours." Width="471px"></asp:Label>
        </p>
    </form>
    </body>
</html>
