<%@ Page Title="Add Employee" Language="C#" MasterPageFile="~/Master/Admin.Master"
    AutoEventWireup="true" CodeBehind="Add Employee.aspx.cs" Inherits="SalonComplex.Employee.Add_Employee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .topmargin {
            

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main" class="logospace">
        <h1>ADD Employee </h1>
        <p>
            <asp:Label ID="EmpLabelStatus" runat="server" ForeColor="#666666" Style="font-size: small;
          font-weight: 700"></asp:Label>
        </p>
        <span class="failureNotification">
            <asp:Literal ID="FailureText" runat="server"></asp:Literal>
        </span>
        <asp:ValidationSummary ID="ValidationSummaryAddStudent" runat="server" ForeColor="Red"
            ValidationGroup="AddEmployee" Style="font-size: medium" />
        <fieldset style="width: 450px; height: auto">
            <legend>Employee Information </legend>
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span4">
                        <asp:Label ID="EmpType" runat="server" Text="Employee Type:"></asp:Label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="DropdownListEmpType" runat="server">
                            <asp:ListItem Selected="True">------Select Your Area------</asp:ListItem>
                            <asp:ListItem>Spa Services</asp:ListItem>
                            <asp:ListItem Value="Salon Services">Salon Services</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpType" runat="server" ControlToValidate="DropdownListEmpType"
                        ErrorMessage="Employee Type Required" ForeColor="Red" ValidationGroup="AddEmployee"
                        CssClass="failureNotification">*</asp:RequiredFieldValidator>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <asp:Label ID="Fname" runat="server" Text="Full Name:"></asp:Label>
                    </div>
                    <div class="span2">
                        <asp:TextBox ID="EmpFnameText" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpFname" runat="server" ControlToValidate="EmpFnameText"
                        ErrorMessage="First Name Required" ForeColor="Red" ValidationGroup="AddEmployee"
                        CssClass="failureNotification">*</asp:RequiredFieldValidator>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <asp:Label ID="EmpGender" runat="server" Text="Gender:"></asp:Label>
                    </div>
                    <div class="span4">
                        <asp:RadioButton ID="RadioButtonGender" runat="server" GroupName="Gend" Text="Male"
                            CssClass="span5" />
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gend" Text="Female"
                            CssClass="span5" />
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <asp:Label ID="EmpStreet" runat="server" Text="Street:"></asp:Label>
                    </div>
                    <div class="span2">
                        <asp:TextBox ID="EmpStreetText" runat="server" ToolTip="Street Address Required"
                            Height="20px"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpStreet" runat="server" ControlToValidate="EmpStreetText"
                        ErrorMessage="Street Address Required" ForeColor="Red" ValidationGroup="AddEmployee"
                        CssClass="failureNotification" ToolTip="Street Address Required">*</asp:RequiredFieldValidator>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <asp:Label ID="EmpCityLabel" runat="server" Text="City:"></asp:Label>
                    </div>
                    <div class="span2">
                        <asp:TextBox ID="EmpCityText" runat="server" ToolTip="City Address Required"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ControlToValidate="EmpCityText"
                        ErrorMessage="City Address Required" ForeColor="Red" ValidationGroup="AddStudent"
                        CssClass="failureNotification" ToolTip="City Address Required">*</asp:RequiredFieldValidator>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <asp:Label ID="EmpParishLabel" runat="server" Text="Parish:"></asp:Label>
                    </div>
                    <div class="span2">
                        <asp:DropDownList ID="DropdownListEmpParish" runat="server">
                            <asp:ListItem Selected="True">------Select Your Parish------</asp:ListItem>
                            <asp:ListItem>Manchester</asp:ListItem>
                            <asp:ListItem>Clarendon</asp:ListItem>
                            <asp:ListItem Value="Ma">St Elizabeth</asp:ListItem>
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
                    </div>
                    <asp:RequiredFieldValidator ID="EmpParishNameRequired" runat="server" ControlToValidate="DropdownListEmpParish"
                        CssClass="failureNotification" ErrorMessage="You must select a Parish!!!." InitialValue="------Select Your Parish------"
                        ToolTip="You must select a Parish!!" ValidationGroup="AddEmployee"> *</asp:RequiredFieldValidator>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <asp:Label ID="Label1" runat="server" Text="Phone:"></asp:Label>
                    </div>
                    <div class="span2">
                        <asp:TextBox ID="EmpPhoneTextBox" runat="server" ToolTip=" 123-456-7890" placeholder="e.g. 123-456-7890"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpPhone" runat="server" ErrorMessage="Phone Number Required"
                        ControlToValidate="EmpPhoneTextBox" CssClass="failureNotification" ForeColor="#FF3300"
                        ToolTip="Phone Number Required" ValidationGroup="AddEmployee">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmpPhone" runat="server"
                        ControlToValidate="EmpPhoneTextBox" CssClass="failureNotification" ErrorMessage="Correct phone format 123-456-7890 "
                        ForeColor="#FF3300" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                        ValidationGroup="AddEmployee" ToolTip="Correct phone format 123-456-7890">*</asp:RegularExpressionValidator>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <asp:Label ID="YOELabel" runat="server" Text="Years of Experience"></asp:Label>
                    </div>
                    <div class="span2">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:TextBox ID="YoeTxtBox" runat="server" Width="50px" Height="20px" TextMode="SingleLine"></asp:TextBox>
                        <asp:NumericUpDownExtender ID="YOE_NUM" runat="server" TargetControlID="YoeTxtBox"
                            Width="80" Step="1" Minimum="1" Maximum="100">
                        </asp:NumericUpDownExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorYOE" runat="server" ControlToValidate="YoeTxtBox"
                            ErrorMessage="Street Address Required" ForeColor="Red" ValidationGroup="AddEmployee"
                            CssClass="failureNotification" ToolTip="Street Address Required">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <asp:Label ID="EmpEmailLabel" runat="server" Text="Email Address:"></asp:Label>
                    </div>
                    <div class="span2">
                        <asp:TextBox ID="EmpEmailTextBox" runat="server" ToolTip="johnbrown@mail.com" placeholder="e.g. johnbrown@mail.com"></asp:TextBox>
                        &nbsp;
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="EmpEmailTextBox"
                        ErrorMessage="Email Address Required" ForeColor="Red" ValidationGroup="AddEmployee"
                        CssClass="failureNotification" ToolTip="Email Address Required">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                        ControlToValidate="EmpEmailTextBox" ErrorMessage="Email Message Format Incorrect"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="failureNotification"
                        ForeColor="Red" ValidationGroup="AddEmployee" ToolTip="johnbrown@mail.com">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <asp:Button ID="Button2" runat="server" OnClick="SubmitButton_Click" CommandName="Submit"
                Text="Submit" ValidationGroup="AddEmployee" CssClass="btn btn-primary btn-large span2" />
            <asp:Button ID="Button3" runat="server" Text="Reset" CssClass="btn btn-large span2" />
        </fieldset>
    </div>
</asp:Content>
