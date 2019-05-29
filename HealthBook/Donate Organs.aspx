<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donate Organs.aspx.cs" Inherits="HealthBook.Donate_Organs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">





    <p>
        <br />
        First Name:<asp:TextBox ID="FirstNameTextBox" runat="server" required="true" type="text"></asp:TextBox>
    </p>
    <p>
        Last Name:<asp:TextBox ID="LastNameTextBox" runat="server" required="true" type="text"></asp:TextBox>
    </p>
    <p>
        Date of Birth:<asp:TextBox ID="DateOfBirthTextBox" runat="server" required="true" type="date"></asp:TextBox>
    </p>
    <p>
        Gender:<asp:DropDownList ID="GenderDropDownList" runat="server">
            <asp:ListItem Selected="True">Select</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        Blood Group:<asp:DropDownList ID="BloodTypeDropDownList" runat="server">

      <asp:listitem text="A+" value="A+">A+</asp:listitem>
      <asp:listitem text="A-" value="A-">A-</asp:listitem>

     <asp:listitem text="B+" value="B+">B+</asp:listitem>
     <asp:listitem text="B-" value="B-">B-</asp:listitem>

     <asp:listitem text="AB+" value="AB+">AB+</asp:listitem>
     <asp:listitem text="AB-" value="5">AB-</asp:listitem>

      <asp:listitem text="O+" value="O-">O+</asp:listitem>
     <asp:listitem text="O-" value="O-">O-</asp:listitem>

     
        </asp:DropDownList>
    </p>
    <p>
        Address:<asp:TextBox ID="AddressTextBox" runat="server" required="true" type="text"></asp:TextBox>
    </p>
    <p>
        City:<asp:TextBox ID="CityTextBox" runat="server" required="true" type="text"></asp:TextBox>
    </p>
    <p>
        Email:<asp:TextBox ID="EmailTextBox" runat="server" required="true" type="email"></asp:TextBox>
    </p>
    <p>
        Phone Number:<asp:TextBox ID="PhoneNumberTextBox" runat="server" required="true" type="Number"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
    </p>
    <p>
    </p>





</asp:Content>
