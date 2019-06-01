<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donate Organs.aspx.cs" Inherits="HealthBook.Donate_Organs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
    <div class="col-12 col-lg-6">
        <div id="smartwizard-arrows-success" class="wizard wizard-success mb-4">
            <ul>
                <li><a href="#arrows-success-step-1">Step One<br>
                        <small>ID yourslef</small></a>
                </li>
                <li><a href="#arrows-success-step-2">Step two<br>
                    <small>donate body</small></a>
                </li>
            </ul>

            <div>
                <%-- Add Item on step one --%>
                <div id="arrows-success-step-1" class="">


                    <div id="validation-step-1">
                        <div class="form-group">
                            <label class="form-label">First Name<span class="text-danger">*</span></label>
                            <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" required="true" type="text"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-label">Last Name<span class="text-danger">*</span></label>
                            <asp:TextBox ID="LastNameTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Gender</label>

                            <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="form-control">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>



                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Blood Group</label>

                            <asp:DropDownList ID="BloodTypeDropDownList" CssClass="form-control" runat="server">

                                <asp:ListItem Text="A+" Value="A+">A+</asp:ListItem>
                                <asp:ListItem Text="A-" Value="A-">A-</asp:ListItem>

                                <asp:ListItem Text="B+" Value="B+">B+</asp:ListItem>
                                <asp:ListItem Text="B-" Value="B-">B-</asp:ListItem>

                                <asp:ListItem Text="AB+" Value="AB+">AB+</asp:ListItem>
                                <asp:ListItem Text="AB-" Value="AB-">AB-</asp:ListItem>
                                <asp:ListItem Text="O+" Value="O+">O+</asp:ListItem>
                                <asp:ListItem Text="O-" Value="O-">O-</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label class="form-label">Address<span class="text-danger">*</span></label>
                            
                            <asp:TextBox ID="AddressTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-label">City<span class="text-danger">*</span></label>
                            <asp:TextBox ID="CityTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-label">Email<span class="text-danger">*</span></label>
                            <asp:TextBox ID="EmailTextBox" CssClass="form-control" runat="server" required="true" type="email"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-label">Phone Number<span class="text-danger">*</span></label>
                            <asp:TextBox ID="PhoneNumberTextBox" CssClass="form-control" runat="server" required="true" type="Number"></asp:TextBox>
                        </div>
                    </div>

                    
                    Date of Birth:<asp:TextBox ID="DateOfBirthTextBox" runat="server" required="true" type="date"></asp:TextBox>

                    

                    
                    

                </div>

                <div id="arrows-success-step-2" class="">
                    <%-- Add Item on step two --%>
                </div>

            </div>
        </div>
    </div>

    </div>
    
    
    <p>
        &nbsp;</p>
<%--    <h2><span>Do you want to donate all your organs and tissue? You can save up to 8 lives after you die.<o:p></o:p></span></h2>--%>

    <h2>Are you sure want to donate?</h2>
    <asp:DropDownList ID="AllOrganDonerDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="AllOrganDonerDropDownList_SelectedIndexChanged">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
     </asp:DropDownList>

    <h2>Do you want to donate with all your organs?</h2>
    <asp:DropDownList ID="AllOrSomeDropDownList" runat="server">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Some</asp:ListItem>
    </asp:DropDownList>

        <div id="viewOrgansForm" runat="server">

    Please Chose the organ you want to donate:
    <p>
        <asp:DropDownList ID="OrgansDropDownList" runat="server">
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
        </div>

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
        <asp:DropDownList ID="UseOrgansForDropDownList0" runat="server">
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
