<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donate Organs.aspx.cs" Inherits="HealthBook.Donate_Organs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
    <div class="col-12 col-lg-12">
        <div id="smartwizard-arrows-danger" class="wizard wizard-primary mb-4">
            <ul>
                <li><a href="#arrows-success-step-1">Step One<br>
                        <small>Info</small></a>
                </li>
                <li><a href="#arrows-success-step-2">Step two<br>
                    <small id="dawd">Body Parts</small></a>
                    
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
                            
                            <select class="form-control" id="Donatestate" name="Donatestate">
                                <option value="All">All</option>
                                <option value="Some">Some</option>
                            </select>
                        </div>



                        <div id="viewOrgansForm" style="display: none;">
                            <p class="font_oswald">Please Chose the organ you want to donate:</p>


                            <asp:CheckBoxList ID="CheckBoxList1" runat="server">

                                <asp:ListItem Text="Heart">Heart</asp:ListItem>
                                <asp:ListItem Text="Lungs">Lungs</asp:ListItem>
                                <asp:ListItem Text="Kidneys">Kidneys</asp:ListItem>
                                <asp:ListItem Text="Liver">Liver</asp:ListItem>
                                <asp:ListItem Text="Corneas">Corneas</asp:ListItem>
                                <asp:ListItem Text="l bowel">l bowel</asp:ListItem>
                                <asp:ListItem Text="Smal">Smal</asp:ListItem>
                                <asp:ListItem Text="Eyes">Eyes</asp:ListItem>

                            </asp:CheckBoxList>
                        </div>

                               <%--  <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox_2" runat="server" Text="Heart" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox_1" runat="server" Text="Lungs" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox_3" runat="server" Text="Kidneys" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox_4" runat="server" Text="Liver"/>
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox_5" runat="server" Text="Corneas" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox_6" runat="server" Text="Pancreas" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox_7" runat="server" Text="l bowel" />
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox_8" runat="server" Text="Smal"/>
                                    <span class="checkmark"></span>
                                </label>
                            </div>

                            <div class="form-group d-inline pr-3">
                                <label class="checkb">
                                    
                                <input type="checkbox">
                                    <asp:CheckBox ID="CheckBox_9" runat="server" Text="Eyes"/>
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>--%>


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


                            
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="up1" runat="server">
                            <ContentTemplate>
                            <asp:Button ID="SendCodeButton1" CssClass="btn btn-info" data-toggle="modal" data-target="#exampleModalCenter"
                                    runat="server" OnClick="SendCodeButton1_Click" Text="Submit" />
                                <br />
                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>


                        </div>
                    </div>
                </div>
                    
                    
            </div>
        </div>
    </div>
        
</div>

<!-- Modal -->
    <div id="Div1">
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Please check your phone for veryfication Code:</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            A code sent to your phone number Please verify:
                            <br />
                            <asp:TextBox ID="CodeTextBox" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="modal-footer">
                       <asp:Button ID="SubmitButton" CssClass="btn btn-info" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
<%--                        <asp:Button ID="VerifyButton" runat="server" CssClass="btn btn-success" Text="Verify" />--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
        

</asp:Content>
