<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="HomeUI.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.HomeUI" Theme="GridSkin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            text-align: justify right;
            color: #6600CC;
        }
    .style4
    {
        color: #6600CC;
        font-family: Verdana;
        text-align: center;
    }
        .style6
        {
            color: #6600CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="style4"><strong>WELCOME TO PARAMOUNT SILVER</strong></h1>
    <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/Images/SLD_Cineplex_Entertainment_VIP_theatre_exterior.jpg" />
        <%--ImageUrl="~/Images/cinema1.jpg" />--%>
        
        <p class="style3">
        Paramount Silver is a leading movie theatre located at the downtown bay area.It has recently expanded and transformed from one-theatre setting to a Cineplex structure (multi-theatre).The new "Paramount Silver" now 
        has a total of 5 mini-theatres,each is equipped with the latest cinematic sound technology and has luxurious seating arrangement.
         </p>
        <strong>
        <br class="style6" />
        </strong><span class="style6"><strong>CONTACT US</strong>
        <br />
        Paramount Silver<br />
        Levels 5 & 6, Downtown bayArea<br />
        2 Handy Road<br />
        Singapore 229233<br />

        Nearest MRT Station: NE6 / NS24 Dhoby Ghaut
        <br />
        PH: 63378181
       </span>
        
       <br class="style6" />
        <span class="style6">© 2014 Paramount Silver Organisation Holdings Limited. All rights reserved.
    </span>
</asp:Content>
