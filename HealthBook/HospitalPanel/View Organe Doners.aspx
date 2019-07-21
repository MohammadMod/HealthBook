<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalPanel/HostPanel.Master" AutoEventWireup="true" CodeBehind="View Organe Doners.aspx.cs" Inherits="HealthBook.HospitalPanel.View_Organe_Doners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container-fluid mt-7">

        <div class="form-row">
            <div class="col-3">
                <div class="form-group">
                    <label for="SelectOrganDropDownList">Select Organ</label>

                    <asp:DropDownList ID="SelectOrganDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SelectOrganDropDownList_SelectedIndexChanged">
                        <asp:ListItem>All</asp:ListItem>
                        <asp:ListItem>Heart</asp:ListItem>
                        <asp:ListItem>Lungs</asp:ListItem>
                        <asp:ListItem>Kidneys</asp:ListItem>
                        <asp:ListItem>Liver</asp:ListItem>
                        <asp:ListItem>Corneas</asp:ListItem>
                        <asp:ListItem>Pancreas</asp:ListItem>
                        <asp:ListItem>Tissue</asp:ListItem>
                        <asp:ListItem>Small bowel</asp:ListItem>
                        <asp:ListItem>Eyes</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
           
            <div class="col-3">
                <div class="form-group">
                    <label for="SelectOrganDropDownList">Organ For</label>

                    <asp:DropDownList ID="OrganForDropDownList" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="OrganForDropDownList_SelectedIndexChanged">
                        <asp:ListItem>All</asp:ListItem>
                        <asp:ListItem>Research</asp:ListItem>
                        <asp:ListItem>Transplant</asp:ListItem>
                        <asp:ListItem>Research &amp; Transplant</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="col-3">
                <div class="form-group">
                    <label for="SelectOrganDropDownList">City</label>

                    <asp:DropDownList ID="cityDropDownList" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="cityDropDownList_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="form-row mb-3">
            <div class="col-6">
                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Search .." runat="server" onkeyup="Search_Gridview(this, 'ViewOrganDonersGridView')"></asp:TextBox>
            </div>
        </div>
    </div>

    
    

        <div class="col-12">
            <div class="card">
                <div class="card-header">

                    <h5 class="card-title text-center">View Organe Donate</h5>
                    
                </div>
                    <asp:GridView ID="ViewOrganDonersGridView" CssClass="table table-stripet table-bordered table-hover table-responsive-xl text-center"
                        runat="server" OnSelectedIndexChanged="ViewOrganDonersGridView_SelectedIndexChanged" OnRowCommand="ViewOrganDonersGridView_RowCommand">
                        <Columns>
                            <asp:CommandField SelectText="Send Message" ShowSelectButton="True" />
                            <asp:ButtonField CommandName="ViewProfile" Text="View Profile" />

<%--                            <asp:ButtonField Text="View Profile" />--%>

                        </Columns>

                    </asp:GridView>

            </div>
        </div>



    

     <script>

         function ChangeHeader() {
            var grid = document.getElementById('<%= ViewOrganDonersGridView.ClientID %>');
            grid.rows[0].cells[2].innerText = 'First Name';
            grid.rows[0].cells[3].innerText = 'Last Name';
            grid.rows[0].cells[4].innerText = 'Phone Number';
            grid.rows[0].cells[8].innerText = 'Date of Birth';
            grid.rows[0].cells[9].innerText = 'Blood Group';
            grid.rows[0].cells[13].innerText = 'Blood Donner ?';
            grid.rows[0].cells[14].innerText = 'Organs For ?';


            return false;
         };

         
    </script>

  

</asp:Content>
