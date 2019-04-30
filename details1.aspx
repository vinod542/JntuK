<%@ Page Language="C#" MasterPageFile="~/Upload.master" AutoEventWireup="true" CodeFile="details1.aspx.cs" Inherits="details1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    <asp:Label ID="Label6" runat="server" Text="Details"></asp:Label>
        <table class="style1">
            <tr>
                <td>
    <asp:Label ID="Label3" runat="server" Text="Stream"></asp:Label>
                </td>
                <td>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
    <asp:Label ID="Label4" runat="server" Text="Branch"></asp:Label>
                </td>
                <td>
    <asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
    <asp:Label ID="Label5" runat="server" Text="Acadamic Year"></asp:Label>
                </td>
                <td>
    <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Upload" />
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

