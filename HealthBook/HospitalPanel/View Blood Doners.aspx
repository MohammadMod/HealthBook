﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalPanel/HostPanel.Master" AutoEventWireup="true" CodeBehind="View Blood Doners.aspx.cs" Inherits="HealthBook.HospitalPanel.View_Blood_Doners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="form-row">
         
            <div class="col-3">

                <div class="form-group">
                    <label for="SelectOrganDropDownList">Blood Group</label>

                    <asp:DropDownList ID="BloodGroupDropDownList0" CssClass="form-control"
                        runat="server" AutoPostBack="True">

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

    
    

        <div class="col-12">
            <div class="card">
                <div class="card-header">

                    <h5 class="card-title text-center">View Organe Donate</h5>
                    
                </div>
                    <asp:GridView ID="ViewOrganDonersGridView" CssClass="table table-stripet table-bordered table-hover table-responsive-xl text-center"
                        runat="server">
                        <Columns>
                            <asp:CommandField SelectText="Send Message" ShowSelectButton="True" />
                            <asp:ButtonField CommandName="ViewProfile" Text="View Profile" />

                             <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="cbDeleteHeader" runat="server" AutoPostBack="True" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click"/>
            </div>
        </div>  


        


</asp:Content>