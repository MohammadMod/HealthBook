<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donate Organs.aspx.cs" Inherits="HealthBook.Donate_Organs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />

    	<div class="col-12 col-lg-6">
								<div id="smartwizard-arrows-success" class="wizard wizard-success mb-4">
									<ul>
										<li><a href="#arrows-success-step-1">Step One<br><small>ID yourslef</small></a></li>
										<li><a href="#arrows-success-step-2">Step two<br><small>donate body</small></a></li>
									</ul>

									<div>
										<div id="arrows-success-step-1" class="">
											<input type="text" class="form-control" name="" value="">
										</div>
										<div id="arrows-success-step-2" class="">
											Step Content 2
										</div>
										<div id="arrows-success-step-3" class="">
											Step Content 3
										</div>
										<div id="arrows-success-step-4" class="">
											Step Content 4
										</div>
									</div>
								</div>

							</div>

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
    <h2><span>Do you want to donate all your organs and tissue? You can save up to 8 lives after you die.<o:p></o:p></span></h2>
    <p>
        <asp:DropDownList ID="OrgansDropDownList" runat="server">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Heart</asp:ListItem>
            <asp:ListItem>Lungs</asp:ListItem>
            <asp:ListItem>Kidneys</asp:ListItem>
            <asp:ListItem>Liver</asp:ListItem>
            <asp:ListItem>Corneas</asp:ListItem>
            <asp:ListItem>Pancreas</asp:ListItem>
            <asp:ListItem>Tissue</asp:ListItem>
            <asp:ListItem>Small bowel</asp:ListItem>
            <asp:ListItem>Eyes</asp:ListItem>
        </asp:DropDownList>
    </p>


    <p>
        Do you want to donate blood too?</p>
    <p>
        <asp:DropDownList ID="BloodAnswerDropDownList" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p class="MsoNormal">
        <span>I authorize you to use my organs/tissues for:</span><o:p></o:p></p>
    <p>
        <asp:DropDownList ID="BloodAnswerDropDownList0" runat="server">
            <asp:ListItem>Research</asp:ListItem>
            <asp:ListItem>Transplant</asp:ListItem>
            <asp:ListItem>Research &amp; Transplant</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p class="MsoNormal">
        <u>Write your name</u> <span>&nbsp;<asp:TextBox ID="SignatureTextBox" runat="server"></asp:TextBox>
&nbsp; </span>Signature<o:p></o:p></p>
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
