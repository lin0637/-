<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UsersEdit.aspx.cs" Inherits="Admin_UsersEdit" Title="帐户管理" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table cellspacing="0" class="Tbmenuborder" style="font-size: 12px; width: 100%">
            <tr height="22">
                <td align="right" class="leftTD dotted" style="height: 22px; width:20%">
                    &nbsp; 名称：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px; width:80%">
                    <asp:TextBox ID="TextBox1" runat="server" Width="349px"></asp:TextBox></td>
            </tr>
            <tr height="22">
                <td align="right" class="leftTD dotted" style="height: 22px">
                    介绍：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="67px" TextMode="MultiLine" Width="349px"></asp:TextBox></td>
            </tr>
            <tr height="22">
                <td align="right" class="leftTD dotted" style="height: 22px">
                    登录帐号：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr height="22">
                <td align="right" class="leftTD dotted" style="height: 22px">
                    登录密码：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
            <tr height="22">
                <td align="right" class="leftTD dotted" style="height: 22px">
                    联系方式：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
            <tr height="22">
                <td align="right" class="leftTD dotted" style="height: 22px">
                    地址：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox5" runat="server" Height="67px" TextMode="MultiLine" Width="349px"></asp:TextBox></td>
            </tr>
            <tr height="22">
                <td class="leftTD dotted" style="height: 25px; text-align: left">
                    &nbsp;</td>
                <td class="leftTD dotted" colspan="1" style="height: 25px; text-align: left">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" OnClientClick="return confirm('确定要更新吗？')"
                        Text="更新" Width="64px" />
                    </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

