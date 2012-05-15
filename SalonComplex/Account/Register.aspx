<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SalonComplex.Account.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <style type="text/css">
        #Reset1
        {
            width: 105px;
        }
        .textEntry
        {}
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Label ID="LabelStatus" runat="server" Text="" CssClass = "failureNotification"></asp:Label>
   
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="False" 
        OnCreatedUser="RegisterUser_CreatedUser" 
        oncreateusererror="RegisterUser_CreateUserError" 
        oncreatinguser="RegisterUser_CreateingUser" BackColor="#E3EAEB" 
        BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em" 
        onnextbuttonclick="fhethr" ViewStateMode="Enabled">
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" 
                CommandName="MovePrevious" Text="Previous" />
            <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" 
                Text="Finish" />
        </FinishNavigationTemplate>
        <HeaderStyle BackColor="#666666" BorderStyle="Solid" Font-Bold="True" 
            Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" 
            BorderColor="#E6E2D8" BorderWidth="2px" />
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <ContinueButtonStyle BackColor="White" BorderColor="#C5BBAF" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#1C5E55" />
        <CreateUserButtonStyle BackColor="White" BorderColor="#C5BBAF" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#1C5E55" />
        <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <WizardSteps>
        <asp:WizardStep ID="RegisterUserWizardStep0" runat="server" StepType="Start" 
                Title="Personal Details" ViewStateMode="Enabled">


         <h2> Create a New Account </h2>

           <p  class="submitButton">
                   Use the form below to create a new account.
            </p>
        <span class="failureNotification"> <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal> </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" 
                runat="server" CssClass="failureNotification" 
                     ValidationGroup="RegisterUserValidationGroup"/>
                     
                     <div class="accountInfo"> 
                        <fieldset class="register">
                            <legend>Account Information</legend>
                               
                                 <p class = "registerUser">
                               
                                <asp:Label ID="Fname" runat="server" AssociatedControlID="FnameText" Height="33px">First Name:</asp:Label>
                                <asp:TextBox ID="FnameText" runat="server" CssClass="textEntry" MaxLength="50" 
                                         ValidationGroup="RegisterUserValidationGroup" ViewStateMode="Enabled"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFname" runat="server" 
                                ControlToValidate="FnameText" ErrorMessage="First Name Required" 
                                ForeColor="Red" ValidationGroup="RegisterUserValidationGroup" 
                                CssClass="failureNotification">*</asp:RequiredFieldValidator>
                               </p>

                               <p class = "registerUser">
                             <asp:Label ID="Lname" runat="server" AssociatedControlID="LnameText"> Last Name:</asp:Label>
                              <asp:TextBox ID="LnameText" runat="server" CssClass="textEntry" MaxLength="50" 
                                       ValidationGroup="RegisterUserValidationGroup" ViewStateMode="Enabled"> </asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidatorLname" runat="server" 
                              ControlToValidate="LnameText" ErrorMessage="Last Name Required" 
                              ForeColor="Red" ValidationGroup="RegisterUserValidationGroup" 
                              CssClass="failureNotification">*</asp:RequiredFieldValidator>
                              
                              </p>

                           

                            <p class = "radiobutton">
                                <asp:Label ID="Gen" runat="server" AssociatedControlID="RadioButtonGender"> Gender:</asp:Label>
                                <asp:RadioButton ID="RadioButtonGender" runat="server" CssClass="textEntry" 
                                 GroupName="Gender" Text="Male" Height="20px" TextAlign="Left" Width="40px" 
                                    ViewStateMode="Enabled"/>
                                 <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" 
                                    CssClass="textEntry" Text="Female" Height="20px" TextAlign="Left" 
                                    Width="40px" ViewStateMode="Enabled" /> 
                            </p>


                            <p class = "registerUser"> 
                             <asp:Label ID="StudStreet" runat="server" AssociatedControlID="StreetText">Street: </asp:Label>
                             <asp:TextBox ID="StreetText" runat="server" ToolTip="Street Address Required" 
                                    CssClass="textEntry" ValidationGroup="RegisterUserValidationGroup" 
                                    ViewStateMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorStreet" runat="server" 
                            ControlToValidate="StreetText" ErrorMessage="Street Address Required" 
                            ForeColor="Red" ValidationGroup="RegisterUserValidationGroup" 
                            CssClass="failureNotification" ToolTip="Street Address Required">*</asp:RequiredFieldValidator>
                            </p>

                            <p class = "registerUser">
                           <asp:Label ID="StudCity" runat="server" AssociatedControlID="CityText">City: </asp:Label>
                           <asp:TextBox ID="CityText" runat="server" ToolTip="City Address Required" 
                                    CssClass="textEntry" ValidationGroup="RegisterUserValidationGroup" 
                                    ViewStateMode="Enabled"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" 
                            ControlToValidate="CityText" ErrorMessage="City Address Required" ForeColor="Red" 
                            ValidationGroup="RegisterUserValidationGroup" CssClass="failureNotification" 
                            ToolTip="City Address Required">*</asp:RequiredFieldValidator>
                           </p>

                           <p class = "registerUser"> 
                            <asp:Label ID="StudParish" runat="server" AssociatedControlID="Parish" 
                                   Height="31px">Parish:</asp:Label>
                             <asp:DropDownList ID="Parish" runat="server" CssClass="textEntry" 
                                   ValidationGroup="RegisterUserValidationGroup" ViewStateMode="Enabled">
                                    <asp:ListItem Selected="True">------Select Your Parish------</asp:ListItem>
                                    <asp:ListItem>Manchester</asp:ListItem>
                                    <asp:ListItem>Clarendon</asp:ListItem>
                                    <asp:ListItem >ST Elizabeth</asp:ListItem>
                                    <asp:ListItem>St Andrew</asp:ListItem>
                                    <asp:ListItem>Trelawny</asp:ListItem>
                                    <asp:ListItem>Hanover</asp:ListItem>
                                    <asp:ListItem>Portland</asp:ListItem>
                                    <asp:ListItem>St Thomas</asp:ListItem>
                                    <asp:ListItem>Westmoreland</asp:ListItem>
                                    <asp:ListItem>ST Catherine</asp:ListItem>
                                    <asp:ListItem>ST Mary</asp:ListItem>
                                    <asp:ListItem>St Ann</asp:ListItem>
                                    <asp:ListItem>Kingston</asp:ListItem>
                                    <asp:ListItem>ST James</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="ParishNameRequired" runat="server" 
                                    ControlToValidate="Parish" CssClass="failureNotification" 
                                    ErrorMessage="You must select a Parish!!!." 
                                    InitialValue="------Select Your Parish------" 
                                    ToolTip="You must select a Parish!!" 
                                    ValidationGroup="RegisterUserValidationGroup"> *</asp:RequiredFieldValidator>
                          </p>

                          <p class = "registerUser"> 
                                <asp:Label ID="ProfessionLabel" runat="server" AssociatedControlID="Profession" 
                                    Height="32px">Profession:</asp:Label>
                                <asp:DropDownList ID="Profession" runat="server" CssClass="textEntry" 
                                    ValidationGroup="RegisterUserValidationGroup" ViewStateMode="Enabled">
                                <asp:ListItem Selected="True">----Select Your Profession----</asp:ListItem>
                                <asp:ListItem>Accountant</asp:ListItem>
                                <asp:ListItem>Banker</asp:ListItem>
                                <asp:ListItem>Doctor</asp:ListItem>
                                <asp:ListItem>Teacher</asp:ListItem>
                                <asp:ListItem>Taxi-Driver</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList> 
                                <asp:RequiredFieldValidator ID="ProfessionRequired" runat="server" 
                                ControlToValidate="Profession" CssClass="failureNotification" 
                                ErrorMessage="You must select a Profession!!!." 
                                InitialValue="----Select Your Profession----" 
                                ToolTip="You must select a Profession!!" 
                                ValidationGroup="RegisterUserValidationGroup"> *</asp:RequiredFieldValidator>

                          </p>
                          <p class = "registerUser">
                                <asp:Label ID="ClientPhone" runat="server" AssociatedControlID="PhoneTextBox" 
                                    Height="31px">Phone:</asp:Label>
                                <asp:TextBox ID="PhoneTextBox" runat="server" ToolTip=" 123-456-7890" 
                                    CssClass="textEntry" ValidationGroup="RegisterUserValidationGroup" 
                                    ViewStateMode="Enabled"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" 
                                runat="server" ControlToValidate="PhoneTextBox" 
                                CssClass="failureNotification" 
                                ErrorMessage="Correct phone format 123-456-7890 " ForeColor="#FF3300" 
                                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                                ValidationGroup="RegisterUserValidationGroup" ToolTip="123-456-7890">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" 
                                ErrorMessage="Phone Number Required" ControlToValidate="PhoneTextBox" 
                                CssClass="failureNotification" ForeColor="#FF3300" 
                                ToolTip="Phone Number Required" 
                                ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                        </p>


                         </fieldset>



                    </div>
          </asp:WizardStep>

               <asp:CreateUserWizardStep ID="RegisterUserWizardStep1" runat="server">
                <ContentTemplate>
                   
                    <p class="submitButton">
                        Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
                    </p>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                         ValidationGroup="RegisterUserValidationGroup"/>
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>User Login Information</legend>
                            <p class = "registerUser">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                <asp:TextBox ID="UserName" MaxLength = "50" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                     CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p class = "registerUser">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                <asp:TextBox ID="Email"  MaxLength = "200" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" 
                                     CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                                    runat="server" ControlToValidate="Email" CssClass="failureNotification" 
                                    ErrorMessage="Email Message Format Incorrect" ForeColor="Red" 
                                    ToolTip="jb@yahoo.com" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ValidationGroup="RegisterUserValidationGroup">*</asp:RegularExpressionValidator>
                            </p>
                            <p class = "registerUser">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                <asp:TextBox ID="Password" MaxLength = "30" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                                ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                            
                                <asp:CustomValidator ID="CustomValidatorPassword" runat="server" 
                                ErrorMessage="Invalid Password Length" 
                                ControlToValidate="Password" 
                                CssClass="failureNotification" 
                                onservervalidate = "CustomValidatorPassword_ServerValidate"
                                ValidationGroup="RegisterUserValidationGroup">*</asp:CustomValidator>
                                                    

                            </p>
                            <p class = "registerUser">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic" 
                                     ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired" runat="server" 
                                     ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                     CssClass="failureNotification" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                            </p>



                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Create User" 
                                 ValidationGroup="RegisterUserValidationGroup" 
                                onclick="CreateUserButton_Click"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="Reset1" type="reset" value="Reset Form" onclick="return Reset1_onclick()" />
                        </p>
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>

<asp:CompleteWizardStep runat="server" ID="RegisterUserStep2">
    <ContentTemplate>
        <table>
            <tr>
                <td align="center">
                    Complete</td>
            </tr>
            <tr>
                <td>
                    Your account has been successfully created.</td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                        CommandName="Continue" Text="Continue" ValidationGroup="RegisterUser" />
                </td>
            </tr>
        </table>
    </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
        <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#1C5E55" />
        <SideBarButtonStyle ForeColor="White" />
        <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" 
            VerticalAlign="Top" />
        <StepNavigationTemplate>
            <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" 
                CommandName="MovePrevious" Text="Previous" />
            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                Text="Next" ValidationGroup="RegisterUserValidationGroup" />
        </StepNavigationTemplate>
        <StepStyle BorderWidth="0px" />
    </asp:CreateUserWizard>
    </asp:Content>

 