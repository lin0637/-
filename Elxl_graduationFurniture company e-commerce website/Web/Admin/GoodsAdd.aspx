<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="GoodsAdd.aspx.cs" Inherits="GoodsAdd" Title="产品添加" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="background-image: url(image/log/main.jpg); height: 328px; font-size:12px;" width="100%" >
        <tr>
            <td style="width: 20%; border-bottom: #cccccc 1px dotted; border-top: #cccccc 1px dotted;" align="right">
                产品分类：</td>
            <td align="left"  style="width:70%; border-bottom: #cccccc 1px dotted; border-top: #cccccc 1px dotted;">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="106px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" style="border-bottom: #cccccc 1px dotted;">
                产品名称：</td>
            <td style="border-bottom: #cccccc 1px dotted;" align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="448px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="border-bottom: #cccccc 1px dotted; height: 24px">
                产品图片：</td>
            <td align="left" style="border-bottom: #cccccc 1px dotted; height: 24px">
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="187px" /></td>
        </tr>
        <tr>
            <td style="BORDER-BOTTOM: #cccccc 1px dotted" align="right">
                价格：</td>
            <td style="" align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="448px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="BORDER-BOTTOM: #cccccc 1px dotted" align="right">
                库存数量：</td>
            <td style="" align="left">
                <asp:TextBox ID="TextBox4" runat="server" Width="448px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="border-bottom: #cccccc 1px dotted;">
                产品描述：</td>
            <td align="left" colspan="1" style="border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted; border-top: #cccccc 1px dotted; border-left: #cccccc 1px dotted;">
                <fckeditorv2:fckeditor id="FCKeditor1" runat="server" height="400px"></fckeditorv2:fckeditor>
        
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 24px;">
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
            <td style="height: 24px">
                &nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click1" Text="添加" />
                <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click2" Text="取消" />
                <asp:Button ID="Button3" runat="server" CssClass="btn" OnClick="Button3_Click1" Text="更新" Visible="False" /></td>
        </tr>
    </table>
    </form>
</body>
</html>

