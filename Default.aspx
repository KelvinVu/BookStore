<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="control/UC_SachMoi.ascx" tagname="UC_SachMoi" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" cellspacing="5" class="auto-style6">
    <tr>
        <td style="font-size: x-large; font-weight: bold; color: #FFFFFF; background-color: #00FF00; text-align: center;">SÁCH MỚI CẬP NHẬT</td>
    </tr>
    <tr>
        <td>
            <uc1:UC_SachMoi ID="UC_SachMoi1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

