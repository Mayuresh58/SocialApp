<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SocialApp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 209px;
        }
        .auto-style3 {
            width: 211px;
        }
        .auto-style4 {
            margin-left: 44px;
        }
        .auto-style5 {
            margin-left: 224px;
        }
    </style>
</head>
<body>
    <h2> Registration Page</h2>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="txtUsername" runat="server" Font-Bold="True" Text="UserName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="207px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="txtEmail" runat="server" Font-Bold="True" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="202px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="txtPassword" runat="server" Font-Bold="True" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="199px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btnRegister" runat="server" CssClass="auto-style5" Font-Bold="True" Text="Register"  />
            <asp:Button ID="btnLogin" runat="server" CssClass="auto-style4" Font-Bold="True"  Text="Login" OnClick="btnLogin_Click" />
        </p>
    </form>
</body>
</html>
