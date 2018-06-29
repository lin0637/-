<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Main.master"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 50%">
                <tr>
                    <td style="border-right: #cccccc 1px dotted; width: 22%; height: 137px" valign="top">
                        <div style="text-align: center; ">
                            <table style="font-size:13px; left: 13px; width: 164px; ">
                                <tr>
                                    <td colspan="2" style="height:22px;" valign="top">
                                        <table border="0" cellpadding="0" cellspacing="0" style="height: 6px; width: 219px;">
                                            <tr>
                                                <td style="background-image: url(image/log/bz.gif); width: 121px; color: white; text-indent: 12pt; font-size:12px;
                                    height: 30px">
                                                    用户登录<%#Eval("sort") %></td>
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
                                    <td style="width: 65px; height: 26px;" align="right">
                                        用户名：</td>
                                    <td style="width: 100px; height: 26px;" align="left">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="99px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 65px" align="right">
                                        密码：</td>
                                    <td style="width: 100px" align="left">
                                        <asp:TextBox ID="TextBox2" runat="server" Height="17px" TextMode="Password" Width="99px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 65px">
                                        权限：</td>
                                    <td align="left" style="width: 100px">
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>用户</asp:ListItem>
                                            <asp:ListItem>管理员</asp:ListItem>
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/log/bbslogin.gif" OnClick="ImageButton1_Click" />
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/log/bbsreg.gif" OnClick="ImageButton2_Click" /><br />
                                        </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td style="width: 77%;" rowspan="7" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 71%; height: 462px;">
                            <tr>
                                <td align="left" style="font-size: 12px; width: 100%; color: white; height: 36px" valign="top">
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
                                                                    style="color: #494949; text-decoration: none;" target="_parent" title='<%#Eval("title") %>'>
                                                                    <%#Eval("title")%>
                                                                </a></li>
                                                            <li style="width: 20%; list-style-type: none; float: left; padding: 0px; margin: 0px;
                                                                color: #494949; text-align: left; text-indent: 2pt; font-size: 13px;">
                                                                <%#Eval("dates")%>
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
                                <td align="left" style="font-size: 12px; width: 207px; color: white; height: 36px">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 657px; height: 6px">
                                        <tr>
                                            <td style="background-image: url(image/log/bz.gif); width: 91px; color: white; text-indent: 12pt;
                                                height: 30px">
                                                产品信息<%#Eval("sort") %></td>
                                            <td style="background-image: url(image/log/sbk.gif); width: 508px; height: 30px; color:Black;">
                                                &nbsp;&nbsp;&nbsp;</td>
                                            <td style="background-image: url(image/log/by.gif); width: 5px; background-repeat: no-repeat;
                                                height: 30px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 19px" colspan="1" align="left">
                                    <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" 
                                        DataKeyField="id" RepeatColumns="4">
                                    <ItemTemplate>
                                        <table style="font-size: 12px; color: #666666" cellspacing="0" cellpadding="0" border="0">
                                            <tbody>
                                                <tr>
                                                    <td style="width: 100px">
                                                    <img style="border:2px; " alt='<%#Eval("users") %>' src='image/goods/<%#Eval("image") %>' Width="137px" Height="114px" />
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td align="center"><%#Eval("title") %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">¥<%#Eval("prices") %></td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                    <a href="Detail.aspx?id=<%#Eval("id") %>">
                                                    <img src="image/log/details.jpg" style="border:0;" alt="详细内容" /></a>
                                                        </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </ItemTemplate>
                                    <FooterTemplate>      
     <asp:Label ID="lblEmpty"  Text="暂无该产品相关信息！" ForeColor="orange" runat="server" Font-Size="10pt" Visible='<%#bool.Parse(( DataList2.Items.Count==0).ToString())%>'>      
</asp:Label>      
             </FooterTemplate>

                                    </asp:DataList></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 56px;border-right: #cccccc 1px dotted;">
                        <table border="0" cellpadding="0" cellspacing="0" style="height: 6px; width: 219px;">
                            <tr>
                                <td style="background-image: url(image/log/bz.gif); width: 121px; color: white; text-indent: 12pt; font-size:12px;
                                    height: 30px">
                                    产品分类<%#Eval("sort") %></td>
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
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" DataKeyField="id">
                            <ItemTemplate>
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tbody>
                                        <tr>
                                            <td style="width: 100px; height: 11px;font-size: 14px; color: #666666;">
                                                <a style=" text-decoration:none; color:#FF8000" href="Default.aspx?sort=<%#Eval("sort") %>">
                                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/image/log/article.gif" />
                                                    <%#Eval("sort")%>
                                                </a>
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
                    <td align="center" style="border-right: #cccccc 1px dotted; height: 145px;" valign="top">
                        <div style="text-align:center">
                            &nbsp;</div>
                    </td>
                </tr>
              
            </table>
        </div>
    
    </div>
</asp:Content>
