<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/admin.Master" AutoEventWireup="true" CodeBehind="Add City.aspx.cs" Inherits="HealthBook.Admin_Panel.Add_City" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-center THDM">Add City</h5>
            </div>
            <div class="card-body">

                <div class="form-group row">
                    <label for="FirstNameTextBox" class="col-sm-6 col-md-3 col-form-label text-md-left text-lg-right">City name</label>

                    <div class="col-md-12 col-lg-8">
                        <asp:TextBox ID="TextBox1" runat="server" required="true" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group row ">
                    <div class="offset-lg-3 col-6">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Add City" OnClick="Button1_Click" />
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
