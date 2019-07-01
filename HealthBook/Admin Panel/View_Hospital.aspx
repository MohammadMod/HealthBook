<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/admin.Master" AutoEventWireup="true" CodeBehind="View_Hospital.aspx.cs" Inherits="HealthBook.Admin_Panel.View_Hospital1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4 class="text-center my-3 THDM">View Hospitals</h4>

            </div>

            <asp:GridView ID="ViewHospitalsGridView" CssClass="table table-stripet table-bordered table-hover table-responsive-md text-center" runat="server"></asp:GridView>
        </div>
    </div>

     <script>

         function ChangeHeader() {
            var grid = document.getElementById('<%= ViewHospitalsGridView.ClientID %>');
            grid.rows[0].cells[1].innerText = 'Hospital Name';
            grid.rows[0].cells[3].innerText = 'Phone Number';
            grid.rows[0].cells[5].innerText = 'User Name';
           


            return false;
        };

    </script>
</asp:Content>
