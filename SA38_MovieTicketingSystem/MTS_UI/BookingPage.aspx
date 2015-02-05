<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="BookingPage.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.BookingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblSeatAvailability" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#003366"></asp:Label>
        &nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /><br />
    <asp:Panel ID="Panel1" runat="server" Height="237px" Width="666px" style="margin-bottom: 56px; margin-left: 213px;" BackColor="#66FFCC" BorderStyle="Groove" align ="center" BackImageUrl="~/Images/seat_panel_image.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Table ID="Table1" runat="server" Width="535px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:CheckBox ID="c1" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True" OnCheckedChanged ="CB_CheckedChanged" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="c2" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True" OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C3" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C4" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                 <asp:TableCell Width="40px">
                 </asp:TableCell>  
  
                <asp:TableCell>
                    <asp:CheckBox ID="C5" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C6" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="c7" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="c8" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
              </asp:TableRow> 
              <asp:TableRow>
                <asp:TableCell>
                    <asp:CheckBox ID="c9" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C10" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C11" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C12" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/> 
                </asp:TableCell>
                  <asp:TableCell Width="40px">
                 </asp:TableCell>

                <asp:TableCell>
                    <asp:CheckBox ID="C13" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C14" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/> 
                </asp:TableCell>
                  <asp:TableCell>
                    <asp:CheckBox ID="c15" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C16" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
              </asp:TableRow>
              <asp:TableRow>
                <asp:TableCell>
                    <asp:CheckBox ID="C17" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C18" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/> 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C19" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C20" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                  <asp:TableCell Width="40px">
                 </asp:TableCell>

                <asp:TableCell>
                    <asp:CheckBox ID="C21" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="C22" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                  <asp:TableCell>
                    <asp:CheckBox ID="c23" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="c24" runat="server" BackColor="#009933" BorderColor="#00CC00" BorderStyle="Dotted" ForeColor="#009933" Height="40px" style="margin-left: 0px" Width="40px" AutoPostBack="True"  OnCheckedChanged ="CB_CheckedChanged"/>
                </asp:TableCell>
              </asp:TableRow>
       </asp:Table>
         <caption>
                &nbsp;<asp:Label ID="lblAmountTag" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#FFFFCC" Text="Total Amount : "></asp:Label>
                &nbsp;<asp:Label ID="lblAmount" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ConfirmBtn" runat="server" BackColor="#333399" BorderStyle="Ridge" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="40px" OnClick="ConfirmBtn_Click" Text="Confirm" Width="74px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            </caption>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         </asp:Panel>
</asp:Content>
