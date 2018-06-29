<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Zzt.aspx.cs" Inherits="gg_edit" Title="员工销售业绩" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
</head>
<body style="">
    <form id="form1" runat="server">
      
        <table border="0" cellpadding="0" cellspacing="0" class="Tab" style="width: 100%">
            <tr class="tr"  valign=top>
                <td align="left">
                    <table style="width: 100%">
                        <tr>
                            <td style=" text-align:center;">
                                统计内容:<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>请选择</asp:ListItem>
                                    <asp:ListItem>销售情况</asp:ListItem>
                                    <asp:ListItem>剩余产品</asp:ListItem>
                                    <asp:ListItem>销售额</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;统计时段：<asp:TextBox ID="TextBox1" runat="server" Width="166px" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"></asp:TextBox>
                                至<asp:TextBox ID="TextBox2" runat="server" Width="166px" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="统计" onclick="Button1_Click1" />
                                
                            </td>
                        </tr>
                        <tr>
                            <td style=" text-align:center;">
                                <asp:Chart ID="Chart1" runat="server" backcolor="243, 223, 193" 
                                    BackGradientStyle="TopBottom" BorderColor="#B54001" BorderDashStyle="Solid" 
                                    BorderWidth="2px" Height="296px" 
                                    ImageLocation="~\TempImages\ChartPic_#SEQ(300,3)" Width="669px">
                                    <titles>
                                        <asp:title Alignment="TopCenter" Font="Trebuchet MS, 14.25pt, style=Bold" 
                                            ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0" ShadowOffset="3" 
                                            Text="">
                                        </asp:title>
                                    </titles>
                                    <legends>
                                        <asp:legend BackColor="Transparent" Enabled="False" 
                                            Font="Trebuchet MS, 8.25pt, style=Bold" IsTextAutoFit="False" Name="Default">
                                        </asp:legend>
                                    </legends>
                                    <borderskin skinstyle="Emboss" />
                                    <series>
                                        <asp:series BorderColor="180, 26, 59, 105" ChartArea="ChartArea1" 
                                            Color="224, 64, 10" Name="Series 1">
                                        </asp:series>
                                    </series>
                                    <chartareas>
                                        <asp:chartarea BackColor="OldLace" BackGradientStyle="TopBottom" 
                                            BackSecondaryColor="White" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                                            Name="ChartArea1" ShadowColor="Transparent">
                                            <area3dstyle Inclination="15" IsClustered="False" IsRightAngleAxes="False" 
                                                perspective="10" Rotation="10" wallwidth="0" />
                                            <axisy IsLabelAutoFit="False" linecolor="64, 64, 64, 64">
<MajorGrid LineColor="64, 64, 64, 64"></MajorGrid>

                                                <labelstyle font="Trebuchet MS, 8.25pt, style=Bold" />
                                                <majorgrid linecolor="64, 64, 64, 64" />
                                            </axisy>
                                            <axisx IsLabelAutoFit="False" linecolor="64, 64, 64, 64">
<MajorGrid LineColor="64, 64, 64, 64"></MajorGrid>

                                                <labelstyle font="Trebuchet MS, 8.25pt, style=Bold" IsStaggered="True" />
                                                <majorgrid linecolor="64, 64, 64, 64" />
                                            </axisx>

<Area3DStyle IsRightAngleAxes="False" Perspective="10" Inclination="15" Rotation="10" WallWidth="0"></Area3DStyle>
                                        </asp:chartarea>
                                    </chartareas>

<BorderSkin SkinStyle="Emboss"></BorderSkin>
                                </asp:Chart>
                                
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
</form></body></html>
