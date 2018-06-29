<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpDetail.aspx.cs" Inherits="Default2" Title="产品详细信息" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td style="width: 100%" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 64%">
                            <tr>
                                <td align="left" style="height: 19px; width: 100%;">
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
                            <td align="right" style="border-right: #cccccc 1px dotted; width: 134px; border-bottom: #cccccc 1px dotted">
                                评价：</td>
                            <td style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
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
                                                                &nbsp; &nbsp;
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
                                                            <td style="width: 40%; color: #505050">
                                                                评价时间：
                                                                <%#Eval("fbsj")%>
                                                            </td>
                                                            <td align="right" style="width: 60%">
                                                                <table cellpadding="3" cellspacing="0">
                                                                    <tr>
                                                                       
                                                                        <td style="width:100%">
                                                                            <a href='Plhf.aspx?id=<%=plid %>'>回复</a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
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
                            <td style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>好评</asp:ListItem>
                                    <asp:ListItem>中评</asp:ListItem>
                                    <asp:ListItem>差评</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="right" style="border-right: #cccccc 1px dotted; width: 134px; border-bottom: #cccccc 1px dotted">
                                评分：</td>
                            <td style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
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
                            <td style="border-right: #cccccc 1px dotted; border-bottom: #cccccc 1px dotted">
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
                </table>
        </div>
    </div>
    </form>
</body>
</html>



