<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="Promotions2.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.Promotions2" Theme="GridSkin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="MovieNameLabel" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="73px">
        <Columns>
            <asp:BoundField DataField="ScheduleDate" DataFormatString="{0:dd/MMM/yyyy}" HeaderText="Date" />
            <asp:BoundField DataField="StartTime" DataFormatString="{0: hh:mm (tt)}" HeaderText="Time" />
            <asp:BoundField DataField="Description" HeaderText="Promotion Desc" />
            <asp:BoundField DataField="Name" HeaderText="Restaurant Name" />
        </Columns>
    </asp:GridView>
</asp:Content>
