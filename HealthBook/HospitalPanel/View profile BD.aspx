<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalPanel/HostPanel.Master" AutoEventWireup="true" CodeBehind="View profile BD.aspx.cs" Inherits="HealthBook.HospitalPanel.View_profile_BD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class=" offset-lg-2 offset-md-2 offset-sm-1 col-12 col-sm-10 col-md-8 col-lg-8">
        <div class="card">
            <div class="card-header text-center">
                <h5 class="card-title mb-0">View Profile Donare</h5>
            </div>
                <div class="row border-bottom">
                    <div class="col-4">ID:</div>
    
                    <div class="col-8">
                        <asp:Label ID="IDLabel" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row border-bottom">
                    <div class="col-4">
                        First Name:
                    </div>
                    <div class="col-8">
                        <asp:Label ID="FnameLabel" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row border-bottom">
                    <div class="col-4">
                        Last Name:
                    </div>
                    <div class="col-8">
                        <asp:Label ID="LnameLabel" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row border-bottom">
                    <div class="col-4">
                        Phone Number:
                    </div>
                    <div class="col-8">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                
                 
                
                <div class="row border-bottom">
                    <div class="col-4">
                        Blood group:
                    </div>
                    <div class="col-8">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row border-bottom">
                    <div class="col-4">
                        City:
                    </div>
                    <div class="col-8">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
         
               
            <div class="card-footer text-muted">
                <div class="row">
                    <div class="col-12">
                        
                        <div class="form-group">
                            <label class="checkb">
                                <asp:CheckBox ID="CheckBox1" runat="server" />

                                <span class="checkmark ml-1"></span>
                            </label>
                        </div>
                        <div class="d-inline-block">
                            <asp:Button ID="SubmitButton" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="SubmitButton_Click" />
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>



</asp:Content>
