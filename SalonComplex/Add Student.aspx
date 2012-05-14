<%@ Page Title="ADD STUDENT" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add Student.aspx.cs" Inherits="EduStart.Student.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<script language="javascript" type="text/javascript">
    function clearinputs(sType) {
        a = document.getElementsByTagName("input");
        for (i = 0; i < a.length; i++) {
            if (a[i].type == sType) {
                a[i].value = "";
            } 
        }
    }
</script>
    <style type="text/css">
        .style3
        {
        }
        .style4
        {
            width: 286px;
        }
        .style5
        {
            width: 88px;
        }
        .style6
        {
            width: 88px;
            height: 50px;
        }
        .style7
        {
            width: 286px;
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
        <h2>
                        Create a New Account
            </h2>

              <p>
                        Create a new account is very easy and free!!</p>
                    <p>
                        Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> 
                        characters in length. Only letters, numbers and underscore are allowed.</p>
         <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            0</span><asp:ValidationSummary ID="ValidationSummaryAddStudent" runat="server" 
              ForeColor="Red" ValidationGroup="AddStudent" />

        <fieldset style="width:450px; height:auto">
        <legend> Student Information </legend> 
            <table>
              
        <tr>
            <td class="style5">
                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry" Width="227px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                    ControlToValidate="UserName" CssClass="failureNotification" 
                    ErrorMessage="User Name is required." ToolTip="User Name is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
              
        <tr>
            <td class="style5">
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" 
                    TextMode="Password" Width="296px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                    ControlToValidate="Password" CssClass="failureNotification" 
                    ErrorMessage="Password is required." ToolTip="Password is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
              
        <tr>
            <td class="style5">
                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                    AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                    ControlToValidate="ConfirmPassword" CssClass="failureNotification" 
                    Display="Dynamic" ErrorMessage="Confirm Password is required." 
                    ToolTip="Confirm Password is required." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                    CssClass="failureNotification" Display="Dynamic" 
                    ErrorMessage="The Password and Confirmation Password must match." 
                    ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
            </td>
        </tr>
              
        <tr>
            <td class="style5">
                <asp:Label ID="Fname" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="FnameText" runat="server" Width="217px" 
                    style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFname" runat="server" 
                    ControlToValidate="FnameText" ErrorMessage="First Name Required" 
                    ForeColor="Red" ValidationGroup="AddStudent" CssClass="failureNotification">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Lname" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="LnameText" runat="server" Width="218px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLname" runat="server" 
                    ControlToValidate="LnameText" ErrorMessage="Last Name Required" 
                    ForeColor="Red" ValidationGroup="AddStudent" 
                    CssClass="failureNotification">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Gen" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td class="style4">
                <asp:RadioButton ID="RadioButtonGender" runat="server" GroupName="Gender" 
                    Text="Male" />
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" 
                    Text="Female" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="StudStreet" runat="server" Text="Street:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="StreetText" runat="server" Width="220px" 
                    ToolTip="Street Address Required"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorStreet" runat="server" 
                    ControlToValidate="StreetText" ErrorMessage="Street Address Required" 
                    ForeColor="Red" ValidationGroup="AddStudent" 
                    CssClass="failureNotification" ToolTip="Street Address Required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="StudCity" runat="server" Text="City:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="CityText" runat="server" Width="220px" 
                    ToolTip="City Address Required"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" 
                    ControlToValidate="CityText" ErrorMessage="City Address Required" ForeColor="Red" 
                    ValidationGroup="AddStudent" CssClass="failureNotification" 
                    ToolTip="City Address Required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="StudParish" runat="server" Text="Parish:"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="Parish" runat="server" Height="20px" 
                    style="margin-right: 0px" Width="320px">
                    <asp:ListItem Selected="True">------Select Your Parish------</asp:ListItem>
                    <asp:ListItem>Manchester</asp:ListItem>
                    <asp:ListItem>Clarendon</asp:ListItem>
                    <asp:ListItem Value="Ma">ST Elizabeth</asp:ListItem>
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
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="ParishNameRequired" runat="server" 
                    ControlToValidate="Parish" CssClass="failureNotification" 
                    ErrorMessage="You must select a Parish!!!." 
                    InitialValue="------Select Your Parish------" 
                    ToolTip="You must select a Parish!!" 
                    ValidationGroup="RegisterUserValidationGroup"> *</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="ProfessionLabel" runat="server" AssociatedControlID="Profession">Profession:</asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="Profession" runat="server" Height="20px" 
                    style="margin-right: 0px" Width="320px">
                    <asp:ListItem Selected="True">----Select Your Profession----</asp:ListItem>
                    <asp:ListItem>Accountant</asp:ListItem>
                    <asp:ListItem>Banker</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>Taxi-Driver</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="ProfessionRequired" runat="server" 
                    ControlToValidate="Profession" CssClass="failureNotification" 
                    ErrorMessage="You must select a Profession!!!." 
                    InitialValue="----Select Your Profession----" 
                    ToolTip="You must select a Profession!!" 
                    ValidationGroup="RegisterUserValidationGroup"> *</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Phone:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="StuPhoneTextBox" runat="server" Width="219px" Height="22px" 
                    ToolTip=" 123-456-7890"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" 
                    runat="server" ControlToValidate="StuPhoneTextBox" 
                    CssClass="failureNotification" 
                    ErrorMessage="Correct phone format 123-456-7890 " ForeColor="#FF3300" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                    ValidationGroup="AddStudent" ToolTip="123-456-7890">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" 
                ErrorMessage="Phone Number Required" ControlToValidate="StuPhoneTextBox" 
                    CssClass="failureNotification" ForeColor="#FF3300" 
                    ToolTip="Phone Number Required" ValidationGroup="AddStudent">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Email" runat="server" Text="Email:"></asp:Label>
            </td>
            <td class="style7" colspan="2">
                <asp:TextBox ID="EmailText" runat="server" Width="218px" 
                     Height="22px" ToolTip="johnbrown@yahoo.com"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
                    ControlToValidate="EmailText" ErrorMessage="Email Address Required" 
                    ForeColor="Red" ValidationGroup="AddStudent" 
                    CssClass="failureNotification" ToolTip="Email Address Required">*</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                    runat="server" ControlToValidate="EmailText" 
                    ErrorMessage="PLeaaEmail Message Format Incorrect" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="failureNotification" ForeColor="Red" 
                    ValidationGroup="AddStudent" ToolTip="jb@yahoo.com">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" align="center">
                <asp:Button ID="SubmitButton" runat="server" style="text-align: left" 
                    Text="Submit" onclick="SubmitButton_Click" CommandName="Submit" 
                    ValidationGroup="AddStudent" />
            </td>
            <td class="style4" align="center" colspan="2">
                <button onclick="clearinputs('text');" style="width: 64px">Reset</button></td>
        </tr>
        <tr>
            <td class="style3" align="center" colspan="3">
                <asp:Label ID="LabelStatus" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
     </table>
    </fieldset>
    </asp:Content>
