<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="UserAdd.aspx.cs" Inherits="UserAdd" Title="用户注册" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table cellspacing="0" class="Tbmenuborder" style="font-size: 12px; width: 100%; ">
            <tr >
                <td align="right" class="leftTD dotted" style="height: 22px; width:20%">
                    &nbsp;姓名：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px; width:80%">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="帐户信息不为空"></asp:RequiredFieldValidator></td>
            </tr>
            <tr >
                <td align="right" class="leftTD dotted" style="height: 22px">
                    个人简介：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="67px" TextMode="MultiLine" Width="349px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="信息不为空"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" class="leftTD dotted" style="height: 22px">
                    联系方式：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6"
                        ErrorMessage="信息不为空"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1" runat="server" ErrorMessage="必须为数字" 
                        ControlToValidate="TextBox6" ValidationExpression="^\d{11}$"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td align="right" class="leftTD dotted" style="height: 22px">
                    联系地址：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7"
                        ErrorMessage="信息不为空"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" class="leftTD dotted" style="height: 22px">
                    登录帐号：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="信息不为空"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" class="leftTD dotted" style="height: 22px">
                    登录密码：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4"
                        ErrorMessage="信息不为空"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td align="right" class="leftTD dotted" style="height: 22px">
                    确认密码：</td>
                <td align="left" class="leftTD dotted" colspan="1" style="height: 22px">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5"
                        ErrorMessage="信息不为空"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="两次输入的密码不一致" ControlToCompare="TextBox4" 
                        ControlToValidate="TextBox5"></asp:CompareValidator>
                        </td>
            </tr>
            <tr >
                <td class="leftTD dotted" style="height: 25px; text-align: left">
                    &nbsp;</td>
                <td class="leftTD dotted" colspan="1" style="height: 25px; text-align: left">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" OnClientClick="return confirm('确定要注册吗？')"
                        Text="注册" Width="64px" />
                    <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click"
                        Text="返回" Width="64px" CausesValidation="False" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

