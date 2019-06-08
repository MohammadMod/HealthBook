<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donate Money.aspx.cs" Inherits="HealthBook.Donate_Money" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="mt-5"></div>
    <div class="container">
        <div class="text-center THDM">Donation Info</div>
        
        <div class="border py-3 pr-1">
            <div class="form-group row ">
                <label for="AmountTextBox" class="col-sm-3 col-form-label text-right">Amount of donation </label>
                <div class="col-sm-6">
                    <asp:TextBox ID="AmountTextBox" runat="server" CssClass="form-control" type="number"></asp:TextBox>
                </div>
                
                <div class="col-sm-2">

                    <%--<asp:TextBox ID="CurrenceyTextBox" CssClass="custom-select" runat="server" required="true" type="text"></asp:TextBox>--%>

                    <asp:DropDownList ID="CurrenceyTextBox" CssClass="custom-select" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-3 col-form-label text-right">First Name</label>
                <div class="col-sm-7">
                    <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" required="true" type="text"></asp:TextBox>
                </div>
            </div>





            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-3 col-form-label text-right">Donation Program</label>
                <div class="col-sm-6 col-md-7">
                    <asp:DropDownList ID="DonationProgramDropDownList" CssClass="custom-select" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Naming Opportunity </asp:ListItem>
                        <asp:ListItem>Sponsor a Child</asp:ListItem>
                        <asp:ListItem>Zakat Money</asp:ListItem>
                        <asp:ListItem>Monthly Dontion</asp:ListItem>
                        <asp:ListItem>Patient Sponsor</asp:ListItem>

                    </asp:DropDownList>
                </div>
            </div>




            <div class="form-group row">
                <label for="LastNameTextBox" class="col-sm-3 col-form-label text-right">Last Name</label>
                <div class="col-sm-7">
                    <asp:TextBox ID="LastNameTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                </div>
            </div>


            <div class="form-group row">
                <label for="EmailTextBox" class="col-sm-3 col-form-label text-right">Email address</label>
                <div class="col-sm-7">
                    <asp:TextBox ID="EmailTextBox" CssClass="form-control" runat="server" required="true" type="email"></asp:TextBox>
                </div>
            </div>




            <div class="form-group row">
                <label for="CountryTextBox" class="col-sm-3 col-form-label text-right">Country</label>
                <div class="col-sm-7">
                    <asp:TextBox ID="CountryTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="CityTextBox" class="col-sm-3 col-form-label text-right">City</label>
                <div class="col-sm-7">
                    <asp:TextBox ID="CityTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="AddressTextBox" class="col-sm-3 col-form-label text-right">Address</label>
                <div class="col-sm-7">
                    <asp:TextBox ID="AddressTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                </div>
            </div>


            <div class="form-group row">
                <label for="PhoneNumberTextBox" class="col-sm-3 col-form-label text-right">Phone</label>
                <div class="col-sm-7">
                    <asp:TextBox ID="PhoneNumberTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                </div>
            </div>


            <div class="form-group row">
                <label for="DateOfBirthTextBox" class="col-sm-3 col-form-label text-right">Day Of Birth</label>
                <div class="col-sm-7">
                    <input class="form-control" type="text" name="DateOfBirthTextBox">
                </div>
            </div>


            <div class="form-group row">
                <label for="GenderDropDownList" class="col-sm-3 col-form-label text-right">Gender</label>
                <div class="col-sm-7">
                    <asp:DropDownList ID="GenderDropDownList" CssClass="custom-select" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>


            <div class="form-group row">
                <label for="JobTextBox" class="col-sm-3 col-form-label text-right">Job</label>
                <div class="col-sm-7">
                    <asp:TextBox ID="JobTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="CompanyTextBox" class="col-sm-3 col-form-label text-right">Company</label>
                <div class="col-sm-7">
                    <asp:TextBox ID="CompanyTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-6 offset-3">
                    <asp:Button ID="SubmitButton" CssClass="btn btn-info" data-toggle="modal" data-target="#exampleModalCenter"
                        runat="server" OnClick="SubmitButton_Click" Text="Submit" />
                </div>
            </div>
        </div>
        



        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Veryfication Code:</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="form-group">
                    <asp:TextBox ID="verificationCodeTextBox" CssClass="form-control" runat="server" AutoPostBack="False" OnTextChanged="verificationCodeTextBox_TextChanged" type="number" MaxLength="6"></asp:TextBox>
                    
                </div>
              </div>
              <div class="modal-footer">
                  <asp:Button ID="VerifyButton" runat="server" CssClass="btn btn-success" OnClick="VerifyButton_Click" Text="Verify" />
              </div>
            </div>
          </div>
        </div>

        
                
        

    </div>


</asp:Content>
