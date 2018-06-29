<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="Admin_GoodsDd" Title="购物车" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>购物车</title>
    <link href="~/Admin/images/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        CellPadding="4" OnPageIndexChanging="GridView1_PageIndexChanging"
        OnRowDataBound="GridView1_RowDataBound" 
        OnRowEditing="GridView1_RowEditing" Width="100%" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        EnableModelValidation="True">
        <RowStyle BackColor="White" HorizontalAlign="Center" ForeColor="#330099" />
        <Columns>
            <asp:TemplateField HeaderText="订单编号">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("orderid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <a href='OrderSearch.aspx?orderid=<%#Eval("orderid") %>&state=<%#Eval("state") %>'>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderid") %>'></asp:Label></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="state" HeaderText="订单状态" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" HorizontalAlign="Center" />
    </asp:GridView>
    </form>
</body>
</html>

