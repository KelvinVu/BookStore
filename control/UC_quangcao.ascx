<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_quangcao.ascx.cs" Inherits="control_UC_quangcao" %>
<p>
    <asp:GridView ID="GV_QC" runat="server" AutoGenerateColumns="False" ShowHeader="False" Width="100%">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%#@"..\images\"+Eval("Hinh_Minh_Hoa")+".gif" %>' NavigateUrl='<%# Eval("HREF") %>'>[HyperLink1]</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</p>

<asp:Label ID="Label1" runat="server"></asp:Label>


