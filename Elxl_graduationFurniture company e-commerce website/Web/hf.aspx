<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="hf.aspx.cs" Inherits="Forum_add" Title="发布帖子" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" cellpadding="0" cellspacing="0" style="border-right: #cccccc thin solid;
        border-top: #cccccc thin solid; font-size: 13px; border-left: #cccccc thin solid;
        border-bottom: #cccccc thin solid; height: 100%; text-align: left" width="100%">
        <tr>
            <td align="right" class="leftTD dotted" colspan="8" style="height: 21px">
                <div style="text-align: center">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-right: #cccccc thin dotted;
                        border-top: #cccccc thin dotted;  border-left: #cccccc thin dotted;
                        border-bottom: #cccccc thin dotted" width="100%">
                        <tr style="color: #000000">
                            <td align="right" class="leftTD dotted" style="width: 160px; height: 35px">
                                回复内容：</td>
                            <td align="left" class="leftTD dotted" style="height: 35px">
                                <asp:TextBox ID="txtContent" runat="server" Height="255px" TextMode="MultiLine" Width="527px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp; &nbsp;
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回复" /></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

