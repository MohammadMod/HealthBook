<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donate Money.aspx.cs" Inherits="HealthBook.Donate_Money" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">





    <p align="center" class="MsoNormal">
        <strong><span>Donation Info</span></strong><b><span><o:p></o:p></span></b></p>
    <br />
    <br />
    <b><span>Amount of donation :&nbsp;
    <asp:TextBox ID="AmountTextBox" runat="server" required="true" type="number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Currencey:<asp:TextBox ID="CurrenceyTextBox" runat="server" required="true" type="text"></asp:TextBox>
    <br />
    <br />
    </span></b>
    <p class="MsoNormal">
        <b><span>Donation Program<asp:DropDownList ID="DonationProgramDropDownList" runat="server">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Naming Opportunity </asp:ListItem>
            <asp:ListItem>Sponsor a Child</asp:ListItem>
            <asp:ListItem>Zakat Money</asp:ListItem>
            <asp:ListItem>Monthly Dontion</asp:ListItem>
            <asp:ListItem>Patient Sponsor</asp:ListItem>

        </asp:DropDownList>
        </span></b>
    </p>
    <p class="MsoNormal">
        &nbsp;</p>
    <p class="MsoNormal">
        &nbsp;</p>
    <p class="MsoNormal">
        <b><span>First Name</span></b><span class="required"><b><span><o:p>:<asp:TextBox ID="FirstNameTextBox" runat="server" required="true" type="text"></asp:TextBox>
        </o:p></span></b></span>
    </p>
    <p class="MsoNormal">
        <b><span>Last Name<o:p>:<asp:TextBox ID="LastNameTextBox" runat="server" required="true" type="text"></asp:TextBox>
        </o:p></span></b>
    </p>
    <p class="MsoNormal">
        <b><span>Email address<o:p>:<asp:TextBox ID="EmailTextBox" runat="server" required="true" type="email"></asp:TextBox>
        </o:p>
        </span></b>
    </p>
    <p class="MsoNormal">
        <o:p>
        <b><span>Country<o:p>:<asp:TextBox ID="CountryTextBox" runat="server" required="true" type="text"></asp:TextBox>
        </o:p>
        </span></b>
        </o:p>
    </p>
    <p class="MsoNormal">
        <o:p>
        <o:p>
        </o:p>
        </o:p>
    </p>
    <p class="MsoNormal">
        <b><span>City</span></b><strong><span><o:p>:<b><asp:TextBox ID="CityTextBox" runat="server" required="true" type="text"></asp:TextBox>
        </b></o:p></span></strong>
    </p>
    <p class="MsoNormal">
        <b><span>Address<o:p>:<asp:TextBox ID="AddressTextBox" runat="server" required="true" type="text"></asp:TextBox>
        </o:p></span></b>
    </p>
    <p class="MsoNormal">
        <b><span>Phone<o:p>:<asp:TextBox ID="PhoneNumberTextBox" runat="server" required="true" type="number"></asp:TextBox>
        </o:p></span></b>
    </p>
    <p class="MsoNormal">
        <b><span>Day Of Birth<o:p>:<asp:TextBox ID="DateOfBirthTextBox" runat="server" required="true" type="date"></asp:TextBox>
        </o:p></span></b>
    </p>
    <p class="MsoNormal">
        <b><span>Gender<o:p>:<asp:DropDownList ID="GenderDropDownList" runat="server">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        </o:p></span></b>
    </p>
    <p class="MsoNormal">
        <br />
        <b><span>Job<o:p>:<asp:TextBox ID="JobTextBox" runat="server" required="true" type="text"></asp:TextBox>
        </o:p>
        </span></b>
    </p>
    <p class="MsoNormal">
        <b><span>Company<o:p>:<asp:TextBox ID="CompanyTextBox" runat="server" required="true" type="text"></asp:TextBox>
        </o:p>
        </span></b>
    </p>
    <p class="MsoNormal">
        &nbsp;</p>
    <p class="MsoNormal">
        <b><span>
        <o:p></o:p>
        <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
        </span></b>
    </p>
    <p class="MsoNormal">
        &nbsp;</p>





</asp:Content>
