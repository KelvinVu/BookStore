<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_navigation_menu.ascx.cs" Inherits="control_UC_navigation_menu" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 27px;
    }
</style>

<table cellpadding="0" cellspacing="0" class="auto-style1">
    <tr>
        <td style="background-image: url('images/bg_menu_top.jpg'); text-align: center;" class="auto-style2" valign="middle">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Trang Chủ</asp:HyperLink>
&nbsp;&nbsp; |&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Gioi_Thieu.aspx">Giới Thiệu</asp:HyperLink>
&nbsp;&nbsp; |&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Dang_Ky.aspx">Đăng Ký</asp:HyperLink>
&nbsp;&nbsp; |&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/dang_nhap.aspx">Đăng Nhập</asp:HyperLink>
&nbsp;&nbsp; |&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Lien_He.aspx">Liên Hệ</asp:HyperLink>
        &nbsp; |&nbsp;
            <asp:Label ID="Lb_ngdung" runat="server"></asp:Label>
&nbsp;:<asp:HyperLink ID="hl_thoat" runat="server" NavigateUrl="../Default.aspx">thoát</asp:HyperLink>
        </td>
    </tr>
</table>

