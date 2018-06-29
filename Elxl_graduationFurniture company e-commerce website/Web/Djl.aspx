<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Djl.aspx.cs" Inherits="Main" Title="家具企业电商网站" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td rowspan="5" style="width: 80%" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td align="left" style=" width: 216px; font-size:12px;
                                    height: 36px">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 873px; height: 6px">
                                        <tr>
                                            <td style="background-image: url(image/log/bz.gif); width: 67px; color: white; text-indent: 12pt;
                                                height: 30px">
                                                排行榜<%#Eval("sort")%></td>
                                            <td style="background-image: url(image/log/sbk.gif); width: 508px; color: black;
                                                height: 30px">
                                                &nbsp;产品搜索：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/image/log/2008012817410082.gif"
                                                    OnClick="ImageButton5_Click" />
                                                &nbsp;</td>
                                            <td style="background-image: url(image/log/by.gif); width: 5px; background-repeat: no-repeat;
                                                height: 30px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                               
                            </tr>
                            <tr>
                                <td align="left" colspan="2" style="height: 19px">
                                    <asp:DataList ID="DataList2" runat="server" DataKeyField="id" RepeatDirection="Horizontal" RepeatColumns="4">
                                        <ItemTemplate>
                                            <table border="0" cellpadding="0" cellspacing="0" style="font-size: 12px; color: #666666">
                                                <tbody>
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <img alt='<%#Eval("title") %>' height="114px" src='image/goods/<%#Eval("image") %>'
                                                                style="border: 2px;" width="137px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <%#Eval("title") %>
                                                        </td>
                                                    </tr>
                                                   <tr>
                                                    <td align="center">¥<%#Eval("prices") %>
                                                    </td>
                                                </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <a href='Detail.aspx?id=<%#Eval("id") %>'>
                                                                <img alt="详细内容" src="image/log/details.jpg" style="border: 0;" /></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

