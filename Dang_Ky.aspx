<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dang_Ky.aspx.cs" Inherits="Dang_Ky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 117px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="2">TRANG ĐĂNG KÝ</td>
        </tr>
        <tr>
            <td class="auto-style6">tên đăng nhập</td>
            <td>
                <asp:TextBox ID="txt_tdn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">mật khẩu</td>
            <td>
                <asp:TextBox ID="txt_mk" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">tên người dùng</td>
            <td>
                <asp:TextBox ID="txt_ten" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">địa chỉ</td>
            <td>
                <asp:TextBox ID="txt_diachi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">email</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/dangkj.png" OnClick="ImageButton1_Click" Width="101px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

