<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalPanel/HostPanel.Master" AutoEventWireup="true" CodeBehind="View Money Donars.aspx.cs" Inherits="HealthBook.HospitalPanel.View_Money_Donars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container-fluid mt-7">



        <div class="form-row mb-3">
            <div class="col-6 col-sm-6 col-md-6 col-lg-6 my-1">
                <div class="input-group">
                    <asp:TextBox ID="SearchTextBox" placeholder="Search.." CssClass="form-control form-control-lg styleK" runat="server" onkeyup="Search_Gridview(this, 'MoneyDonersGridView')"></asp:TextBox>

                </div>
            </div>
        </div>
    </div>

    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title text-center">View Money Donate</h5>

            </div>

            <asp:GridView ID="MoneyDonersGridView" runat="server" OnSelectedIndexChanging="MoneyDonersGridView_SelectedIndexChanging"
                CssClass="table table-stripet table-bordered table-hover table-responsive-xl text-center">
                <Columns>
                    <asp:CommandField SelectText="Send Message" ShowSelectButton="True" />
                </Columns>

            </asp:GridView>
        </div>
    </div>



    <script>

        function ChangeHeader() {
            var grid = document.getElementById('<%= MoneyDonersGridView.ClientID %>');
            grid.rows[0].cells[2].innerText = 'Donated Amount';
            grid.rows[0].cells[3].innerText = 'Currency';
            grid.rows[0].cells[4].innerText = 'Donation Program';
            grid.rows[0].cells[5].innerText = 'First Name';
            grid.rows[0].cells[6].innerText = 'Last Name';
            grid.rows[0].cells[7].innerText = 'Phone Number';
            grid.rows[0].cells[12].innerText = 'Date of Birth';

            return false;
        };



    </script>


</asp:Content>
