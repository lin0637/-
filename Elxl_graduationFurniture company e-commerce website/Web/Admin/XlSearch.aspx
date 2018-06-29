<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="XlSearch.aspx.cs" Inherits="Admin_GoodSearch" Title="销量统计" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
 <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="font-size: 14px; width: 100%">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" Width="100%" PageSize="5" OnRowDeleting="GridView1_RowDeleting">
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                    <Columns>
                        <asp:TemplateField HeaderText="商品图片">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <img alt='<%#Eval("title") %>' height="100px" src='../image/goods/<%#Eval("image") %>'
                                    width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="sort" HeaderText="类别" />
                        <asp:BoundField DataField="title" HeaderText="产品名称" />
                        <asp:BoundField DataField="xl" HeaderText="销量" />
                       
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
    </table>
    </form>
</body>
</html>

