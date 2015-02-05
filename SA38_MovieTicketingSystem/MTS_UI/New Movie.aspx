<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="New Movie.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.Movies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 97%;
        }
        .style2
        {
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1><asp:Label ID="Label1" runat="server" Text="Movie Maintenance"></asp:Label></h1>
    <asp:TextBox ID="status" runat="server" BorderStyle="None"></asp:TextBox>
    <br />
   <h2> <asp:Label ID="statuslbl" runat="server" Text="Label" ForeColor="Red"></asp:Label></h2>
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="idlbl" runat="server" Text="Movie ID" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="idtxt" runat="server" ForeColor="Black"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="retrievebtn" runat="server" Text="Retrieve" 
                    onclick="retrievebtn_Click" CausesValidation="False" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="idtxt" ErrorMessage="Please enter the Movie Id" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="namelbl" runat="server" Text="Name" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="nametxt" ErrorMessage="Please enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="descplbl" runat="server" Text="Description" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="descptxt" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="descptxt" ErrorMessage="Please enter description" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="ratinglbl" runat="server" Text="Rating" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ratingtxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ratingtxt" ErrorMessage="Please enter Rating" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="urllbl" runat="server" Text="Content URL" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="urltxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="urltxt" ErrorMessage="Please enter URL" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="durlbl" runat="server" Text="Duration" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="durationtxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="durationtxt" ErrorMessage="Please enter Duration" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="pricelbl" runat="server" Text="Price" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="pricetxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="pricetxt" ErrorMessage="Please enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="pricetxt" ErrorMessage="Please enter valid Amount" 
                    ForeColor="Red" ValidationExpression="^\d{2,3}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <br />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="createbtn" runat="server" Text="Create" 
        onclick="createbtn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="updatebtn" runat="server" Text="Update" 
        onclick="updatebtn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="deletebtn" runat="server" Text="Delete" 
        onclick="deletebtn_Click" />
    
    
    
    <br />
</asp:Content>
