<%@ Page Title="Add Employee" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add Employee.aspx.cs" Inherits="SalonComplex.Employee.Add_Employee" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 35px;
        }
        .style2
        {
            height: 36px;
        }
        #Reset1
        {
            width: 90px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        ADD Employee 
    </h1>
    <p>
                <asp:Label ID="EmpLabelStatus" runat="server" ForeColor="#666666" 
            style="font-size: small; font-weight: 700"></asp:Label>
    </p>
         <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
        <asp:ValidationSummary ID="ValidationSummaryAddStudent" runat="server" 
              ForeColor="Red" ValidationGroup="AddEmployee" 
        style="font-size: medium" />

        <fieldset style="width:450px; height:auto">
        <legend> Employee Information </legend> 
            <table>
              
        <tr>
            <td class="style1">
                <asp:Label ID="EmpType" runat="server" Text="Employee Type:"></asp:Label>
            </td>
            <td class="style1">
                <asp:DropDownList ID="DropdownListEmpType" runat="server" Height="20px" 
                    style="margin-right: 0px" Width="220px">
                    <asp:ListItem Selected="True">------Select Your Area------</asp:ListItem>
                    <asp:ListItem>Spa Services</asp:ListItem>
                    <asp:ListItem Value="Salon Services">Salon Services</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpType" runat="server" 
                    ControlToValidate="DropdownListEmpType" ErrorMessage="Employee Type Required" 
                    ForeColor="Red" ValidationGroup="AddEmployee" 
                    CssClass="failureNotification">*</asp:RequiredFieldValidator>
            </td>
        </tr>
              
        <tr>
            <td class="style1">
                <asp:Label ID="Fname" runat="server" Text="Full Name:"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="EmpFnameText" runat="server" Width="220px" 
                    style="margin-left: 0px" Height="20px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpFname" runat="server" 
                    ControlToValidate="EmpFnameText" ErrorMessage="First Name Required" 
                    ForeColor="Red" ValidationGroup="AddEmployee" 
                    CssClass="failureNotification">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="EmpGender" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td class="style1" colspan="2">
                <asp:RadioButton ID="RadioButtonGender" runat="server" GroupName="Gend" 
                    Text="Male" />
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gend" 
                    Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="EmpStreet" runat="server" Text="Street:"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="EmpStreetText" runat="server" Width="220px" 
                    ToolTip="Street Address Required" Height="20px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpStreet" runat="server" 
                    ControlToValidate="EmpStreetText" ErrorMessage="Street Address Required" 
                    ForeColor="Red" ValidationGroup="AddEmployee" 
                    CssClass="failureNotification" ToolTip="Street Address Required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="EmpCityLabel" runat="server" Text="City:"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="EmpCityText" runat="server" Width="220px" 
                    ToolTip="City Address Required"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" 
                    ControlToValidate="EmpCityText" ErrorMessage="City Address Required" ForeColor="Red" 
                    ValidationGroup="AddStudent" CssClass="failureNotification" 
                    ToolTip="City Address Required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="EmpParishLabel" runat="server" Text="Parish:"></asp:Label>
            </td>
            <td class="style1">
                <asp:DropDownList ID="DropdownListEmpParish" runat="server" Height="20px" 
                    style="margin-right: 0px" Width="220px">
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
            <td class="style1">
                <asp:RequiredFieldValidator ID="EmpParishNameRequired" runat="server" 
                    ControlToValidate="DropdownListEmpParish" CssClass="failureNotification" 
                    ErrorMessage="You must select a Parish!!!." 
                    InitialValue="------Select Your Parish------" 
                    ToolTip="You must select a Parish!!" ValidationGroup="AddEmployee"> *</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Phone:"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="EmpPhoneTextBox" runat="server" Width="220px" Height="20px" 
                    ToolTip=" 123-456-7890"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpPhone" runat="server" 
                ErrorMessage="Phone Number Required" ControlToValidate="EmpPhoneTextBox" 
                    CssClass="failureNotification" ForeColor="#FF3300" 
                    ToolTip="Phone Number Required" ValidationGroup="AddEmployee">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmpPhone" 
                    runat="server" ControlToValidate="EmpPhoneTextBox" 
                    CssClass="failureNotification" 
                    ErrorMessage="Correct phone format 123-456-7890 " ForeColor="#FF3300" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                    ValidationGroup="AddEmployee" ToolTip="Correct phone format 123-456-7890">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="YOELabel" runat="server" Text="Years of Experience"></asp:Label>
            </td>
            <td class="style1">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
    
                <asp:TextBox ID="YoeTxtBox" runat="server" Width="50px" 
                     Height="20px" TextMode="SingleLine"></asp:TextBox>
                      <asp:NumericUpDownExtender ID="YOE_NUM" runat="server"  
                    TargetControlID="YoeTxtBox" Width="80" Step ="1" Minimum="1" Maximum="100"   >
                </asp:NumericUpDownExtender>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorYOE" runat="server" 
                    ControlToValidate="YoeTxtBox" ErrorMessage="Street Address Required" 
                    ForeColor="Red" ValidationGroup="AddEmployee" 
                    CssClass="failureNotification" ToolTip="Street Address Required">*</asp:RequiredFieldValidator>
                   
            </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="EmpEmailLabel" runat="server" Text="Email Address:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="EmpEmailTextBox" runat="server" Width="220px" 
                     Height="20px" ToolTip="johnbrown@mail.com"></asp:TextBox>
                &nbsp;</td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
                    ControlToValidate="EmpEmailTextBox" ErrorMessage="Email Address Required" 
                    ForeColor="Red" ValidationGroup="AddEmployee" 
                    CssClass="failureNotification" ToolTip="Email Address Required">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                    runat="server" ControlToValidate="EmpEmailTextBox" 
                    ErrorMessage="Email Message Format Incorrect" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="failureNotification" ForeColor="Red" 
                    ValidationGroup="AddEmployee" ToolTip="johnbrown@mail.com">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" align="center">
                <asp:Button ID="SubmitButton" runat="server" style="text-align: left" 
                    Text="Submit" onclick="SubmitButton_Click" CommandName="Submit" 
                    ValidationGroup="AddEmployee" />
            </td>
            <td class="style4" align="center" colspan="2">
                <input id="Reset1" type="reset" value="Reset Fields" /></td>
        </tr>
        </table>
    </fieldset>


</asp:Content>
