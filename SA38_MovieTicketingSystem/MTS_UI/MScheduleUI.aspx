<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="MScheduleUI.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.MScheduleUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="MScheduleGridView" runat="server" AutoGenerateColumns="False" 
        onrowcommand="MScheduleGridView_RowCommand">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="MovieCode" />
            <asp:BoundField DataField="MovieName" HeaderText="MovieName" />
            <asp:BoundField DataField="Theatre" HeaderText="Theatre" />
            <asp:BoundField DataField="ScheduleDate" DataFormatString="{0:dd MMM yyyy}" 
                HeaderText="ScheduleDate" />
            <asp:BoundField DataField="StartTime" DataFormatString="{0: HH:mm (tt)}" 
                HeaderText="StartTime" />
            <asp:ButtonField HeaderText="Book?" Text="Book" CommandName="Booking" />
        </Columns>
    </asp:GridView>
    </asp:Content>
