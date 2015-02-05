<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="RestaurantMaintenance.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.RestaurantMaintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 256px;
        }
        .style2
        {
            width: 151px;
        }
        .style3
        {
            width: 254px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Restaurant ID"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="ridTextBox" runat="server"></asp:TextBox>
                <asp:Button ID="RetrieveButton" runat="server" onclick="RetrieveButton_Click" 
                    Text="Retrieve" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="ridTextBox" ErrorMessage="Please Provide RestaurantID" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Restraunt Name"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="rnameTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="locationTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="URL"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="urlTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="CreateButton" runat="server" Text="Create" 
        onclick="CreateButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="UpdateButton" runat="server" Text="Update" 
        onclick="UpdateButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="DeleteButton" runat="server" Text="Delete" 
        onclick="DeleteButton_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Red" Width="932px" 
    BorderStyle="None"></asp:TextBox>
</asp:Content>
