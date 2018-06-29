<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="OrderSearch.aspx.cs" Inherits="Admin_GoodSearch" Title="订单信息" %>
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
                    OnRowDataBound="GridView1_RowDataBound" 
                    OnRowEditing="GridView1_RowEditing" Width="100%" 
                    OnRowDeleting="GridView1_RowDeleting" DataKeyNames="id,orderid,spid">
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                    <Columns>
                         <asp:TemplateField HeaderText="商品封面">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <img alt='<%#Eval("title") %>' height="100px" src='../image/goods/<%#Eval("image") %>'
                                    width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="sort" HeaderText="分类" />
                        <asp:BoundField DataField="title" HeaderText="商品名称" />
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
                     
                         
                     
                         <asp:TemplateField HeaderText="管理" ShowHeader="False">
                             <ItemTemplate>
                                 <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                     CommandName="Delete" Text="评价"></asp:LinkButton>
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
                <td style="text-align:right">
                订单号：
                </td>
                <td style="text-align:left">
                    <asp:Label ID="Label1" runat="server"></asp:Label>&nbsp;</td>
                <td style="text-align:right">
                累计金额：
                </td>
                <td style="text-align:left">
                    <asp:Label ID="Label2" runat="server"></asp:Label>&nbsp;</td>
                </tr>
                    <tr>
                        <td style="text-align: right">
                            联系地址：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                        <td style="text-align: right">
                            联系方式：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            联系人：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                        <td style="text-align: right">
                            备注：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="4" style="height: 30px">
                    <asp:Button ID="Button1" runat="server" Text="银行卡支付" onclick="Button1_Click" 
                                Visible="False" Width="100px" /></td>
                    </tr>
                </table>
                <table id="t1" runat="server" visible="false">
                    <tr>
                        <td style="text-align: right">
                            物流公司：
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td style="text-align: right">
                            物流编号：
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                        <td align="center" rowspan="1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            发货时间：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox></td>
                        <td style="text-align: right">
                        </td>
                        <td style="text-align: left">
                        </td>
                        <td align="center" rowspan="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="4">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="发货" Width="81px" /></td>
                        <td align="center" rowspan="1">
                        </td>
                    </tr>
                </table><table id="t2" runat="server" visible="false">
                    <tr>
                        <td style="text-align: right">
                            退货原因：</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox9" runat="server" Enabled="False" EnableTheming="True"></asp:TextBox></td>
                        <td style="text-align: right">
                        </td>
                        <td style="text-align: left">
                        </td>
                        <td align="center" rowspan="1">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            物流上门取货：
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td style="text-align: left">
                            &nbsp;</td>
                        <td align="center" rowspan="1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="4">
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="处理" Width="81px" /></td>
                        <td align="center" rowspan="1">
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

