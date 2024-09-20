<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SocialApp.LoginRegister.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 195px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            margin-left: 203px;
        }
        .auto-style6 {
            margin-left: 22px;
        }
    </style>
</head>
<body>
    <h2>Login Page</h2>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="txtEmail" runat="server" Font-Bold="True" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="213px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="txtPassword" runat="server" Font-Bold="True" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="210px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Button ID="btnLogin" runat="server" CssClass="auto-style5" OnClick="btnLogin_Click" Text="Login" />
            <asp:Button ID="btnRegister" runat="server" CssClass="auto-style6" OnClick="btnRegister_Click" Text="Register" />
        </p>
    </form>
</body>
</html>
