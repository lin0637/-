
<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Zf.aspx.cs" Inherits="gg_add" Title="信息添加" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <table cellspacing="0" class="Tbmenuborder" style="font-size: 12px;
        width: 100%; border-top-width: 1px; border-left-width: 1px; border-left-color: #f3acc4; border-bottom-width: 1px; border-bottom-color: #f3acc4; border-top-color: #f3acc4; border-right-width: 1px; border-right-color: #f3acc4;">
       
        <tr height="22">
            <td align="right" class="leftTD dotted" style="height: 22px">
                请选择银行：</td>
            <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>工商银行</asp:ListItem>
                                <asp:ListItem>建行</asp:ListItem>
                                <asp:ListItem>交通银行</asp:ListItem>
                                <asp:ListItem>农业银行</asp:ListItem>
                                <asp:ListItem>广发银行</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </asp:DropDownList>
            </td>
        </tr>
       
        <tr height="22">
            <td align="right" class="leftTD dotted" style="height: 22px">
                银行卡号：</td>
            <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                            <asp:TextBox ID="title" runat="server" Style="border-right: #ffcc00 1px solid; border-top: #ffcc00 1px solid;
                                border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid" Width="341px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="title"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
       
        <tr height="22">
            <td align="right" class="leftTD dotted" style="height: 22px">
                支付密码：</td>
            <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                            <asp:TextBox ID="title0" runat="server" Style="border-right: #ffcc00 1px solid; border-top: #ffcc00 1px solid;
                                border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid" 
                                Width="341px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="title0"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
       
        <tr height="22">
            <td align="right" class="leftTD dotted" style="height: 22px">
                确认密码：</td>
            <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                            <asp:TextBox ID="title1" runat="server" Style="border-right: #ffcc00 1px solid; border-top: #ffcc00 1px solid;
                                border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid" 
                                Width="341px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="title1"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="title0" ControlToValidate="title1" ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>
            </td>
        </tr>
        <tr height="22">
            <td class="leftTD dotted" style="height: 25px; text-align: left">
                            &nbsp;</td>
            <td class="leftTD dotted" colspan="1" style="height: 25px; text-align: left">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="border-right: #003333 1px solid;
                                border-top: #003333 1px solid; font: menu; border-left: #003333 1px solid; border-bottom: #003333 1px solid"
                                Text="支付" Width="83px" CssClass="btn" />
                            </td>
        </tr>
    </table>
    </form>
</body>
</html>