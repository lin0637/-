<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="MyScZs.aspx.cs" Inherits="MyCar" Title="收藏帮助中心" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 100%; font-size:14px; text-align:center;">
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
                                                                            <asp:TemplateField HeaderText="收藏时间">
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("buydate") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ItemTemplate>
                                                                                    <a href='ZsContent.aspx?id=<%#Eval("id") %>&type=xw'>
                                                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("buydate") %>'></asp:Label></a>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <AlternatingRowStyle BackColor="#C0C0FF" />
                                                                        <HeaderStyle ForeColor="White" />
                                                                    </asp:GridView>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

