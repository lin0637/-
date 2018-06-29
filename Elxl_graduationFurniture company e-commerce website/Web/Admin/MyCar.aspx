<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="MyCar.aspx.cs" Inherits="Admin_GoodSearch" Title="购物车" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
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
                        <asp:TemplateField HeaderText="选择">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" OnCheckedChanged="ItemCheckBox_CheckedChanged" AutoPostBack="true" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                      <asp:TemplateField HeaderText="产品封面">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <img alt='<%#Eval("title") %>' height="100px" src='../image/goods/<%#Eval("image") %>'
                                    width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="sort" HeaderText="分类" />
                        <asp:BoundField DataField="title" HeaderText="产品名称" />
                        <asp:BoundField DataField="sums" HeaderText="金额" />
                     
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
                <table runat="server" id="t1">
                <tr>
                <td style="text-align:right">
                订单号：
                </td>
                <td style="text-align:left">
                <asp:TextBox ID="TextBox1" Enabled ="false" runat="server"></asp:TextBox>
                </td>
                <td style="text-align:right">
                累计金额：
                </td>
                <td style="text-align:left">
                <asp:TextBox ID="TextBox2" Enabled ="false" runat="server"></asp:TextBox>
                </td>
                    <td align="center" rowspan="3">
                        &nbsp;</td>
                </tr>
                    <tr>
                        <td style="text-align: right">
                            邮寄地址：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                        <td style="text-align: right">
                            联系方式：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            联系人：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                        <td style="text-align: right">
                            备注：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="4">
                    <asp:Button ID="Button2" runat="server" Text="清空购物车" onclick="Button2_Click" 
                                Width="90px" />
                    <asp:Button ID="Button1" runat="server" Text="生成订单" onclick="Button1_Click" Width="81px" /></td>
                        <td align="center" rowspan="1">
                        </td>
                    </tr>
                </table>
                
                </td>
        </tr>
    </table>
    </form>
</body>
</html>


