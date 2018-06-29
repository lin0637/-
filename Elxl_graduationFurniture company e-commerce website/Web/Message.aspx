<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" Title="留言" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand"
        OnItemCreated="DataList1_ItemCreated"
        Width="100%" OnItemDataBound="DataList1_ItemDataBound">
        <ItemTemplate>
            <table style="width: 100%; font-size: 12px">
                <tr>
                    
                    <td align="left" style="width: 70%" valign="top">
                        <table style="width: 100%">
                              <tr>
                                <td colspan="3" style="width: 100%; text-align: left; font-weight: bold; color: #505050">
                                    发布人：
                                    <%#Eval("fbr") %>
                                    &nbsp; &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 100%; text-align: left; font-weight: bold; color: #505050">
                                    发布标题：
                                    <%#Eval("fbbt") %>
                                    &nbsp; &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 40%; color: #505050">
                                    发布时间：
                                    <%#Eval("fbsj")%>
                                </td>
                                <td align="right" style="width: 60%">
                                    <table cellpadding="3" cellspacing="0">
                                        <tr>
                                            <td id="ie1" runat="server">
                                               </td>
                                            <td id="ie2" runat="server">
                                                </td>
                                            <td id="e1" runat="server">
                                                </td>
                                            <td id="e2" runat="server">
                                                </td>
                                            <td id="td1" runat="server">
                                                </a>
                                            </td>
                                            <td id="td2" runat="server">
                                                
                                            </td>
                                            <td>
                                            <a href='hf.aspx?id=<%#Eval("id") %>&titleid=<% =titleID %>'>回复</a>
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
                                <td colspan="3" style="width: 100px; width: 90%; color: #505050; text-indent: 4pt; height:70px;">
                                    <%#Eval("fbnr") %>
                                </td>
                            </tr>
                            <tr>
                            <td>
                                                                <asp:DataList ID="DataList2" runat="server"
                                          
                                            Width="100%">
                                            <ItemTemplate>
                                                <table style="width: 100%; font-size: 12px">
                                                    <tr>
                                                      
                                                        <td align="left" style="width: 70%" valign="top">
                                                            <table style="width: 100%;border:solid 1px #cccccc">
                                                                <tr>
                                                                    <td colspan="3" style="width: 100%; text-align: left; font-weight: bold; color: #505050">
                                                                        回复人：
                                                                        <%#Eval("reusers") %>
                                                                        
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 60%; color: #505050">
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
    </asp:DataList>
    <table style="border-right: #cccccc thin dotted; border-top: #cccccc thin dotted; font-size: 12px;
        border-left: #cccccc thin dotted; color: #505050; border-bottom: #cccccc thin dotted;
        " border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="left" colspan="2" style="height: 16px; text-align: left" class="leftTD dotted">
                发表：</td>
        </tr>
        <tr>
            <td style="text-align: right" class="leftTD dotted">
                <span style="color: red">***</span>您的称呼：</td>
            <td style="width: 97px" class="leftTD dotted">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: right" class="leftTD dotted">
                标题：</td>
            <td style="width: 97px" class="leftTD dotted">
                <asp:TextBox ID="TextBox5" runat="server" Width="252px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 79px; text-align: right">
                <span style="color: #ff0000" >***</span>正文：</td>
            <td style="height: 79px" class="leftTD dotted" align="left">
<asp:TextBox ID="TextBox2" runat="server" Width="448px" Height="133px" TextMode="MultiLine"></asp:TextBox>
               
                </td>
        </tr>
        <tr>
            <td style="width: 85px; text-align: right">
            </td>
            <td style="width: 97px">
                <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="提交" />
                <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" Text="清除" /></td>
        </tr>
    </table>
</asp:Content>

