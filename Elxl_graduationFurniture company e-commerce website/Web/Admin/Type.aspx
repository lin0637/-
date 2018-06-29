<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Type.aspx.cs" Inherits="Admin_Type" Title="产品分类维护" %>
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
                <td align="left" class="leftTD dotted" colspan="5" style="height: 22px">
                    类别名称：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="查询" Width="77px" />
                    <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="添加分类"
                        Width="77px" />&nbsp;
                </td>
            </tr>
            <tr height="22">
                <td class="leftTD dotted" colspan="5" style="height: 25px; text-align: left">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" Font-Size="12px" FooterStyle-HorizontalAlign="center" FooterStyle-Width="50px"
                        ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnPageIndexChanging="GridView1_PageIndexChanging"
                        onpr="" OnPreRender="GridView1_PreRender" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
                        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="20"
                        Width="97%">
                        <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                        <Columns>
                            <asp:TemplateField HeaderText="类别名称">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sort") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="t8" runat="server" Width="50px"></asp:TextBox>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="TextBox1" runat="server" ReadOnly="true" Text='<%# Bind("sort") %>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="50px" />
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="编辑" ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                        Text="更新"></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                        Text="取消"></asp:LinkButton>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:Button ID="Button2" runat="server" CommandName="Add" Text="保存" />
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit"
                                        Text="编辑"></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                                <FooterTemplate>
                                    <asp:Button ID="Button3" runat="server" CommandName="cancel" Text="取消" />
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete"
                                        Text="删除" OnClientClick="return confirm('确认要删除吗?')"></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"
                            Width="50px" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" Width="120px" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

