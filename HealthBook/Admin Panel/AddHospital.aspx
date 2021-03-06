﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/admin.Master" AutoEventWireup="true" CodeBehind="AddHospital.aspx.cs" Inherits="HealthBook.Admin_Panel.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


    
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-center THDM">Add Hospital</h5>
            </div>
            <div class="card-body">

                <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-6 col-md-3 col-form-label text-md-left text-lg-right">Hospital Name</label>

                <div class="col-md-12 col-lg-8">
                    <asp:TextBox ID="HospitalNameTextBox" CssClass="form-control" runat="server" type="text" required="true"></asp:TextBox>
                </div>
            </div>


            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-6 col-md-3 col-form-label text-md-left text-lg-right">Email</label>

                <div class="col-md-12 col-lg-8">
                    <asp:TextBox ID="EmailTextBox" CssClass="form-control" runat="server" required="true" Type="email"></asp:TextBox>
                </div>
            </div>


            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-6 col-md-3 col-form-label text-md-left text-lg-right">Phone Number</label>

                <div class="col-md-12 col-lg-8">
                    <input id="phone" class="form-control" name="phone" type="tel">
                </div>
            </div>

            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-6 col-md-3 col-form-label text-md-left text-lg-right">Password</label>

                <div class="col-md-12 col-lg-8">
                    <asp:TextBox ID="PasswordTextBox" CssClass="form-control" runat="server" type="password" required="true"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-6 col-md-3 col-form-label text-md-left text-lg-right">User Name</label>

                <div class="col-md-12 col-lg-8">
                    <asp:TextBox ID="UserNameTextBox" CssClass="form-control" runat="server" type="text" required="true"></asp:TextBox>

                </div>
            </div>

            <div class="form-group row">
                <label for="FirstNameTextBox" class="col-sm-6 col-md-3 col-form-label text-md-left text-lg-right">Location</label>

                <div class="col-md-12 col-lg-8">
                    <asp:TextBox ID="LocationTextBox" CssClass="form-control" runat="server" type="text" required="true"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row ">
                <div class="offset-lg-3 col-6">
                    <asp:Button ID="SubmitButton" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="SubmitButton_Click" />
                </div>
            </div>

            </div>
        </div>
    </div>

</asp:Content>
