<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chi_tiet_sach.aspx.cs" Inherits="chi_tiet_sach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 116px;
        }
        .auto-style7 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="2">CHI TIẾT SÁCH</td>
        </tr>
        <tr>
            <td class="auto-style6" rowspan="6">
                <asp:Image ID="Image1" runat="server" Height="99px" Width="97%" />
            </td>
            <td>
                <asp:Label ID="lb_ten_sach" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tác giả:
                <asp:HyperLink ID="hl_tac_gia" runat="server" NavigateUrl="tac_gia.aspx">[hl_tac_gia]</asp:HyperLink>
                </strong></td>
        </tr>
        <tr>
            <td><strong>Thể Loại:</strong>
                <asp:HyperLink ID="hl_theloai" runat="server" NavigateUrl="The_Loai.aspx">[hl_theloai]</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td><strong>Nhà xuất bản:
                <asp:HyperLink ID="hl_nha_xuat_ban" runat="server" NavigateUrl="nha_xuat_ban.aspx">[hl_nha_xuat_ban]</asp:HyperLink>
                </strong></td>
        </tr>
        <tr>
            <td><strong>Đơn giá:&nbsp;
                <asp:Label ID="lb_don_gia" runat="server"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lb_mo_ta" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

