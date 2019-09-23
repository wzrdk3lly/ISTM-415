<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="Homework1_Confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 149px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Qoutation Confirmation</h1>
            <table>
                <!-- Row 1 -->
                <tr>

                    <td class="auto-style1">Sales price
                     
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="lbl_SalesPrice" runat="server" Text=""></asp:Label>

                    </td>
                    <td class="auto-style8">
                       
                    </td>
                </tr>
                <!-- Row 2-->

                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>
                </tr>
                <!-- Row 3 -->
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style13">
                        
                        </td>
                    <td class="auto-style14">
                      
                    </td>
                </tr>
                <!-- Row 4 -->
                <tr>
                    <td class="auto-style1">Discount amount</td>
                    <td class="auto-style16">
                        <asp:Label ID="lbl_DiscountAmount" runat="server" Text=""></asp:Label></td>
                    <td class="auto-style17"></td>
                </tr>
                <!-- Row 5 -->
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>

                </tr>
                <!-- Row 6 -->
                <tr>
                    <td class="auto-style1">Total Price</td>
                    <td class="auto-style19">
                        <asp:Label ID="lbl_TotalPrice" runat="server" Text=""></asp:Label></td>
                    <td class="auto-style20"></td>
                </tr>
                <!-- Row 7 -->
               </table>
             <h2>Send confirmation to</h2>
            <table>
                <tr>
                    <td class="auto-style21"> Name </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox></td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="rfvnName" runat="server" ErrorMessage="Name is required" ControlToValidate="txt_Name" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <!-- Row 8 -->
                <tr>
                    <td class="auto-style15">Email address</td>
                    <td class="auto-style16"> 
                         <asp:TextBox ID="txt_EmailAddress" runat="server"></asp:TextBox></td>
                    
                    <td class="auto-style17"> <asp:RequiredFieldValidator ID="rfvEmailAddress" runat="server" ErrorMessage="Emal is required" ControlToValidate="txt_EmailAddress" Display="Dynamic"></asp:RequiredFieldValidator>
</td>
                </tr>
                <!-- Row 9 -->
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="btn_SendQuotation" runat="server" Text="Send Quotation" Width="136px" OnClick="btn_SendQuotation_Click" /></td>

                    <td class="auto-style16">
                        <asp:Button ID="btn_Return" runat="server" Text="Return" Width="131px" PostBackUrl="~/Homework1/MilesQuotation.aspx" OnClick="btn_Return_Click" CausesValidation="False" />
                    </td>
                    <td class="auto-style17">
                      
                    </td>
                </tr>
            </table>
        </div>
        <p>
             <asp:Label ID="lbl_Message" runat="server" Text="Click the send quotation button to send the quotation via email." ForeColor="#009933"></asp:Label>
        </p>
    </form>
</body>
</html>
