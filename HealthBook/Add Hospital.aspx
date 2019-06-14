<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add Hospital.aspx.cs" Inherits="HealthBook.Add_Hospital" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <div class="container mt-8">
        <div class="border py-3 pl-1">

            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-3 col-form-label text-right">Hospital Name</label>

                <div class="col-sm-7">
                    <asp:TextBox ID="HospitalNameTextBox" CssClass="form-control" runat="server" type="text" required="true"></asp:TextBox>
                </div>
            </div>


            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-3 col-form-label text-right">Email</label>

                <div class="col-sm-7">
                    <asp:TextBox ID="EmailTextBox" CssClass="form-control" runat="server" required="true" Type="email"></asp:TextBox>
                </div>
            </div>


            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-3 col-form-label text-right">Phone Number</label>

                <div class="col-sm-7">
                    <input id="phone" class="form-control" name="phone" type="tel">
                </div>
            </div>

            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-3 col-form-label text-right">Password</label>

                <div class="col-sm-7">
                    <asp:TextBox ID="PasswordTextBox" CssClass="form-control" runat="server" type="password" required="true"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-3 col-form-label text-right">User Name</label>

                <div class="col-sm-7">
                    <asp:TextBox ID="UserNameTextBox" CssClass="form-control" runat="server" type="text" required="true"></asp:TextBox>

                </div>
            </div>

            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-3 col-form-label text-right">Location</label>

                <div class="col-sm-7">
                    <asp:TextBox ID="LocationTextBox" CssClass="form-control" runat="server" type="text" required="true"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row ml-1">
                <div class="offset-3">
                    <asp:Button ID="SubmitButton" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="SubmitButton_Click" />
                </div>
            </div>
        </div>

    </div>    
</asp:Content>



