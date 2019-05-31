<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Log In.aspx.cs" Inherits="HealthBook.Log_In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <p>
        Email:<asp:TextBox ID="EmailTextBox" runat="server" required="true" type="email"></asp:TextBox>
    </p>
    <p>
        Password:<asp:TextBox ID="PasswordTextBox" runat="server" required="true" type="password"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Remember me!
        <asp:CheckBox ID="ReminderCheck" runat="server" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="LogInButton" runat="server" OnClick="LogInButton_Click" Text="Log In" />
    </p>




</asp:Content>
