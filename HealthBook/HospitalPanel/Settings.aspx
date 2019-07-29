<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalPanel/HostPanel.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="HealthBook.HospitalPanel.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Your default message is:<asp:Label runat="server" ID="Label1"></asp:Label>
    <br />

   Update your message: 
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="49px" TextMode="MultiLine" Width="360px" MaxLength="250"></asp:TextBox>
        <br />
    <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click"/>
    <br />
</asp:Content>
