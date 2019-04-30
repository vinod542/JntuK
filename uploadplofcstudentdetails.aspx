<%@ Page Language="C#" MasterPageFile="~/plofc2.master" AutoEventWireup="true" CodeFile="uploadplofcstudentdetails.aspx.cs" Inherits="uploadplofcstudentdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Selectyear"></asp:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                <asp:ListItem>2009-2013</asp:ListItem>
                <asp:ListItem>2010-2014</asp:ListItem>
                <asp:ListItem>2011-2015</asp:ListItem>
                <asp:ListItem>2011-2013</asp:ListItem>
                <asp:ListItem>2012-2014</asp:ListItem>
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Selectbranch"></asp:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>ECE</asp:ListItem>
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>MECH</asp:ListItem>
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

