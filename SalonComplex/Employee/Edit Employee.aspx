<%@ Page Title="Edit Employee" Language="C#" MasterPageFile="~/Master/Admin.Master"
    AutoEventWireup="true" CodeBehind="Edit Employee.aspx.cs" Inherits="SalonComplex.Employee.Edit_Employee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>EDIT EMPLOYEE</h1>
    <p>
        <asp:Label ID="EmpEditLabelStatus" runat="server" Style="font-size: large; font-weight: 700"></asp:Label>
    </p>
    <asp:ValidationSummary ID="ValidationSummaryEditEmployee" runat="server" ForeColor="Red"
        ValidationGroup="EditEmployee" Style="font-size: small" />
    <fieldset style="width: 800px; height: auto">
        <legend>Employee Information </legend>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3">
                    <asp:Label ID="EmpEditLabelType" runat="server" Text="Employee Type:"></asp:Label>
                </div>
                <div class="span4">
                    <asp:DropDownList ID="DropdownListEmpTypeEdit" runat="server">
                        <asp:ListItem Selected="True">------Select Your Area------</asp:ListItem>
                        <asp:ListItem>Spa Services</asp:ListItem>
                        <asp:ListItem Value="Salon Services">Salon Services</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEditLectID" runat="server"
                        ControlToValidate="DropdownListEmpTypeEdit" ErrorMessage="Lecturer ID Required"
                        ForeColor="Red" CssClass="failureNotification" ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span3">
                    <asp:Label ID="EmpEditFnameLabel" runat="server" Text="Full Name:"></asp:Label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="EmpEditTextBoxFname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorLectFname" runat="server"
                        ControlToValidate="EmpEditTextBoxFname" ErrorMessage="First Name Required" ForeColor="Red"
                        CssClass="failureNotification" ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span3">
                    <asp:Label ID="EmpEditGender" runat="server" Text="Gender:"></asp:Label>
                </div>
                <div class="span4">
                    <asp:RadioButton ID="EmpRadioButtonMale" runat="server" GroupName="Gender" Text="Male"
                        CssClass="span2" />
                    <asp:RadioButton ID="EmpRadioButtonFemale" runat="server" GroupName="Gender" Text="Female"
                        CssClass="span2" />
                </div>
            </div>
            <div class="row-fluid">
                <div class="span3">
                    <asp:Label ID="EmpEditLabelStreetAdd" runat="server" Text="Street:"></asp:Label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="EmpEditTextBoxStreetAdd" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorLectStr" runat="server"
                        ControlToValidate="EmpEditTextBoxStreetAdd" ErrorMessage="Street Required" ForeColor="Red"
                        CssClass="failureNotification" ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span3">
                    <asp:Label ID="EmpEditLabelCityAdd" runat="server" Text="City:"></asp:Label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="EmpEditTextBoxCityAdd" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmpEditRequiredFieldValidatorCity" runat="server"
                        ControlToValidate="EmpEditTextBoxCityAdd" ErrorMessage="City Required" ForeColor="Red"
                        CssClass="failureNotification" ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span3">
                    <asp:Label ID="EmpEditLabelParishAdd" runat="server" Text="Parish:"></asp:Label>
                </div>
                <div class="span4">
                    <asp:DropDownList ID="DropdownListEditEmpParish" runat="server">
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
                        <asp:ListItem>St Catherine</asp:ListItem>
                        <asp:ListItem>St Mary</asp:ListItem>
                        <asp:ListItem>St Ann</asp:ListItem>
                        <asp:ListItem>Kingston</asp:ListItem>
                        <asp:ListItem>St James</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="EmpEditRequiredFieldValidatorParishAdd" runat="server"
                        ControlToValidate="DropdownListEditEmpParish" ErrorMessage="Parish Address Required"
                        ForeColor="Red" CssClass="failureNotification" ValidationGroup="EditEmployee"
                        InitialValue="------Select Your Parish------">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span3">
                    <asp:Label ID="EmpEditLabelPhone" runat="server" Text="Phone Number:"></asp:Label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="EmpEditTextBoxPhone" runat="server" ToolTip="correct format ----&gt;123-456-7890"
                        placeholder="e.g. 123-456-7890"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpPhone" runat="server" ErrorMessage="Phone Number Required"
                        ControlToValidate="EmpEditTextBoxPhone" CssClass="failureNotification" ForeColor="#FF3300"
                        ToolTip="Phone Number Required" ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmpPhone" runat="server"
                        ControlToValidate="EmpEditTextBoxPhone" CssClass="failureNotification" ErrorMessage="correct format ---&gt; 123-456-7890 "
                        ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="EditEmployee"
                        ToolTip="correct format---&gt;123-456-7890">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span3">
                    <asp:Label ID="EmpEditYOELabel" runat="server" Text="Years of Experience"></asp:Label>
                </div>
                <div class="span4" style="margin-bottom: 9px;">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:TextBox ID="EmpEditYoeTxtBox" runat="server" TextMode="SingleLine" Width="50px"
                        Height="20px"></asp:TextBox>
                    <asp:NumericUpDownExtender ID="EmpYOE_EXT" runat="server" Maximum="100" Minimum="1"
                        TargetControlID="EmpEditYoeTxtBox" Width="80" Step="1">
                    </asp:NumericUpDownExtender>
                    <asp:RequiredFieldValidator ID="EmpEditRequiredFieldValidatorYOE" runat="server"
                        ControlToValidate="EmpEditYoeTxtBox" ErrorMessage="Street Address Required" ForeColor="Red"
                        ValidationGroup="EditEmployee" CssClass="failureNotification" ToolTip="Street Address Required">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span3">
                    <asp:Label ID="EmpEditLabelEmail" runat="server" Text="Email Address:"></asp:Label>
                </div>
                <div class="span4">
                    <asp:TextBox ID="EmpEditTextBoxEmail" runat="server" placeholder="e.g. johnbrown@mail.com"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorEmail" runat="server" ControlToValidate="EmpEditTextBoxEmail"
                        ErrorMessage="Email Address Required" ForeColor="Red" CssClass="failureNotification"
                        ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorLectEmail" runat="server"
                        ControlToValidate="EmpEditTextBoxEmail" ErrorMessage="Email Message Format Incorrect"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="failureNotification"
                        ForeColor="Red" ValidationGroup="EditEmployee" ToolTip="correct formt ---&gt;johnbrown@mail.com">*</asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span4">
                    <asp:Button ID="EmpConfirmButton" runat="server" OnClick="ButtonLectConfirmClick"
                        Text="Confirm" Visible="False" CssClass="btn btn-primary span4" />
                </div>
                <div class="span4">
                    <asp:Button ID="EmpCancelButton" runat="server" OnClick="ButtonLectCancelClick" Text="Cancel"
                        Visible="False" CssClass="btn span4" />
                </div>
            </div>
        </div>
        <div>
            <asp:Label ID="EmpLabelMsgDeleteOrCancel" runat="server" Text="Press Cancel or Confirm to Delete Employee"
                Visible="False"></asp:Label>
        </div>
        <div>
            <asp:Button ID="UpdateLect_Button" runat="server" Text="Update" CssClass="btn btn-large btn-primary span2"
                OnClick="UpdateLectButtonClick" />
            <asp:Button ID="EmpDeleteButton" runat="server" CssClass="btn btn-large btn-danger span2"
                Text="Delete" OnClick="LectDeleteButtonClick" />
        </div>
        <br />
        <asp:GridView ID="GrdViewEmpValUpdate" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSourceUpdateEmployee"
            ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GrdViewEmpValUpdateSelectedIndexChanged"
            CellSpacing="1" Width="800px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                <asp:BoundField DataField="employee_id" HeaderText="ID" ReadOnly="True" SortExpression="employee_id" />
                <asp:BoundField DataField="employee_type" HeaderText="Employee Type" ReadOnly="True"
                    SortExpression="employee_type" />
                <asp:BoundField DataField="employee_fname" HeaderText="First Name" ReadOnly="True"
                    SortExpression="employee_fname" />
                <asp:BoundField DataField="employee_gender" HeaderText="Gender" ReadOnly="True" SortExpression="employee_gender" />
                <asp:BoundField DataField="employee_street" HeaderText="Street" ReadOnly="True" SortExpression="employee_street" />
                <asp:BoundField DataField="employee_city" HeaderText="City" ReadOnly="True" SortExpression="employee_city" />
                <asp:BoundField DataField="employee_parish" HeaderText="Parish" ReadOnly="True" SortExpression="employee_parish" />
                <asp:BoundField DataField="employee_phone" HeaderText="Phone" ReadOnly="True" SortExpression="employee_phone"
                    DataFormatString="{0:(###)###-####}" />
                <asp:BoundField DataField="employee_yoe" HeaderText="YOE" ReadOnly="True" SortExpression="employee_yoe"
                    DataFormatString="{0:F0}" />
                <asp:BoundField DataField="employee_email" HeaderText="Email" ReadOnly="True" SortExpression="employee_email" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSourceUpdateEmployee" runat="server" ContextTypeName="SalonComplex.LinqSQL.DataClassesLinqSQLDataContext"
            EntityTypeName="" OrderBy="employee_id, employee_fname" Select="new (employee_id, employee_type, employee_fname, employee_gender, employee_street, employee_city, employee_parish, employee_phone, employee_yoe, employee_email)"
            TableName="employees">
        </asp:LinqDataSource>
    </fieldset>
</asp:Content>
