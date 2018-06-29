<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ZsList.aspx.cs" Inherits="Main" Title="产品" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td style="border-right: #cccccc 1px dotted;
                        width: 22%; height: 257px" valign="top">
                        <div style="text-align: center">
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td><table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                        <tr>
                                            <td style="background-image: url(image/mot_new.gif);font-size:13px; color:White; width: 132px; height: 23px">
                                                <a style=" text-decoration:none; color:White" href="Default.aspx">搜索</a></td>
                                            <td style="background-image: url(image/mot_new3%281%29.gif); width: 100px; height: 23px">
                                            </td>
                                        </tr>
                                    </table>
                                    </td>
                                </tr>
                                <tr>
                                <td>
                                
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="text-align:right; font-size:13px">
                                                名称：</td>
                                            <td style="text-align:left">
                                                <asp:TextBox ID="TextBox3" runat="server" Width="115px"></asp:TextBox>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">
                                                <asp:Button ID="Button1" runat="server" Text="搜索" onclick="Button1_Click" />
                                                </td>
                                           
                                        </tr>
                                        
                                        <tr>
                                            <td align="center" colspan="2">
                                                &nbsp;</td>
                                           
                                        </tr>
                                        
                                    </table>
                                
                                </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td rowspan="2" style="width: 80%" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td align="left" colspan="2" style="height: 19px">
                                    <div style="text-align: left">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                            <tr>
                                                <td align="left" colspan="2" style="font-size: 13px; color: #ffffff; height: 33px">
                                                    <table border="0" cellpadding="0" cellspacing="0" style="height: 36px">
                                                        <tr>
                                                            <td align="left" style="font-size: 13px; background-image: url(image/ntitle_1.gif);
                                                                width: 92px; color: #ffffff; height: 33px">
                                                                &nbsp; 帮助中心</td>
                                                            <td style="background-image: url(image/ntitle.gif); width: 89%; height: 33px">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2" style="height: 19px">
                                                    <div style="text-align: left">
                                                        <table style="font-size: 12px; text-align: center" width="100%">
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="100%"
                                                                        OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound"
                                                                        PageSize="20" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="标题">
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ItemTemplate>
                                                                                    <a href='ZsContent.aspx?id=<%#Eval("id") %>&type=xw'>
                                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label></a>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="发布时间">
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("publish") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ItemTemplate>
                                                                                    <a href='ZsContent.aspx?id=<%#Eval("id") %>&type=xw'>
                                                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("publish") %>'></asp:Label></a>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <AlternatingRowStyle BackColor="#C0C0FF" />
                                                                        <HeaderStyle ForeColor="White" />
                                                                    </asp:GridView>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left">
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="border-right: #cccccc 1px dotted; height: 145px" valign="top">
                       <div style="text-align: left">
                           </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

