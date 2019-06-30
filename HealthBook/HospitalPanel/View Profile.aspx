<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalPanel/HostPanel.Master" AutoEventWireup="true" CodeBehind="View Profile.aspx.cs" Inherits="HealthBook.HospitalPanel.View_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" offset-lg-2 offset-md-2 offset-sm-1 col-12 col-sm-10 col-md-8 col-lg-8">
        <div class="card">
            <div class="card-header text-center">
                <h5 class="card-title mb-0">Card with button</h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-4">ID:</div>
    
                    <div class="col-8">
                        <asp:Label ID="IDLabel" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        First Name:
                    </div>
                    <div class="col-8">
                        <asp:Label ID="FnameLabel" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Last Name:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="LnameLabel" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Phone Number:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Email:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Gender:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Address:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Date of birth:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Blood group:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        City:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Organ:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Signature:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Blood Dooner ?:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Use Organ for:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        Date:
                    </div>
                    <div class="col-6">
                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="card-footer text-muted">
                <div class="row">
                    <div class="col-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </div>
                    <div class="col-6">
                        <asp:Button ID="SubmitButton" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="SubmitButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
