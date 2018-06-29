<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Default2" Title="产品详细信息" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td rowspan="1" style="width: 100%" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td align="left" colspan="1" style="height: 19px; width: 100%;">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 70%; height: 328px; font-size:12px;">
        <tr>
            <td rowspan="2" style="width: 22%; border-top-width: 1px; border-right: #cccccc 1px dotted; border-left: #cccccc 1px dotted; border-top-color: #cccccc; " valign="top">
                <asp:Image ID="Image1" runat="server" Height="188px" Width="156px" BorderStyle="Outset" />
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
            <td rowspan="2" valign="top" style="width: 100%" >
                <div style="text-align: left">
                    <table border="0" cellpadding="5" cellspacing="0" style="height: 229px; width: 99%;">
                        <tr>
                            <td style="border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted; width: 134px;" align="right">
                                产品发布人：</td>
                            <td style="width: 100px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 115px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;" align="right">
                                产品分类：</td>
                            <td style="width: 100px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 29px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted; width: 134px;" align="right">
                          产品名称：</td>
                            <td colspan="3" style="height: 29px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted;
                                height: 29px; width: 134px;">
                                价格：</td>
                            <td style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted;
                                height: 29px" colspan="3">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" style="border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Overline="false" ForeColor="#FF8000"
                                    OnClick="LinkButton1_Click">【返回】</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td style="WIDTH: 134px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;" align="right">
                                产品描述：</td>
                            <td colspan="3" style="border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
        </tr>
    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>


