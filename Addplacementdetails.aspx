<%@ Page Language="C#" MasterPageFile="~/Placement Officer.master" AutoEventWireup="true" CodeFile="Addplacementdetails.aspx.cs" Inherits="Addplacementdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Company name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Add Company details"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Date of Drive"></asp:Label>
        </td>
        <td>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Venue"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Type of Drive"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>SELECT</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label10" runat="server" Text="No of Vacency"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Text="Description"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label12" runat="server" Text="Process info"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label13" runat="server" Text="Requried percentage"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label17" runat="server" Text="Elizible Branch"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label14" runat="server" Text="It or DontIt"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label15" runat="server" Text="Acadamic Year"></asp:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
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
            <asp:Label ID="Label16" runat="server" Text="Branch"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </td>
        <td>
            <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                <asp:ListItem>ECE</asp:ListItem>
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>EEE</asp:ListItem>
                <asp:ListItem>MECH</asp:ListItem>
            </asp:CheckBoxList>
            <br />
        </td>
    </tr>
</table>
<br />
<br />
</asp:Content>

