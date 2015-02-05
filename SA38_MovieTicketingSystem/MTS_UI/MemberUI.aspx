<%@ Page Title="" Language="C#" MasterPageFile="~/MTS_UI/MTS_MasterPage.Master" AutoEventWireup="true" CodeBehind="MemberUI.aspx.cs" Inherits="SA38_MovieTicketingSystem.MTS_UI.MemberUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <%--<script language="javascript" type="text/javascript" src="/Scripts/datetimepicker.js"></script>--%>
    <script language="javascript" type = "text/javascript">
        function validateLength(source, arguments) {
            arguments.IsValid = false;
            if (arguments.Value.length > 10)
                return;
            arguments.IsValid = true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MultiViewMember" runat="server">
        <asp:View ID="ViewLogon" runat="server">
            <asp:Table ID="TableLogon" runat="server">
                <asp:TableRow><asp:TableHeaderCell ColumnSpan="2"><asp:Label ID="LabelTableLogonTitle" runat="server" Text="Register | Logon"></asp:Label></asp:TableHeaderCell></asp:TableRow>
                <asp:TableRow><asp:TableCell><asp:Label ID="LabelUsername" runat="server" Text="Username: "></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" 
                    ControlToValidate="TextBoxUsername" ErrorMessage="Username cannot be left blank." 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorUsername" runat="server" 
                    ControlToValidate="TextBoxUsername" ErrorMessage="Enter the format &quot;MXXXXX&quot; where X = alphanumeric of 5 to 25 length" 
                    ForeColor="Red" ValidationExpression="M\w{5,25}" Display="Dynamic"></asp:RegularExpressionValidator></asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell><asp:Label ID="LabelPassword" runat="server" Text="Password :"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
                    ControlToValidate="TextBoxPassword" ErrorMessage="Password cannot be left blank." 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server" 
                    ControlToValidate="TextBoxPassword" ErrorMessage="Password format &quot;PXXXXX&quot; where X = alphanumeric of 5 to 15 length" 
                    ForeColor="Red" ValidationExpression="P\w{5,15}" Display="Dynamic"></asp:RegularExpressionValidator></asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell><asp:Label ID="LabelRePassword" runat="server" Text="Retype Password :"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxRePassword" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidatorRePassword" runat="server" 
                    ControlToValidate="TextBoxRePassword" ErrorMessage="Retype Password cannot be left blank." 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidatorRePassword" runat="server" 
                    ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxRePassword" 
                    ErrorMessage="Retype Password not the same as above." ForeColor="Red" Display="Dynamic"></asp:CompareValidator></asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Button ID="ButtonRegister" runat="server" OnClick="ButtonRegister_Click" Text="Register" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonLogon" runat="server" OnClick="ButtonLogon_Click" Text="Logon" /></asp:TableCell></asp:TableRow>
            </asp:Table> 
        </asp:View>
        <asp:View ID="ViewMember" runat="server">
            <asp:Table ID="TableMember" runat="server">
                <asp:TableRow><asp:TableHeaderCell ColumnSpan="2"><asp:Label ID="LabelTableMemberTitle" runat="server" Text="Member Details"></asp:Label></asp:TableHeaderCell></asp:TableRow>
                <asp:TableRow><asp:TableCell><asp:Label ID="LabelName" runat="server" Text="Name :"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
                    ControlToValidate="TextBoxName" ErrorMessage="Name cannot be left blank." 
                    ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell></asp:TableRow>
                <%--<asp:TableRow><asp:TableCell><asp:Label ID="LabelDOB" runat="server" Text="DOB :"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxDOB" runat="server"></asp:TextBox>--%>
                <%--<a href="javascript:NewCal('MainContent_TextBoxDOB','ddmmmyyyy',true,24)"><img src="/Images/calendar.gif" width="18" height="18" alt="Pick a date" /></a>--%><%--</asp:TableCell></asp:TableRow>--%>
                <asp:TableRow><asp:TableCell><asp:Label ID="LabelAddress" runat="server" Text="Address :"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell><asp:Label ID="LabelPhone" runat="server" Text="Phone :"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CustomValidator ID="CustomValidatorPhone" runat="server" 
                    ClientValidationFunction="validateLength" ControlToValidate="TextBoxPhone" 
                    ErrorMessage="Length can only be 10 characters." ForeColor="Red" 
                    ValidateEmptyText="True"></asp:CustomValidator></asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell><asp:Label ID="LabelEmail" runat="server" Text="Email :"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell><asp:Label ID="LabelChangePassword" runat="server" Text="Change Password :"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxChangePassword" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidatorChangePassword" runat="server" 
                    ControlToValidate="TextBoxChangePassword" ErrorMessage="Password format &quot;PXXXXX&quot; where X = alphanumeric of 5 to 15 length" 
                    ForeColor="Red" ValidationExpression="P\w{5,15}"></asp:RegularExpressionValidator></asp:TableCell></asp:TableRow>
                <%--<asp:TableRow><asp:TableCell><asp:Label ID="LabelChangeRePassword" runat="server" Text="Retype Password :"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBoxChangeRePassword" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorChangeRePassword" runat="server" ErrorMessage="Retype Password not the same as above." ControlToValidate="TextBoxChangeRePassword" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorChangeRePassword" runat="server" 
                    ControlToCompare="TextBoxChangePassword" ControlToValidate="TextBoxChangeRePassword" 
                    ErrorMessage="Retype Password not the same as above." ForeColor="Red"></asp:CompareValidator></asp:TableCell></asp:TableRow>--%>
                <asp:TableRow><asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Button ID="ButtonUpdate" runat="server" OnClick="ButtonUpdate_Click" Text="Update" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonProceed" runat="server" OnClick="ButtonProceed_Click" Text="Proceed" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonLogout" runat="server" OnClick="ButtonLogout_Click" Text="Logout" /></asp:TableCell>
                    <asp:TableCell><asp:Label ID="LabelUpdateStatus" runat="server" Text=""></asp:Label></asp:TableCell></asp:TableRow>
            </asp:Table>
        </asp:View>
    </asp:MultiView>
</asp:Content>
