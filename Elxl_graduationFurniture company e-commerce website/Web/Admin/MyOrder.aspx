<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="Admin_GoodsDd" Title="查看订单" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        CellPadding="4" OnPageIndexChanging="GridView1_PageIndexChanging"
        OnRowDataBound="GridView1_RowDataBound" 
        OnRowEditing="GridView1_RowEditing" Width="100%" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        DataKeyNames="orderid" OnRowDeleting="GridView1_RowDeleting">
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
            <asp:BoundField DataField="dates" HeaderText="订单时间" />
            <asp:TemplateField HeaderText="管理" ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                        Text="更新"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                        Text="取消"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                        Text="确认收货"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" HorizontalAlign="Center" />
    </asp:GridView>
    </form>
</body>
</html>


