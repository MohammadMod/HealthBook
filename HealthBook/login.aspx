<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HealthBook.login" %>


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
                <h5>Fully customizable</h5>
              </div>
              <div class="text">
                <i class="la la-reorder"></i>
                <h5>Various sibebars look</h5>
              </div>
              <div class="text">
                <i class="la la-arrow-circle-o-right"></i>
                <h5>RTL direction supports</h5>
              </div>
              <div class="text">
                <i class="la la-tint"></i>
                <h5>Color options</h5>
              </div>
          </div>

          <div class="form-right">
            <div class="header">
                <p><span>SIGN IN</span> TO YOUR ACCOUNT</p>
            </div>
              <div class="form">
                  <div class="input-group1">
                      <i class="fas fa-user"></i>
                      <asp:TextBox ID="emailTextBox" runat="server" placeholder="Email or Phone " Type="email" required="true"></asp:TextBox>
                      <span class="bar"></span>
                  </div>

                  <div class="input-group1">
                      <i class="fas fa-lock"></i>
                      <asp:TextBox ID="PasswordTextBox" runat="server" placeholder="password" Type="password" required="true"></asp:TextBox>
                      <span class="bar"></span>
                  </div>

                    <div class="form-group ml-35 mt-4">
                        <label class="checkb">
                            <input type="checkbox">
                            <asp:CheckBox ID="Reminder" runat="server" Text="Remember me!" />
                            <span class="checkmark"></span>
                        </label>
                    </div>
                 
                  <div class="btnlogin">
                      <div class="row">
                          <div class="col">
                              <asp:Button Text="Sign in" runat="server" CssClass="btn1 btn--gray btn--animated" ID="submit" OnClick="submit_Click" />

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
