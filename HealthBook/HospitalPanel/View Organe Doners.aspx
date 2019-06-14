<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalPanel/HostPanel.Master" AutoEventWireup="true" CodeBehind="View Organe Doners.aspx.cs" Inherits="HealthBook.HospitalPanel.View_Organe_Doners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center mt-7">

        <p>
            Select Organ:
        <asp:DropDownList ID="SelectOrganDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SelectOrganDropDownList_SelectedIndexChanged" >
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

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Blood Group:
        <asp:DropDownList ID="BloodGroupDropDownList0" runat="server" AutoPostBack="True" OnSelectedIndexChanged="BloodGroupDropDownList0_SelectedIndexChanged">

            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem Text="A+" Value="A+">A+</asp:ListItem>
            <asp:ListItem Text="A-" Value="A-">A-</asp:ListItem>

            <asp:ListItem Text="B+" Value="B+">B+</asp:ListItem>
            <asp:ListItem Text="B-" Value="B-">B-</asp:ListItem>

            <asp:ListItem Text="AB+" Value="AB+">AB+</asp:ListItem>
            <asp:ListItem Text="AB-" Value="5">AB-</asp:ListItem>

            <asp:ListItem Text="O+" Value="O-">O+</asp:ListItem>
            <asp:ListItem Text="O-" Value="O-">O-</asp:ListItem>
        </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Organ For:
        <asp:DropDownList ID="OrganForDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="OrganForDropDownList_SelectedIndexChanged">

            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Research</asp:ListItem>
            <asp:ListItem>Transplant</asp:ListItem>
            <asp:ListItem>Research &amp; Transplant</asp:ListItem>

        </asp:DropDownList>
       

    </div>

    
    <div class="container2">

        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title text-center">View Organe Donate</h5>
                    
                </div>
                <div class="table-responsive">
                    <asp:GridView ID="ViewOrganDonersGridView" CssClass="table table-stripet table-bordered table-hover table-responsive-xl text-center"
                        runat="server">
                        <Columns>
                            <asp:CommandField SelectText="Send Message" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>

                </div>
            </div>
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
