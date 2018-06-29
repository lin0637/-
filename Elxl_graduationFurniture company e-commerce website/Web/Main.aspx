<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" Title="家具企业电商网站" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td style="border-right: #cccccc 1px dotted;
                        width: 22%; height: 179px" valign="top">
                        <div style="text-align: center">
                            <table style="font-size: 13px; left: 13px; width: 164px; ">
                                <tr>
                                    <td colspan="2"><table border="0" cellpadding="0" cellspacing="0" style="width: 219px; height: 6px">
                                        <tr>
                                            <td style="font-size: 12px; background-image: url(image/log/bz.gif); width: 121px;
                                    color: white; text-indent: 12pt; height: 30px">
                                                账户信息<%#Eval("sort")%></td>
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
                                    <td align="left" colspan="2" style="height: 2px">
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="height: 2px;">
                                        欢迎您：</td>
                                    <td align="left" style="width: 100px; height: 2px;">
                                        <asp:Label ID="Label1" runat="server" ForeColor="#FF8000" Text="Label"></asp:Label>
                                        <asp:Label ID="Label2" runat="server" ForeColor="#FF8000" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="height: 28px" >
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Overline="false" ForeColor="#FF8000" OnClick="LinkButton1_Click">【个人中心】</asp:LinkButton>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/log/go.gif" OnClick="ImageButton1_Click" /></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td rowspan="7" style="width: 80%" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td align="left" style="width: 100%; height: 36px" valign="top">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 40%">

                                                <script type="text/javascript">
var focus_width=290;
var focus_height=201;
var text_height=20;
var swf_height = focus_height+text_height;
var pics="qtimages/flashpic/1.jpg|qtimages/flashpic/2.jpg|qtimages/flashpic/3.jpg|qtimages/flashpic/4.jpg";

var links = "Default.aspx|Default.aspx|Default.aspx|Default.aspx|Default.aspx";

 var texts="产品1|产品2|产品3|产品4|产品5";


pics="qtimages/flashpic/1.jpg|qtimages/flashpic/2.jpg|qtimages/flashpic/3.jpg|qtimages/flashpic/4.jpg";
links = "Default.aspx|Default.aspx|Default.aspx|Default.aspx|Default.aspx";
texts="产品1|产品2|产品3|产品4|产品5";

document.write('<embed src="qtimages/pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#ffffff" quality="Best" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">');

                                                </script>

                                            </td>
                                            <td style="width: 60%" valign="top">
                                                <asp:DataList ID="DataList6" runat="server" EnableViewState="False" Width="100%">
                                                    <ItemTemplate>
                                                        <ul style="margin: 0px; padding: 17px; border-bottom: #cccccc 1px dotted;">
                                                            <li style="width: 55%; list-style-type: none; float: left; padding: 0px; margin: 0px;
                                                                color: #494949; text-align: left; font-size: 13px;"><a href='XwContent.aspx?id=<%#Eval("id") %>'
                                                                    style="color: #494949; text-decoration: none;" target="_parent" title='<%#Eval("title")%>'>
                                                                    <%#Eval("title")%>
                                                                </a></li>
                                                            <li style="width: 20%; list-style-type: none; float: left; padding: 0px; margin: 0px;
                                                                color: #494949; text-align: left; text-indent: 2pt; font-size: 13px;">
                                                                <%#Eval("dates") %>
                                                            </li>
                                                        </ul>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style=" width: 216px; font-size:12px;
                                    height: 36px">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 657px; height: 6px">
                                        <tr>
                                            <td style="background-image: url(image/log/bz.gif); width: 91px; color: white; text-indent: 12pt;
                                                height: 30px">
                                                产品信息<%#Eval("sort")%></td>
                                            <td style="background-image: url(image/log/sbk.gif); width: 508px; color: black;
                                                height: 30px">
                                                
                                                &nbsp;</td>
                                            <td style="background-image: url(image/log/by.gif); width: 5px; background-repeat: no-repeat;
                                                height: 30px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                               
                            </tr>
                            <tr>
                                <td align="left" colspan="2" style="height: 19px">
                                    <asp:DataList ID="DataList2" runat="server" DataKeyField="id" RepeatDirection="Horizontal" RepeatColumns="4">
                                        <ItemTemplate>
                                            <table border="0" cellpadding="0" cellspacing="0" style="font-size: 12px; color: #666666">
                                                <tbody>
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <img alt='<%#Eval("title") %>' height="114px" src='image/goods/<%#Eval("image") %>'
                                                                style="border: 2px;" width="137px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <%#Eval("title") %>
                                                        </td>
                                                    </tr>
                                                   <tr>
                                                    <td align="center">¥<%#Eval("prices") %></td>
                                                </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <a href='Detail.aspx?id=<%#Eval("id") %>'>
                                                                <img alt="详细内容" src="image/log/details.jpg" style="border: 0;" /></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="border-right: #cccccc 1px dotted; height: 56px">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 219px; height: 6px">
                            <tr>
                                <td style="font-size: 12px; background-image: url(image/log/bz.gif); width: 121px;
                                    color: white; text-indent: 12pt; height: 30px">
                                    产品分类<%#Eval("sort")%></td>
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
                    <td align="left" style="border-right: #cccccc 1px dotted; height: 56px" valign="top">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" RepeatColumns="2" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                            <tr>
                                                <td style="width: 100px; height: 11px; font-size: 14px; color: #666666">
                                                     <a style=" text-decoration:none; color:#FF8000" href="Main.aspx?sort=<%#Eval("sort")%>"><asp:Image ID="Image5" runat="server" ImageUrl="~/image/log/article.gif"></asp:Image> <%#Eval("sort")%></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList></td>
                </tr>
                <tr>
                    <td align="left" style="border-right: #cccccc 1px dotted; height: 56px" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="height: 6px; width: 219px;">
                            <tr>
                                <td style="background-image: url(image/log/bz.gif); width: 121px; color: white; text-indent: 12pt; font-size:12px;
                                    height: 30px">
                                    搜索</td>
                                <td style="background-image: url(image/log/sbk.gif); width: 254px; height: 30px">
                                    &nbsp;</td>
                                <td style="background-image: url(image/log/by.gif); width: 5px; background-repeat: no-repeat;
                                    height: 30px">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table style="width: 100%; font-size:13px;">
                            <tr>
                                <td align="right">
                                    产品：</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Width="135px"></asp:TextBox>
                                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/image/log/2008012817410082.gif"
                                                    OnClick="ImageButton5_Click" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="border-right: #cccccc 1px dotted; height: 56px" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="left" style="border-right: #cccccc 1px dotted; height: 56px" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" style="border-right: #cccccc 1px dotted; height: 145px" valign="top">
                        &nbsp;<div style="text-align: left">
                            &nbsp;</div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

