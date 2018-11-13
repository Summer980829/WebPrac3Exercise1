<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultDisplay.aspx.cs" Inherits="WebPrac3Exercise1.ResultDisplay" %>

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
                <td>
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
