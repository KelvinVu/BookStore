<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_SachMoi.ascx.cs" Inherits="control_UC_SachMoi" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<asp:DataList ID="dl_sachmoi" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" Width="100%" CellPadding="5" CellSpacing="5">
    <ItemTemplate>
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td rowspan="3" style="width: 70px; text-align: center;">
                    <asp:Image ID="Image1" runat="server" Height="76px" ImageUrl='<%# @"..\images\"+Eval("Hinh_minh_hoa")+".jpg" %>' Width="78px" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Ms","~/Chi_tiet_sach.aspx?type={0}") %>' Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>Đơn giá: &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue" Text='<%# Eval("Don_gia","{0:#,##0}VNĐ/")+Eval("Don_vi_tinh") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/images/nut_chonmua.gif" Width="68px" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

<asp:Label ID="lb_loi" runat="server"></asp:Label>


