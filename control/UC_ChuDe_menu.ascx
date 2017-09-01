<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_ChuDe_menu.ascx.cs" Inherits="control_UC_ChuDe_menu" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 20px;
    }
</style>
<p>
    <asp:GridView ID="GV_Chude" runat="server" AutoGenerateColumns="False" ShowHeader="False" Width="100%" OnSelectedIndexChanged="GV_Chude_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table cellpadding="0" cellspacing="0" class="auto-style1" style="background-image: url('../images/nenxanh_cottrai.gif')">
                        <tr>
                            <td class="auto-style2" style="text-align: center">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/icon_list.jpg" />
                            </td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Ten_chu_de") %>' NavigateUrl='<%# Eval("mcd","~/sach_theo_chu_de.aspx?type={0}") %>'></asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</p>
<asp:Label ID="lb_loi" runat="server"></asp:Label>





