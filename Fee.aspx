<%@ Page Language="C#" MasterPageFile="~/FeeDetails.master" AutoEventWireup="true" CodeFile="Fee.aspx.cs" Inherits="Fee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
    <tr>
    <td style="height: 50px">            <asp:RadioButton ID="RadioButton4" 
            runat="server" GroupName="mani" 
                oncheckedchanged="RadioButton4_CheckedChanged" Text="searchbystudent" 
            AutoPostBack="True" />
</td>
    <td style="height: 50px">            <asp:RadioButton ID="RadioButton5" 
            runat="server" GroupName="mani" 
                Text="searchbygroup" AutoPostBack="True" 
            oncheckedchanged="RadioButton5_CheckedChanged" />
</td>
</td>
<tr>
        <td colspan="2">
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="StudentRollNumber"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
       
    </tr>
    <tr>
        <td colspan="2">
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Stream"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Branch"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>select</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Acadamicyear"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            
            
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="search" onclick="Button1_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

