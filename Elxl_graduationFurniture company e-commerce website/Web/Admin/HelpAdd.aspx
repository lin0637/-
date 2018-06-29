<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HelpAdd.aspx.cs" Inherits="GoodsAdd" Title="产品添加" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="background-image: url(image/log/main.jpg); font-size:13px;
        width: 100%; height: 328px" >
        <tr>
            <td align="right" style="border-bottom: #cccccc 1px dotted; height: 28px;">
                标题：</td>
            <td style="border-bottom: #cccccc 1px dotted; height: 28px;" align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="312px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="不能为空" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="border-bottom: #cccccc 1px dotted;">
                详细内容：<br />
                </td>
            <td align="left" colspan="1" style="border-right: #cccccc 1px dotted; border-top: #cccccc 1px dotted;
                border-left: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                <asp:TextBox ID="TextBox5" runat="server" Height="324px" TextMode="MultiLine" Width="565px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 226px">
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click2" Text="保存" Width="81px" />
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:HiddenField ID="HiddenField2" runat="server" />
                </td>
        </tr>
    </table>
    </form>
</body>
</html>


