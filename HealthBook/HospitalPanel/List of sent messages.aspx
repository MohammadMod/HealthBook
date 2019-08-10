<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalPanel/HostPanel.Master" AutoEventWireup="true" CodeBehind="List of sent messages.aspx.cs" Inherits="HealthBook.HospitalPanel.List_of_sent_messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12">
        <div class="card">
            <div class="card-header">

                <h5 class="card-title text-center">View Organe Donate</h5>
                    
            </div>
            <asp:GridView ID="ViewOrganDonersGridView" CssClass="table table-stripet table-bordered table-hover table-responsive-xl text-center" runat="server" AutoGenerateColumns="True">
            </asp:GridView>
            <hr />
            <div class="form-row ml-5 mb-3">
              
            </div>
        </div>
    </div>

</asp:Content>
