<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="MoviesUI.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.MoviesUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:Table ID="TableMovie" runat="server">
    </asp:Table>
</asp:Content>
