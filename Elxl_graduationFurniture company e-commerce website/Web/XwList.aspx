<%@ Page Language="C#" MasterPageFile="~/Main.master"  AutoEventWireup="true" CodeFile="XwList.aspx.cs" Inherits="Jdcg" Title="通告" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%" style="font-size:15px">
 <tr>
                    <td style=" height: 29px" align="left">
                        标题：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click2" Text="搜索" Width="74px" /></td>
     
                </tr>
                <tr>
                    <td style="width: 80%; " rowspan="3" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 112px;">
                            <tr>
                                <td style="height: 19px" colspan="2" align="center" valign="top">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="100%"
                                        OnRowDataBound="GridView1_RowDataBound" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="20">
                                        <Columns>
                                        
                                            <asp:TemplateField HeaderText="标题">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <a href='XwContent.aspx?id=<%#Eval("id") %>&type=xw'>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label></a>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="发布时间">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dates") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <a href='XwContent.aspx?id=<%#Eval("id") %>&type=xw'>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("dates") %>'></asp:Label></a>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <AlternatingRowStyle BackColor="#C0C0FF" />
                                        <HeaderStyle ForeColor="White" />
                                    </asp:GridView>
                                    &nbsp;</td>
                            </tr>
                           
                        </table>
                    </td>
                </tr>
</table>
</asp:Content>

