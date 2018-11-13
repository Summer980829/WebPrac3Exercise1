<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HolidayChecking.aspx.cs" Inherits="WebPrac3Exercise1.HolidayChecking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table ">
            <tr>
                <td colspan="2">
                    <span style="font-weight:400; font-size:30px;text-align:center"><p>MOM TRAVEL ONLINE HOLIDAY CHECKING SYSTEM</p></span>
                </td>
            </tr>

            <tr>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td colspan="2" >
                    
                    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
                    
                </td>
            </tr>

            <tr>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td><p>Please enter your budget for Holiday :</p></td>
                <td>
                    RM<asp:TextBox ID="txtBudget" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="From :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlFrom" runat="server">
                        <asp:ListItem>KL</asp:ListItem>
                        <asp:ListItem>Penang</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="To :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTo" runat="server" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>Auckland</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td></td>
                <td hidden="hidden">
                    <asp:TextBox ID="txtPrice" runat="server" ></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td></td>
                <td  >
                    <asp:Button ID="btnCheck" runat="server" Text="Check" OnClientClick="javascript:alert('You will be redirected to result page')" PostBackUrl="~/ResultDisplay.aspx" />
                </td>
            </tr>

        </table>
    </form>
</body>
</html>
