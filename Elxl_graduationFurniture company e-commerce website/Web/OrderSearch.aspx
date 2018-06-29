<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="OrderSearch.aspx.cs" Inherits="Admin_GoodSearch" Title="订单信息" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>购物车</title>
    <link href="~/Admin/images/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="font-size: 14px; width: 100%;" valign="top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" Width="100%" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="id,orderid">
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                    <Columns>
                         <asp:TemplateField HeaderText="图片">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <img alt='<%#Eval("title") %>' height="100px" src='image/goods/<%#Eval("image") %>'
                                    width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="sort" HeaderText="分类" />
                        <asp:BoundField DataField="title" HeaderText="产品名称" />
                        <asp:BoundField DataField="price" HeaderText="价格" />
                        <asp:TemplateField HeaderText="操作" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                    Text="更新"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Text="取消"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                    OnClientClick="return confirm('确认要删除吗?')" Text="删除"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                     
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="font-size: 14px; width: 100%;" valign="top">
                <table>
                <tr>
                <td style="text-align:right; width: 59px;">
                订单号：
                </td>
                <td style="text-align:left">
                    <asp:Label ID="Label1" runat="server"></asp:Label>&nbsp;</td>
                <td style="text-align:right">
                累计金额：
                </td>
                <td style="text-align:left">
                    <asp:Label ID="Label2" runat="server"></asp:Label>&nbsp;</td>
                 <td align="center" >
                    <asp:Button ID="Button1" runat="server" Text="支付" onclick="Button1_Click" />
                </td>
                </tr>
                </table>
                
                </td>
        </tr>
        <tr>
            <td style="font-size: 14px; width: 100%" valign="top">
            <div runat="server" id="d1">
                &nbsp;</div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
