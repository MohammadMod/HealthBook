<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalPanel/HostPanel.Master" AutoEventWireup="true" CodeBehind="View Profile.aspx.cs" Inherits="HealthBook.HospitalPanel.View_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   ID: <asp:Label ID="IDLabel" runat="server" Text="Label"></asp:Label>
    <br />
   First Name: <asp:Label ID="FnameLabel" runat="server" Text="Label"></asp:Label>
        <br />

Last Name: <asp:Label ID="LnameLabel" runat="server" Text="Label"></asp:Label>
        <br />

Phone Number: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />

Email: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />

Gender: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />

Address: <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />

Date of birth: <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        <br />

Blood group: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        <br />

City: <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        <br />

Organ: <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        <br />

Signature: <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
        <br />

Blood Dooner ?: <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        <br />

Use Organ for: <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
        <br />

Date: <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
        
        <br />
    <asp:CheckBox ID="CheckBox1" runat="server" />

    <asp:Button ID="SubmitButton" runat="server" Text="Submit" onclick="SubmitButton_Click"/>
</asp:Content>
