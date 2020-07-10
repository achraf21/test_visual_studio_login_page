<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 402px;
        }
        .auto-style5 {
            width: 500px;
        }
        .auto-style6 {
            width: 402px;
            height: 33px;
        }
        .auto-style7 {
            width: 500px;
            height: 33px;
        }
        .auto-style8 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 324px; margin-top: 42px">
            
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Username</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" Width="318px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Password</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox2"  runat="server" Width="319px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server" Width="319px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button2" runat="server" Text="Button" Width="297px" OnClick="Button1_Click" />
                    </td>
                    <td><asp:Label ID="msg" runat="server"></asp:Label></td>
                </tr>
            </table>

           
        </div>
    </form>
</body>
</html>
