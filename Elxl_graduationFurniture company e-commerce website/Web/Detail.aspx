<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Default2" Title="产品详细信息" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td align="center" style="border-right: #cccccc 1px dotted; 
                        width: 22%; height: 277px" valign="top">
                        <div style="text-align: center">
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 100px">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 219px; height: 6px">
                                            <tr>
                                                <td style="font-size: 12px; background-image: url(image/log/bz.gif); width: 121px;
                                                    color: white; text-indent: 12pt; height: 30px">
                                                    产品分类<%#Eval("title") %></td>
                                                <td style="background-image: url(image/log/sbk.gif); width: 254px; height: 30px">
                                                    &nbsp;</td>
                                                <td style="background-image: url(image/log/by.gif); width: 5px; background-repeat: no-repeat;
                                                    height: 30px">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="left">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="id"  RepeatColumns="2"
                                RepeatDirection="Horizontal" Width="100%">
                                <ItemTemplate>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                            <tr>
                                                <td style="width: 100px; height: 11px; font-size: 14px; color: #666666">
                                                    <a style=" text-decoration:none; color:#FF8000" href="Default.aspx?sort=<%#Eval("sort")%>"><asp:Image ID="Image5" runat="server" ImageUrl="~/image/log/article.gif"></asp:Image> <%#Eval("sort")%></a> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList></td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="center">
                                        </td>
                                </tr>
                            </table>
                            &nbsp;</div>
                    </td>
                    <td rowspan="3" style="width: 100%" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td align="left" style=" width: 45px;
                                    height: 36px">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 657px; height: 6px; font-size:12px;">
                                        <tr>
                                            <td style="background-image: url(image/log/bz.gif); width: 91px; color: white; text-indent: 12pt;
                                                height: 30px">
                                                产品信息<%#Eval("title") %></td>
                                            <td style="background-image: url(image/log/sbk.gif); width: 508px; color: black;
                                                height: 30px">
                                                &nbsp; &nbsp;&nbsp;</td>
                                            <td style="background-image: url(image/log/by.gif); width: 5px; background-repeat: no-repeat;
                                                height: 30px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                               
                            </tr>
                            <tr>
                                <td align="left" colspan="2" style="height: 19px; width: 100%;">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 328px; font-size:12px;">
        <tr>
            <td style="width: 22%; border-top-width: 1px; border-right: #cccccc 1px dotted; border-left: #cccccc 1px dotted; border-top-color: #cccccc; border-bottom: #cccccc 1px dotted;" 
                valign="top">
                <asp:Image ID="Image1" runat="server" Height="188px" Width="156px" BorderStyle="Outset" />
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
            <td valign="top" style="width: 100%" >
                <div style="text-align: left">
                    <table border="0" cellpadding="5" cellspacing="0" style="height: 229px; width: 99%;">
                        <tr>
                            <td style="border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted; width: 134px;" align="right">
                                发布人：</td>
                            <td style="width: 100px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                            <td style="width: 115px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;" align="right">
                                产品分类：</td>
                            <td style="width: 100px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 29px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted; width: 134px;" align="right">
                                产品名称：</td>
                            <td colspan="3" style="height: 29px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted;
                                height: 29px; width: 134px;">
                                价格：</td>
                            <td style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted;
                                height: 29px" colspan="3">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="border-right: #cccccc 1px dotted; width: 134px; border-bottom: #cccccc 1px dotted;
                                height: 29px">
                                库存数量：</td>
                            <td colspan="3" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted;
                                height: 29px">
                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="border-right: #cccccc 1px dotted; width: 134px; border-bottom: #cccccc 1px dotted;
                                height: 29px">
                                购买数量：</td>
                            <td colspan="3" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted;
                                height: 29px">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/log/btn_gm.jpg"
                                    OnClick="ImageButton2_Click" OnClientClick="return confirm('确定要收藏吗？')" /></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" style="border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                <asp:LinkButton ID="LinkButton2" runat="server" Font-Overline="false" ForeColor="#FF8000"
                                    OnClick="LinkButton2_Click">【添加购物车】</asp:LinkButton>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="WIDTH: 134px;border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;" align="right">
                                产品描述：</td>
                            <td colspan="3" style="border-bottom: #cccccc 1px dotted; border-right: #cccccc 1px dotted;">
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="border-right: #cccccc 1px dotted; width: 134px; border-bottom: #cccccc 1px dotted">
                                评价：</td>
                            <td colspan="3" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                <asp:DataList ID="DataList2" runat="server" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound"
                                    Width="100%">
                                    <ItemTemplate>
                                        <table style="width: 100%; font-size: 12px">
                                            <tr>
                                                <td align="left" style="width: 70%" valign="top">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td colspan="3" style="width: 100%; text-align: left; font-weight: bold; color: #505050">
                                                                评价人：
                                                                <%#Eval("fbr") %>
                                                                &nbsp; &nbsp; <a href='Plhf.aspx?id=<%=plid %>'>回复</a>
                                                            </td>
                                                           
                                                        </tr>
                                                         <tr>
                                                            <td  style="width: 20%; text-align: left; font-weight: bold; color: #505050">
                                                                评价：
                                                                <%#Eval("pjjg") %>
                                                                &nbsp; &nbsp; 评分：
                                                                <%#Eval("df") %>
                                                            </td>
                                                             
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 20%; color: #505050">
                                                                评价时间：
                                                                <%#Eval("fbsj")%>
                                                            </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" style="width: 100%; height: 3px;">
                                                                <table style="border-top: #c9c9c9 1px dashed;" width="99%">
                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" style="width: 100px; width: 90%; color: #505050; text-indent: 4pt;">
                                                                <%#Eval("fbnr") %>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:100%">
                                                                <asp:DataList ID="DataList2" runat="server" Width="100%">
                                                                    <ItemTemplate>
                                                                        <table style="width: 100%; font-size: 12px">
                                                                            <tr>
                                                                                <td align="left" style="width: 70%" valign="top">
                                                                                    <table style="width: 100%; border: solid 1px #cccccc">
                                                                                        <tr>
                                                                                            <td colspan="3" style="width: 100%; text-align: left; font-weight: bold; color: #505050">
                                                                                                回复人：
                                                                                                <%#Eval("reusers") %>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="width: 70%; color: #505050">
                                                                                                回复时间：
                                                                                                <%#Eval("redates")%>
                                                                                            </td>
                                                                                            <td align="right" style="width: 60%">
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td colspan="3" style="width: 100%; height: 3px;">
                                                                                                <table style="border-top: #c9c9c9 1px dashed;" width="99%">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td colspan="3" style="width: 100px; width: 90%; color: #505050; text-indent: 4pt;">
                                                                                                <%#Eval("recontents") %>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </ItemTemplate>
                                                                    <SeparatorTemplate>
                                                                        <table style="border-top: #c9c9c9 1px dashed;" width="100%">
                                                                            <tr>
                                                                                <td colspan="2" style="width: 100%;">
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </SeparatorTemplate>
                                                                    <FooterTemplate>
                                                                        <table style="border-top: #c9c9c9 1px dashed;" width="100%">
                                                                            <tr>
                                                                                <td colspan="2" style="width: 100%;">
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </FooterTemplate>
                                                                </asp:DataList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                    <SeparatorTemplate>
                                        <table style="border-top: #c9c9c9 1px dashed;" width="100%">
                                            <tr>
                                                <td colspan="2" style="width: 100%;">
                                                </td>
                                            </tr>
                                        </table>
                                    </SeparatorTemplate>
                                    <FooterTemplate>
                                        <table style="border-top: #c9c9c9 1px dashed;" width="100%">
                                            <tr>
                                                <td colspan="2" style="width: 100%;">
                                                </td>
                                            </tr>
                                        </table>
                                    </FooterTemplate>
                                </asp:DataList></td>
                        </tr>
                        <tr>
                            <td align="right" style="border-right: #cccccc 1px dotted; width: 134px; border-bottom: #cccccc 1px dotted">
                                评价：</td>
                            <td colspan="3" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>好评</asp:ListItem>
                                    <asp:ListItem>中评</asp:ListItem>
                                    <asp:ListItem>差评</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="right" style="border-right: #cccccc 1px dotted; width: 134px; border-bottom: #cccccc 1px dotted">
                                评分：</td>
                            <td colspan="3" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="right" style="border-right: #cccccc 1px dotted; width: 134px; border-bottom: #cccccc 1px dotted">
                                发布评价：</td>
                            <td colspan="3" style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                <asp:TextBox ID="TextBox1" runat="server" Height="80px" TextMode="MultiLine" Width="242px"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发布" /></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="border-right: #cccccc 1px dotted; height: 56px">
                        </td>
                </tr>
                <tr>
                    <td align="center" style="border-right: #cccccc 1px dotted; height: 145px">
                        <div style="text-align: left">
                            &nbsp;</div>
                    </td>
                </tr>
                </table>
        </div>
    </div>
</asp:Content>

