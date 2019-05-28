<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add Hospital.aspx.cs" Inherits="HealthBook.Add_Hospital" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



Hospital Name:  <asp:TextBox ID="HospitalNameTextBox" runat="server" type="text" required="true"></asp:TextBox>
    <br />
Email:  <asp:TextBox ID="EmailTextBox" runat="server" required="true" Type="email"></asp:TextBox>
    <br />
&nbsp;Phone Number:   <asp:TextBox ID="PhoneNumberTextBox" runat="server" required="true" Type="Number"></asp:TextBox>
    <br />
Password:   <asp:TextBox ID="PasswordTextBox" runat="server" type="password" required="true"></asp:TextBox>
    <br />
User Name:   <asp:TextBox ID="UserNameTextBox" runat="server" type="text" required="true"></asp:TextBox>
    <br />
Location:   <asp:TextBox ID="LocationTextBox" runat="server" type="text" required="true"></asp:TextBox>
   
    
    <br />
    <br />
   
    
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
</asp:Content>



