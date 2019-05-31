<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View Organ Doners.aspx.cs" Inherits="HealthBook.View_Organ_Doners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Select Organ:
        <asp:DropDownList ID="SelectOrganDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SelectOrganDropDownList_SelectedIndexChanged">
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
      <asp:listitem text="A+" value="A+">A+</asp:listitem>
      <asp:listitem text="A-" value="A-">A-</asp:listitem>

     <asp:listitem text="B+" value="B+">B+</asp:listitem>
     <asp:listitem text="B-" value="B-">B-</asp:listitem>

     <asp:listitem text="AB+" value="AB+">AB+</asp:listitem>
     <asp:listitem text="AB-" value="5">AB-</asp:listitem>

      <asp:listitem text="O+" value="O-">O+</asp:listitem>
     <asp:listitem text="O-" value="O-">O-</asp:listitem>
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Organ For:
        <asp:DropDownList ID="OrganForDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="OrganForDropDownList_SelectedIndexChanged">
          
            <asp:ListItem>All</asp:ListItem>
             <asp:ListItem>Research</asp:ListItem>
            <asp:ListItem>Transplant</asp:ListItem>
            <asp:ListItem>Research &amp; Transplant</asp:ListItem>

        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="ViewOrganDonersGridView" runat="server" OnSelectedIndexChanged="ViewOrganDonersGridView_SelectedIndexChanged">
            <Columns>
                <asp:CommandField SelectText="Send Message" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </p>




</asp:Content>
