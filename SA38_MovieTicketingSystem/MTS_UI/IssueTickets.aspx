<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="IssueTickets.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.IssueTickets" Theme ="GridSkin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="bookingIDLabel" runat="server" Text="Enter Booking ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="IDTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="go_Button" runat="server" onclick="go_Button_Click" Text="GO" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="IDTextBox" ErrorMessage="Please Provide Booking ID" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="921px" BorderStyle="None" 
        ForeColor="Red" BackColor="#FFFFCC"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" Height="174px" Width="632px" AutoGenerateColumns="False" 
        EnableViewState="False">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="BookingID" />
            <asp:BoundField DataField="Name" HeaderText="MemberName" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone.No" />
            <asp:BoundField DataField="TheatreId" HeaderText="Theatre" />
            <asp:BoundField DataField="ScheduleDate" HeaderText="Date" 
                DataFormatString="{0:dd/MMM/yyyy}" />
            <asp:BoundField DataField="MovieName" HeaderText="MovieName" />
            <asp:BoundField DataField="StartTime" DataFormatString="{0:HH:mm (tt)}" 
                HeaderText="StartTime" />
            <asp:BoundField DataField="EndTime" DataFormatString="{0:HH:mm (tt)}" 
                HeaderText="EndTime" />
        </Columns>
        <HeaderStyle BorderStyle="Solid" />
    </asp:GridView>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Proceed" 
        onclick="ProceedButton_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;<p>
        &nbsp;</p>
</asp:Content>
