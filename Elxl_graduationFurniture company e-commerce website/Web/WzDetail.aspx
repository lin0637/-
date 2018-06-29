<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="WzDetail.aspx.cs" Inherits="Default2" Title="产品详细信息" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td align="center" style="border-right: #cccccc 1px dotted; 
                        width: 22%; height: 277px" valign="top">
                        <div style="text-align: center">
                <asp:Image ID="Image1" runat="server" Height="188px" Width="156px" BorderStyle="Outset" />&nbsp;</div>
                    </td>
                    <td rowspan="1" style="width: 100%" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td align="left" style="
                                    height: 36px" colspan="2" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                        <tr>
                                            <td style="font-size: 13px; background-image: url(image/li_new.gif); width: 16%;
                                                color: white; text-indent: 20pt; background-repeat: no-repeat; height: 23px">
                                                详细内容</td>
                                            <td style="background-image: url(image/mot_new3%281%29.gif); width: 84%; height: 23px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="2" style="height: 19px; width: 100%;">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 328px">
        <tr>
            <td valign="top" style="width: 100%; font-size:12px" align="center" >
                <div style="text-align: left">
                    <table border="0" cellpadding="5" cellspacing="0" style="height: 229px; width: 100%; font-size:13px">
                        <tr>
                            <td colspan="4" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted; text-indent:20pt;
                                height: 29px" valign="top">
                                <asp:Label ID="contents" runat="server" Font-Bold="False" Font-Size="11pt" ForeColor="#494949"
                                    Text="Label" Width="100%"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="4" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted; text-decoration:none;height: 29px" align="center">
                                <asp:Literal ID="Literal2" runat="server"></asp:Literal></td>
                        </tr>
                    </table>
                </div>
                <br />
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Overline="false" ForeColor="#FF8000"
                                    OnClick="LinkButton1_Click">【返回】</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
                                    <div style="text-align: left">
                                        <div id="d1" runat="server">
                                            &nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

