<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Money Doners.aspx.cs" Inherits="HealthBook.Money_Doners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="form-row ">

                <div class="col-6 col-sm-6 col-md-6 col-lg-6 my-1">
                    <div class="input-group">
                        <asp:TextBox ID="SearchTextBox" placeholder="Search.." CssClass="form-control form-control-lg styleK" runat="server" onkeyup="Search_Gridview(this, 'MoneyDonersGridView')"></asp:TextBox>

                    </div>
                </div>

       </div>

    <asp:GridView ID="MoneyDonersGridView" runat="server">
       
    </asp:GridView>

    <script>

         function ChangeHeader() {
            var grid = document.getElementById('<%= MoneyDonersGridView.ClientID %>');
            //grid.rows[0].cells[0].innerText = '';
            grid.rows[0].cells[1].innerText = 'Donated Amount';
            grid.rows[0].cells[2].innerText = 'Currency';
            grid.rows[0].cells[3].innerText = 'Donation Program';
            grid.rows[0].cells[4].innerText = 'First Name';
            grid.rows[0].cells[5].innerText = 'Last Name';
            grid.rows[0].cells[6].innerText = 'Phone Number';
            grid.rows[0].cells[11].innerText = 'Date of Birth';

            return false;
        };



    </script>
    





</asp:Content>
