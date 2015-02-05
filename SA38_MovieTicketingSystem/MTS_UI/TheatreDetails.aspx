<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="TheatreDetails.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.TheatreDetails" Theme="GridSkin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 98%;
        }
        .style3
        {
            width: 122px;
        }
        .style4
        {
            width: 501px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1><asp:Label ID="Label1" runat="server" Text="Theatre Details"></asp:Label></h1>
    <asp:GridView ID="Theatredgv" runat="server" 
        onrowcommand="Theatredgv_RowCommand" 
        onselectedindexchanged="Theatredgv_SelectedIndexChanged" CellPadding="4" 
        Font-Size="Medium" ForeColor="#333333" GridLines="None" Height="237px" 
        Width="345px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:ButtonField Text="Select" ButtonType="Button" />
        </Columns>
       
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
       
    </asp:GridView>
    
    <asp:Label ID="status" runat="server" Text="Label"></asp:Label>
    
    </br>
    </br>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Location" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="locationtxt" runat="server" style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="locationtxt" ErrorMessage="Please enter location" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Description" Font-Size="Medium"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="descptxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="descptxt" ErrorMessage="Please enter description" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="createbtn" runat="server" Text="Create" 
        onclick="createbtn_Click" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Button ID="deletebtn" runat="server" Text="Delete" 
        onclick="deletebtn_Click" />
</asp:Content>
