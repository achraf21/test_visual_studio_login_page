<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 454px;
        }
        .auto-style2 {
            width: 352px;
        }
        .auto-style3 {
            height: 205px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="logout" runat="server" Text="Log Out" OnClick="LogOut" Width="181px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Welcome</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <table border="1">
                             <tr>
                                <td>Username</td>
                                <td>password</td>
                                
                            </tr>
                        <% for(int i=0;i<dataTable.Rows.Count;i++)
                            { %>

                            <tr>
                                <!-- affichage du Tableau vulnérable-->
                                <!--<td><%="" + dataTable.Rows[i]["username"]%></td>
                                <td><%="" + dataTable.Rows[i]["password"]%></td>-->

                                <!-- affichage du Tableau non vulnérable-->

                                <!-- : expression when displaying user-controlled input. 
                                    These tags will automatically escape and encode HTML characters within the rendered HTML including 
                                    < , > , " , ' and & thereby preventing injection of potentially malicious HTML code-->
                                <td><%:"" + dataTable.Rows[i]["username"]%></td>
                                <td><%:"" + dataTable.Rows[i]["password"]%></td>
                                
                            </tr>
                            <%} %>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td><asp:Label ID="msg2" runat="server"></asp:Label></td>
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" >
            </asp:GridView>
        </div>
    </form>

     
</body>
</html>
