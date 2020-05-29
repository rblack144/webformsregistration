<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebFormsRegistration.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-3"></div>
    <div class="py-2 text-center" style="background-color: #2988b5;">
        <h4 class="m-0 text-light font-weight-normal">CONTACT INFORMATION</h4>
    </div>
    <div class="py-3"></div>  
    <div class="d-flex flex-column justify-content-center mx-5 px-5">
        <div class="mx-5 px-5">
            <div class="d-flex flex-row mx-4">
                <span class="badge text-light" style="background-color: #1b5875;">1</span>
                <div class="d-inline-flex flex-fill my-auto" style="height: 5px; background-color: #1b5875;"></div>
                <span class="badge text-light" style="background-color: #1b5875;">2</span>
                <div class="d-inline-flex flex-fill bg-light my-auto" style="height: 5px;"></div>
                <span class="badge bg-light text-muted">3</span>
            </div>
            <div class="d-flex flex-row justify-content-between">
                <p class="small text-center" style="color: #1b5875;">REGISTER</p>
                <p class="small text-center" style="color: #1b5875;">SUBMIT INFO</p>
                <p class="small text-center" style="color: #1b5875;">COMPLETE</p>
            </div>
        </div>
        <div class="py-3"></div>
        <div class="border rounded border-secondary p-4 bg-light">
            <p>Please fill in the following required information.</p>
            <div class="form-group">
                <div>
                    <asp:Label ID="lblFirstName" Font-Bold="true" runat="server">First Name: *</asp:Label>
                </div>
                <asp:TextBox ID="txtFirstName" CssClass="txtFirstName form-control mw-100" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <div>
                    <asp:Label CssClass="lblLastName" Font-Bold="true" runat="server">Last Name: *</asp:Label>
                </div>
                <asp:TextBox ID="txtLastName" CssClass="txtLastName form-control mw-100" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <div>
                    <asp:Label  ID="lblState" Font-Bold="true" runat="server">State: *</asp:Label>
                </div>
                <asp:DropDownList ID="ddlState" DataTextField="Abbreviation" DataValueField="Id" AppendDataBoundItems="true" runat="server">
                    <asp:ListItem Text="Select State" Value="0" Selected="True"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <p class="m-0">Please provide your email address</p>
                <p>All meeting correspondence will be sent via email</p>
            </div>
            <div class="form-group">
                <div>
                    <asp:Label ID="lblEmail" Font-Bold="true" runat="server">Email: *</asp:Label>
                </div>
                <asp:TextBox ID="txtEmail" CssClass="txtEmail form-control mw-100" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <div>
                    <asp:Label ID="lblConfirmEmail" Font-Bold="true" runat="server">Confirm Email: *</asp:Label>
                </div>
                <asp:TextBox ID="txtConfirmEmail" CssClass="txtConfirmEmail form-control mw-100" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:CheckBox ID="chkNewsLetter" Checked="true" Text="Subscribe to Newsletter" runat="server"></asp:CheckBox>
            </div>
            <div class="text-right">
                <asp:Button ID="btnContinue" OnClientClick="return validateForm();" OnClick="btnContinue_Click" BackColor="#1b5875" CssClass="btn text-light" Text="Continue" runat="server" />
            </div>
            <script type="text/javascript">
                validateForm = function () {
                    var isFormValid = true;
                    resetValidation();

                    // Validate first name
                    var firstName = $('.txtFirstName').val();
                    if (firstName == undefined || firstName == '' || firstName.trim().length == 0) {
                        isFormValid = false;
                        $('#MainContent_lblFirstName').css("color", "#a93a44");
                        $('.txtFirstName').css("border-color", "#a93a44");
                        $('.txtFirstName').css("background-color", "#ffe8ea");
                    }

                    // Validate last name
                    var lastName = $('.txtLastName').val();
                    if (lastName == undefined || lastName == '' || lastName.trim().length == 0) {
                        isFormValid = false;
                        $('.lblLastName').css("color", "#a93a44");
                        $('.txtLastName').css("border-color", "#a93a44");
                        $('.txtLastName').css("background-color", "#ffe8ea");
                    }

                    // Validate state
                    var state = $('#MainContent_ddlState').children('option:selected').text();
                    if (state == undefined || state == 'Select State') {
                        isFormValid = false;
                        $('#MainContent_lblState').css("color", "#a93a44");
                    }

                    // Validate email
                    var email = $('.txtEmail').val();
                    if (email == undefined || email == '' || email.trim().length == 0) {
                        isFormValid = false;
                        $('#MainContent_lblEmail').css("color", "#a93a44");
                        $('.txtEmail').css("border-color", "#a93a44");
                        $('.txtEmail').css("background-color", "#ffe8ea");
                    }

                    // Validate confirm email
                    var confirmEmail = $('.txtConfirmEmail').val();
                    if (confirmEmail == undefined || confirmEmail == '' || confirmEmail.trim().length == 0) {
                        isFormValid = false;
                        $('#MainContent_lblConfirmEmail').css("color", "#a93a44");
                        $('.txtConfirmEmail').css("border-color", "#a93a44");
                        $('.txtConfirmEmail').css("background-color", "#ffe8ea");
                    }

                    return isFormValid;
                };

                resetValidation = function () {
                    $('#MainContent_lblFirstName').css("color", "rgb(33, 37, 41)");
                    $('.txtFirstName').css("border-color", "rgb(206, 212, 218)");
                    $('.txtFirstName').css("background-color", "rgb(255, 255, 255)");

                    $('.lblLastName').css("color", "rgb(33, 37, 41)");
                    $('.txtLastName').css("border-color", "rgb(206, 212, 218)");
                    $('.txtLastName').css("background-color", "rgb(255, 255, 255)");

                    $('#MainContent_lblState').css("color", "rgb(33, 37, 41)");

                    $('#MainContent_lblEmail').css("color", "rgb(33, 37, 41)");
                    $('.txtEmail').css("border-color", "rgb(206, 212, 218)");
                    $('.txtEmail').css("background-color", "rgb(255, 255, 255)");

                    $('#MainContent_lblConfirmEmail').css("color", "rgb(33, 37, 41)");
                    $('.txtConfirmEmail').css("border-color", "rgb(206, 212, 218)");
                    $('.txtConfirmEmail').css("background-color", "rgb(255, 255, 255)");
                };
            </script>
        </div>
    </div>
</asp:Content>