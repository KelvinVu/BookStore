<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dang_nhap.aspx.cs" Inherits="dang_nhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 35px;
        }
        .auto-style7 {
            height: 19px;
        }
        .auto-style8 {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style3" style="background-color: #FFFFCC">
        <tr>
            <td class="auto-style6" colspan="2">ĐĂNG NHẬP</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">vui lòng đăng nhập phía dưới</td>
        </tr>
        <tr>
            <td class="auto-style8">tên đăng nhập:</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">mật khẩu:</td>
            <td>
                <asp:TextBox ID="txt_mk" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="31px" Width="73px" ImageUrl="~/images/Login-Button1.jpg" OnClick="ImageButton1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" />
                ghi nhớ lần đăng nhập sau</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

