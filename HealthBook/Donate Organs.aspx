<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donate Organs.aspx.cs" Inherits="HealthBook.Donate_Organs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-8">
    <div class="col-12 col-lg-12">
        <div id="smartwizard-arrows-danger" class="wizard wizard-primary mb-4">
            <ul>
                <li><a href="#arrows-success-step-1">Step One<br>
                        <small>ID yourslef</small></a>
                </li>
                <li><a href="#arrows-success-step-2">Step two<br>
                    <small id="dawd">donate body</small></a>
                    
                </li>
            </ul>

            <div>
                <%-- Add Item on step one --%>
                <div id="arrows-success-step-1" >

                    <div id="validation-step-1" class="col-10 offset-1">
                        <div class="form-group">
                            <label class="form-label">First Name<span class="text-danger">*</span></label>
                            <asp:TextBox ID="FirstNameTextBox" name="wizard-userName" runat="server" CssClass="form-control required"  type="text"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-label">Last Name<span class="text-danger">*</span></label>
                            <asp:TextBox ID="LastNameTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Gender</label>

                            <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="custom-select">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        
						<div class="form-group mb-xl-0">
							<label class="form-label">Date of Birth<span class="text-danger">*</span></label>
							<input class="form-control" type="text" name="DateOfBirthTextBox">
						</div>

                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Blood Group</label>

                            <asp:DropDownList ID="BloodTypeDropDownList" CssClass="custom-select" runat="server">

                                <asp:ListItem Text="A+" Value="A+">A+</asp:ListItem>
                                <asp:ListItem Text="A-" Value="A-">A-</asp:ListItem>

                                <asp:ListItem Text="B+" Value="B+">B+</asp:ListItem>
                                <asp:ListItem Text="B-" Value="B-">B-</asp:ListItem>

                                <asp:ListItem Text="AB+" Value="AB+">AB+</asp:ListItem>
                                <asp:ListItem Text="AB-" Value="AB-">AB-</asp:ListItem>
                                <asp:ListItem Text="O+" Value="O+">O+</asp:ListItem>
                                <asp:ListItem Text="O-" Value="O-">O-</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label class="form-label">Address<span class="text-danger">*</span></label>
                            
                            <asp:TextBox ID="AddressTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-label">City<span class="text-danger">*</span></label>
                            <asp:TextBox ID="CityTextBox" CssClass="form-control" runat="server" required="true" type="text"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-label">Email<span class="text-danger">*</span></label>
                            <asp:TextBox ID="EmailTextBox" CssClass="form-control" runat="server" required="true" type="email"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-label">Phone Number<span class="text-danger">*</span></label>
                            
                            <input id="phone" class="form-control" name="phone" type="tel">

                        </div>


                        
					    
                    </div>
                </div>

                <%-- Add Item on step two --%>
                 <div id="arrows-success-step-2" class="col-12">

                    <div id="validation-step-2" class="col-10 offset-1">

                        <div class="form-group ">
                            <h4 class="font_oswald">Are you sure want to donate?</h4>

                            <select class="form-control" id="Donate">
                                <option value="NO">No</option>
                                <option value="YES">Yes</option>
                            </select>
                        </div>

                        <div class="form-group" id="DAS" style="display:none;" >
                            <h5 class="font_oswald">Do you want to donate with all your organs?</h5>
                            
                            <select class="form-control" id="Donatestate">
                                <option value="All">All</option>
                                <option value="Some">Some</option>
                            </select>
                        </div>

                        <div id="viewOrgansForm" style="display:none;">
                            <p class="font_oswald">Please Chose the organ you want to donate:</p>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    Heart
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    Lungs
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    Kidneys
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox3" runat="server" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    Liver
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox4" runat="server" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    Corneas
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox5" runat="server" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    Pancreas
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox6" runat="server" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    l bowel
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox7" runat="server" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    Smal
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox8" runat="server" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    Eyes
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox9" runat="server" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>


                        <div class="form-group ">
                            <h4 class="font_oswald">Do you want to donate blood too?</h4>
                            <asp:DropDownList CssClass="custom-select" ID="BloodAnswerDropDownList" runat="server">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>


                        <div class="form-group ">
                            <p class="font_oswald">I authorize you to use my organs/tissues for:</p>
                            <asp:DropDownList CssClass="custom-select" ID="UseOrgansForDropDownList0" runat="server">
                                <asp:ListItem>Research</asp:ListItem>
                                <asp:ListItem>Transplant</asp:ListItem>
                                <asp:ListItem>Research &amp; Transplant</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group row">

                            <p class="d-inline col-3">Your name & Signature</p>
                            <div class=" col-9">
                                <asp:TextBox ID="SignatureTextBox" CssClass="form-control2" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <hr />
                        <div class="form-group mt-2">
                            <asp:Button ID="SubmitButton" CssClass="btn btn-info" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                        </div>
                    </div>
                </div>
                    
                    
            </div>
        </div>
    </div>
</div>

    
    
<%--    <h2><span>Do you want to donate all your organs and tissue? You can save up to 8 lives after you die.<o:p></o:p></span></h2>--%>

    

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>









</asp:Content>
