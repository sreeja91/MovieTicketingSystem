<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="NewSchedule.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.NewSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <style type="text/css">
        .style1
        {
            width: 98%;
        }
        .style2
        {
            width: 362px;
        }
         .style3
         {
             height: 26px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1><asp:Label ID="Label5" runat="server" Text="Movie Schedule"></asp:Label></h1>
    <br />
    <asp:Label ID="status" runat="server" Font-Size="Medium" ForeColor="Red" 
        Text="Label"></asp:Label>
    <br />
    <table class="style1">
    <tr>
             <td class="style2">
                <asp:Label ID="Idlabel" runat="server" Text="ID" Font-Size="Medium"></asp:Label>
            </td>
            <td style="margin-left: 80px">
                <asp:DropDownList ID="iddropdown" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="iddropdown_SelectedIndexChanged">
                </asp:DropDownList>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        <tr>
             <td class="style2">
                <asp:Label ID="movieidlbl" runat="server" Text="Movie" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                
                <asp:DropDownList ID="Moviedropdown" runat="server">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="theatreidlbl" runat="server" Text="Theatre" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                
                <asp:DropDownList ID="theatredropdown" runat="server" 
                    onselectedindexchanged="theatredropdown_SelectedIndexChanged">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="timingidlbl" runat="server" Text="Timing" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="timingdropdown" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="schdatelbl" runat="server" Text="Schedule Date" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="scheddatetxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="scheddatetxt" ErrorMessage="Please enter schedule date" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
        </br>  
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
         <asp:Button 
        ID="createbtn" runat="server" Text="Create" onclick="createbtn_Click" />
    &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
        ID="updatebtn" runat="server" Text="Update" onclick="updatebtn_Click" />
    &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="deletebtn" runat="server" Text="Delete" 
        onclick="deletebtn_Click" />
    
    
    
    
    
    
</asp:Content>
