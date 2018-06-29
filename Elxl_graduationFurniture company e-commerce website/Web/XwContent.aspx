<%@ Page Language="C#" MasterPageFile="~/Main.master"  AutoEventWireup="true" CodeFile="XwContent.aspx.cs" Inherits="Content" Title="查看详细内容" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td rowspan="3" style="width: 100%" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td align="left" colspan="2" style="width: 100%; height: 19px">
                                    <div style="border-right: #ff85b0 1px solid; border-top: #ff85b0 1px solid; border-left: #ff85b0 1px solid;
                                        width: 100%; border-bottom: #ff85b0 1px solid; background-color: #ffcadd">
                                        <table style="margin: 5px; width: 99%; background-color: white">
                                            <tr>
                                                <td align="center" colspan="1" rowspan="1" style="border-top-width: 1px; border-right: #cccccc 1px dotted;
                                                    border-left: #cccccc 1px dotted; border-top-color: #cccccc; border-bottom: #cccccc 1px dotted"
                                                    valign="top">
                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="幼圆" Font-Size="14pt"
                                                        Text="Label"></asp:Label></td>
                                            </tr>
                                            <tr style="font-size: 9pt; color: #000000; font-family: Times New Roman">
                                                <td style="width: 100%" valign="top">
                                                    <div style="text-align: left">
                                                        <table border="0" cellpadding="5" cellspacing="0" style="width: 100%; height: 229px">
                                                            <tr>
                                                                <td align="right" style="border-right: #cccccc 1px dotted; width: 168px; border-bottom: #cccccc 1px dotted">
                                                                    发布人：</td>
                                                                <td style="border-right: #cccccc 1px dotted; width: 176px; border-bottom: #cccccc 1px dotted">
                                                                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                                                                <td align="right" style="border-right: #cccccc 1px dotted; width: 95px; border-bottom: #cccccc 1px dotted">
                                                                    发布时间：</td>
                                                                <td style="border-bottom: #cccccc 1px dotted">
                                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" style="border-right: #cccccc 1px dotted; width: 168px; border-bottom: #cccccc 1px dotted">
                                                                    内容：</td>
                                                                <td colspan="3" 
                                                                    style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br />
                                                                    <br />
                                                                    <br />
                                                                    <br />
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="4" 
                                                                    style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Overline="false" ForeColor="#FF8000"
                                                                        OnClick="LinkButton1_Click">【返回】</asp:LinkButton>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="4" 
                                                                    style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr style="font-family: Times New Roman">
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                        </table>
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