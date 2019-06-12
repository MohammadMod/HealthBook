<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View Hospitals.aspx.cs" Inherits="HealthBook.View_Hospitals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-8">
        <div class="border">
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
