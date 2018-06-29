

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lj_edit.aspx.cs" Inherits="Admin_gg_edit" Title="信息维护" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">

        <table border="0" cellpadding="0" cellspacing="0" class="Tab" style="width: 100%; font-size:13px">
            <tr class="tr"  valign=top>
                <td align="left">
                    <asp:GridView ID="GridView1" runat="server" CssClass="GridViewStyle" 
                        AutoGenerateColumns="False" DataKeyNames="id"
                            OnRowCommand="GridView1_RowCommand" Width="100%" AllowPaging="True" 
                        OnPageIndexChanging="GridView1_PageIndexChanging" 
                        OnRowDeleting="GridView1_RowDeleting" OnRowDataBound="GridView1_RowDataBound" 
                        EnableModelValidation="True" onrowediting="GridView1_RowEditing"  >
                            <FooterStyle CssClass="GridViewFooterStyle" />
                                <RowStyle CssClass="GridViewRowStyle" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                                <PagerStyle CssClass="GridViewPagerStyle" />
                                <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" BackColor="#C0C0FF" />
                                <HeaderStyle HorizontalAlign="Center" ForeColor="White" />
                            <Columns>
                                <asp:BoundField DataField="title" HeaderText="标题" />
                                <asp:BoundField DataField="link" HeaderText="链接地址" >
                                </asp:BoundField>

                                <asp:TemplateField HeaderText="管理" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                            CommandName="Edit" Text="编辑"></asp:LinkButton>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                            CommandName="Update" Text="更新"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                            CommandName="Cancel" Text="取消"></asp:LinkButton>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="管理" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                            CommandName="Delete" Text="删除"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
