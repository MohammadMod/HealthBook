<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View Hospitals.aspx.cs" Inherits="HealthBook.View_Hospitals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center mt-7">
        <div>
            <h4 class="text-center my-3 THDM">View Hospitals</h4>

        </div>
        <div class="border p-3">
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
