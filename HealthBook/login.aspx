<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HealthBook.Login_healthbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link href="~/img/healthbook-10.png" rel="shortcut icon" type="image/x-icon" />
    <link href="css/app.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/line-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/myCss.css" rel="stylesheet" />
    <link href="css/intlTelInput.css" rel="stylesheet" />
    <%-- Fond Owsald --%>
    <link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">

    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
                            <i class="fa fa-user"></i>
                            <asp:TextBox ID="emailTextBox" runat="server" placeholder="Email or Phone " Type="email" required="true"></asp:TextBox>
                            <span class="bar"></span>
                        </div>

                        <div class="input-group1">
                            <i class="fa fa-lock"></i>
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
    </form>
     <script src="js/intlTelInput.js"></script>
    <script>
        var input = document.querySelector("#phone");
        window.intlTelInput(input, {
            autoHideDialCode: false,
            formatOnDisplay: false,
            initialCountry: "iq",
            nationalMode: false,
            utilsScript: "js/utils.js",
        });
        </script>
    <script>
            
        document.addEventListener("DOMContentLoaded", function (event) {
                
                
            $('#smartwizard-arrows-success').smartWizard({
                theme: 'arrows',
                showStepURLhash: false
            });

            $('#smartwizard-arrows-danger').smartWizard({
                theme: 'arrows',
                showStepURLhash: false
            });

            // Data Single

            $('input[name="datesingle"]').daterangepicker({
                singleDatePicker: true,
                showDropdowns: true
            });

            $('input[name="DateOfBirthTextBox"]').daterangepicker({
                singleDatePicker: true,
                showDropdowns: true
            });



            // Validation
            var $validationForm = $('#smartwizard-validation');
            $validationForm.validate({
                errorPlacement: function errorPlacement(error, element) {
                    $(element).parents('.form-group').append(
                        error.addClass('invalid-feedback small d-block')
                    )
                },
                highlight: function (element) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function (element) {
                    $(element).removeClass('is-invalid');
                },
                rules: {
                    'wizard-confirm': {
                        equalTo: 'input[name="wizard-password"]'
                    }
                }
            });
            $validationForm
                .smartWizard({
                    autoAdjustHeight: false,
                    backButtonSupport: false,
                    useURLhash: false,
                    showStepURLhash: false,
                    toolbarSettings: {
                        toolbarExtraButtons: [$('<button class="btn btn-submit btn-primary" type="button">Finish</button>')]
                    }
                })
                .on('leaveStep', function (e, anchorObject, stepNumber, stepDirection) {
                    if (stepDirection === 'forward') {
                        return $validationForm.valid();
                    }
                    return true;
                });
            $validationForm.find('.btn-submit').on('click', function () {
                if (!$validationForm.valid()) {
                    return;
                }
                alert("Great! The form is valid and ready to submit.");
                return false;
            });
        });
    </script>
    <script src="js/main.js"></script>
</body>
</html>
