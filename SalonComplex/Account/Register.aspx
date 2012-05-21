<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Master/Site.Master"
    AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SalonComplex.Account.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {
            $('input[type=text] , input[type=password]').each(function () {
                $(this).val('');
            });
        }

// ]]>

        $(function() {

            $('input[name$="NextButton"]').addClass('btn btn-primary btn-large span2');    

        });

    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Label ID="LabelStatus" runat="server" Text="" CssClass="failureNotification"></asp:Label>
    <asp:CreateUserWizard ID="RegisterUser" runat="server" 
    EnableViewState="False" OnCreatedUser="RegisterUserCreatedUser"
        OnCreateUserError="RegisterUserCreateUserError" OnCreatingUser="RegisterUserCreateingUser"
        OnNextButtonClick="Fhethr" ViewStateMode="Enabled" ActiveStepIndex="1">
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious"
                Text="Previous" CssClass="btn" />
            <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish"
                CssClass="btn success" />
        </FinishNavigationTemplate>
        <HeaderStyle BackColor="#666666" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em"
            ForeColor="White" HorizontalAlign="Center" BorderColor="#E6E2D8" BorderWidth="2px" />
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <WizardSteps>
            <asp:WizardStep ID="RegisterUserWizardStep0" runat="server" StepType="Start" Title="Personal Details"
                ViewStateMode="Enabled">
                <br />
                <p class="submitButton">
                    Use the form below to create a new account.
                </p>
                <span class="failureNotification">
                    <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                </span>
                <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
                    ValidationGroup="RegisterUserValidationGroup" />
                <div class="container-fluid">
                    <fieldset>
                        <h1 class="bold">Account Information</h1>
                        <div class="row-fluid">
                            <asp:Label ID="Fname" runat="server" AssociatedControlID="FnameText" CssClass="span2">First Name:</asp:Label>
                            <asp:TextBox ID="FnameText" runat="server" CssClass="span5" MaxLength="50" ValidationGroup="RegisterUserValidationGroup"
                                ViewStateMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFname" runat="server" ControlToValidate="FnameText"
                                ErrorMessage="First Name Required" ForeColor="Red" ValidationGroup="RegisterUserValidationGroup"
                                CssClass="failureNotification">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="row-fluid">
                            <asp:Label ID="Lname" runat="server" AssociatedControlID="LnameText" CssClass="span2">Last Name:</asp:Label>
                            <asp:TextBox ID="LnameText" runat="server" MaxLength="50" ValidationGroup="RegisterUserValidationGroup"
                                ViewStateMode="Enabled" CssClass="span5"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLname" runat="server" ControlToValidate="LnameText"
                                ErrorMessage="Last Name Required" ForeColor="Red" ValidationGroup="RegisterUserValidationGroup"
                                CssClass="failureNotification">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="row-fluid">
                            <asp:Label ID="Gen" runat="server" AssociatedControlID="RadioButtonGender" CssClass="span2"> Gender:</asp:Label>
                            <asp:RadioButton ID="RadioButtonGender" runat="server" GroupName="Gender" Text="Male"
                                ViewStateMode="Enabled" CssClass="span1" />
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Female"
                                ViewStateMode="Enabled" CssClass="span1" />
                        </div>
                        <div class="row-fluid">
                            <asp:Label ID="StudStreet" runat="server" AssociatedControlID="StreetText" CssClass="span2">Street: </asp:Label>
                            <asp:TextBox ID="StreetText" runat="server" ToolTip="Street Address Required" ValidationGroup="RegisterUserValidationGroup"
                                ViewStateMode="Enabled" CssClass="span5"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorStreet" runat="server" ControlToValidate="StreetText"
                                ErrorMessage="Street Address Required" ForeColor="Red" ValidationGroup="RegisterUserValidationGroup"
                                CssClass="failureNotification" ToolTip="Street Address Required">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="row-fluid">
                            <asp:Label ID="StudCity" runat="server" AssociatedControlID="CityText" CssClass="span2">City: </asp:Label>
                            <asp:TextBox ID="CityText" runat="server" ToolTip="City Address Required" ValidationGroup="RegisterUserValidationGroup"
                                ViewStateMode="Enabled" CssClass="span5"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ControlToValidate="CityText"
                                ErrorMessage="City Address Required" ForeColor="Red" ValidationGroup="RegisterUserValidationGroup"
                                CssClass="failureNotification" ToolTip="City Address Required">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="row-fluid">
                            <asp:Label ID="StudParish" runat="server" AssociatedControlID="Parish" Height="31px"
                                CssClass="span2">Parish:</asp:Label>
                            <asp:DropDownList ID="Parish" runat="server" ValidationGroup="RegisterUserValidationGroup"
                                ViewStateMode="Enabled" CssClass="span5">
                                <asp:ListItem Selected="True">------Select Your Parish------</asp:ListItem>
                                <asp:ListItem>Manchester</asp:ListItem>
                                <asp:ListItem>Clarendon</asp:ListItem>
                                <asp:ListItem>St Elizabeth</asp:ListItem>
                                <asp:ListItem>St Andrew</asp:ListItem>
                                <asp:ListItem>Trelawny</asp:ListItem>
                                <asp:ListItem>Hanover</asp:ListItem>
                                <asp:ListItem>Portland</asp:ListItem>
                                <asp:ListItem>St Thomas</asp:ListItem>
                                <asp:ListItem>Westmoreland</asp:ListItem>
                                <asp:ListItem>St Catherine</asp:ListItem>
                                <asp:ListItem>St Mary</asp:ListItem>
                                <asp:ListItem>St Ann</asp:ListItem>
                                <asp:ListItem>Kingston</asp:ListItem>
                                <asp:ListItem>St James</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="ParishNameRequired" runat="server" ControlToValidate="Parish"
                                CssClass="failureNotification" ErrorMessage="You must select a Parish!!!." InitialValue="------Select Your Parish------"
                                ToolTip="You must select a Parish!!" ValidationGroup="RegisterUserValidationGroup"> *</asp:RequiredFieldValidator>
                        </div>
                        <div class="row-fluid">
                            <asp:Label ID="ProfessionLabel" runat="server" AssociatedControlID="Profession" CssClass="span2">Profession:</asp:Label>
                            <asp:DropDownList ID="Profession" runat="server" ValidationGroup="RegisterUserValidationGroup"
                                ViewStateMode="Enabled" CssClass="span5">
                                <asp:ListItem Selected="True">----Select Your Profession----</asp:ListItem>
                                <asp:ListItem>Accountant</asp:ListItem>
                                <asp:ListItem>Banker</asp:ListItem>
                                <asp:ListItem>Doctor</asp:ListItem>
                                <asp:ListItem>Teacher</asp:ListItem>
                                <asp:ListItem>Taxi-Driver</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="ProfessionRequired" runat="server" ControlToValidate="Profession"
                                CssClass="failureNotification" ErrorMessage="You must select a Profession!!!."
                                InitialValue="----Select Your Profession----" ToolTip="You must select a Profession!!"
                                ValidationGroup="RegisterUserValidationGroup"> *</asp:RequiredFieldValidator>
                        </div>
                        <div class="row-fluid">
                            <asp:Label ID="ClientPhone" runat="server" AssociatedControlID="PhoneTextBox" CssClass="span2">Phone:</asp:Label>
                            <asp:TextBox ID="PhoneTextBox" runat="server" ToolTip=" 123-456-7890" ValidationGroup="RegisterUserValidationGroup"
                                ViewStateMode="Enabled" CssClass="span5"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server"
                                ControlToValidate="PhoneTextBox" CssClass="failureNotification" ErrorMessage="Correct phone format 123-456-7890 "
                                ForeColor="#FF3300" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                                ValidationGroup="RegisterUserValidationGroup" ToolTip="123-456-7890">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Phone Number Required"
                                ControlToValidate="PhoneTextBox" CssClass="failureNotification" ForeColor="#FF3300"
                                ToolTip="Phone Number Required" ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                        </div>
                    </fieldset>
                </div>
            </asp:WizardStep>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep1" runat="server">
                <ContentTemplate>
                    <div id="main" style="margin-top: 50px;">
                        <span class="failureNotification">
                            <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                        </span>
                        <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
                            ValidationGroup="RegisterUserValidationGroup" />
                        <div class="container-fluid">
                            <fieldset>
                                <h1>User Login Information</h1>
                                <div class="row-fluid">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="span2">User Name:</asp:Label>
                                    <asp:TextBox ID="UserName" MaxLength="50" runat="server" CssClass="span5"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                                        ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                </div>
                                <div class="row-fluid">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="span2">E-mail:</asp:Label>
                                    <asp:TextBox ID="Email" MaxLength="200" runat="server" CssClass="span5"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                        CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                                        ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                                        ControlToValidate="Email" CssClass="failureNotification" ErrorMessage="Email Message Format Incorrect"
                                        ForeColor="Red" ToolTip="jb@yahoo.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        ValidationGroup="RegisterUserValidationGroup">*</asp:RegularExpressionValidator>
                                </div>
                                <div class="row-fluid">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="span2">Password:</asp:Label>
                                    <asp:TextBox ID="Password" MaxLength="30" runat="server" CssClass="span5" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                        ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="CustomValidatorPassword" runat="server" ErrorMessage="Invalid Password Length"
                                        ControlToValidate="Password" CssClass="failureNotification" OnServerValidate="CustomValidatorPasswordServerValidate"
                                        ValidationGroup="RegisterUserValidationGroup">*</asp:CustomValidator>
                                </div>
                                <div class="row-fluid">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword"
                                        CssClass="span2">Confirm Password:</asp:Label>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="span5" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                                        Display="Dynamic" ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired"
                                        runat="server" ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                        ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                                        ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                                </div>
                                <br />
                                <div>
                                    <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Create User"
                                        ValidationGroup="RegisterUserValidationGroup" OnClick="CreateUserButtonClick"
                                        CssClass="btn btn-primary btn-large span3" />
                                    <asp:Button ID="Reset" runat="server" Text="Reset" OnClientClick="return Reset1_onclick()"
                                        CssClass="btn btn-large span3" CausesValidation="False" UseSubmitBehavior="False" />
                                </div>
                            </fieldset>
                        </div>
                        <span class="alert alert-info shifterror">Passwords are required to be a minimum of
                            <%= Membership.MinRequiredPasswordLength %>
                            characters in length. </span>
                        <br /><br />
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" ID="RegisterUserStep2">
                <ContentTemplate>
                    <table>
                        <tr>
                            <t>Complete</t>
                        </tr>
                        <tr>
                            <td>Your account has been successfully created.</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue"
                                    Text="Continue" ValidationGroup="RegisterUser" CssClass="btn btn-primary" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" 
                Text="Next" ValidationGroup="RegisterUserValidationGroup" CssClass="btn btn-primary" />
        </StartNavigationTemplate>
        <StepNavigationTemplate>
            <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious"
                Text="Previous" CssClass="btn btn-primary" />
            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next"
                ValidationGroup="RegisterUserValidationGroup" CssClass="btn btn-primary" />
        </StepNavigationTemplate>
    </asp:CreateUserWizard>
</asp:Content>
