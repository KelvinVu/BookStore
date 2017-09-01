<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sach_theo_chu_de.aspx.cs" Inherits="sach_theo_chu_de" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 458px;
    }
    .auto-style5 {
        width: 87px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" cellspacing="5" class="auto-style6" style="vertical-align: top; text-align: center; background-color: #FFFFCC;">
    <tr>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4" style="background-color: #FFFFCC">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="5" CellSpacing="5" PageIndex="2" Width="100%" ShowHeader="False">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table cellpadding="0" cellspacing="0" class="auto-style1" style="background-color: #FFFFCC">
                                <tr>
                                    <td rowspan="3" style="text-align: left;">
                                        <asp:Image ID="Image1" runat="server" Height="76px" ImageUrl='<%# @"..\images\"+Eval("Hinh_minh_hoa")+".jpg" %>' Width="78px" />
                                    </td>
                                    <td style="text-align: left">
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Ms","~/Chi_tiet_sach.aspx?type={0}") %>' Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left">Đơn giá: &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue" Text='<%# Eval("Don_gia","{0:#,##0}VNĐ/")+Eval("Don_vi_tinh") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/images/nut_chonmua.gif" Width="68px" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

