﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HealthBook.login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/login.css" rel="stylesheet" />
    <link href="css/vendors.bundle.css" rel="stylesheet" />
    <div id="wrapper">
      <div class="form-content">
          <div class="form-left1 d-none d-lg-block">
              <div class="headertext">
                <h1>HealthBook</h1>
              </div>
              <div class="text">
                <i class="la la-thumbs-up"></i>
                <h3>Fully customizable</h3>
              </div>
              <div class="text">
                <i class="la la-reorder"></i>
                <h4>Various sibebars look</h4>
              </div>
              <div class="text">
                <i class="la la-arrow-circle-o-right"></i>
                <h4>RTL direction supports</h4>
              </div>
              <div class="text">
                <i class="la la-tint"></i>
                <h4>Color options</h4>
              </div>
          </div>

          <div class="form-right">
            <div class="header">
                <p><span>SIGN IN</span> TO YOUR ACCOUNT</p>
            </div>
            <div class="form">
              <div class="input-group1">
                <i class="fas fa-user"></i>
<%--                <input type="text" placeholder="Email or Phone " id="email" runat="server">--%>
                  <asp:TextBox ID="emailTextBox" runat="server" placeholder="Email or Phone "></asp:TextBox>
                <span class="bar"></span>
              </div>

              <div class="input-group1">
                <i class="fas fa-lock"></i>
<%--                <input type="password" placeholder="password" id="passwrd" runat="server">--%>
                  <asp:TextBox ID="PasswordTextBox" runat="server" placeholder="password"></asp:TextBox>

                <span class="bar"></span>
              </div>
              <div class="btnlogin">
                <div class="row">
                  <div class="col">
                      <asp:Button Text="Sign in" runat="server" CssClass="btn1 btn--gray btn--animated" id="submit" OnClick="submit_Click"/>
                    
                      <asp:CheckBox ID="Reminder" runat="server" Text="Remember me!" />
                  </div>
                  <div class="col text-right">
                    <a href="#" class="forgot">Forgot Password</a>
                  </div>
                </div>
              </div>



            </div>

          </div>
      </div>
    </div>

</asp:Content>
