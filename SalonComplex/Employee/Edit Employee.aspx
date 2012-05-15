<%@ Page Title="Edit Employee" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Edit Employee.aspx.cs" Inherits="SalonComplex.Employee.Edit_Employee" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style5
        {
            text-align: left;
        }
        .style6
        {
            text-align: left;
            height: 35px;
        }
        .style7
        {
            height: 35px;
        }
        .style8
        {
            width: 100%;
        }
        .style10
        {
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <H1>
        EDIT EMPLOYEE</h1>
    <p>
                <asp:Label ID="EmpEditLabelStatus" runat="server" 
                    style="font-size: large; font-weight: 700"></asp:Label>
</p>
 <asp:ValidationSummary ID="ValidationSummaryEditEmployee" runat="server" 
        ForeColor="Red" ValidationGroup="EditEmployee" style="font-size: small" />
 <fieldset style="width:800px; height:auto">
    <legend> Employee Information </legend> 
    <table class="style1">
        <tr>
            <td class="style7">
                <asp:Label ID="EmpEditLabelType" runat="server" Text="Employee Type:"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="DropdownListEmpTypeEdit" runat="server" Height="20px" 
                    style="margin-right: 0px" Width="220px">
                    <asp:ListItem Selected="True">------Select Your Area------</asp:ListItem>
                    <asp:ListItem>Spa Services</asp:ListItem>
                    <asp:ListItem Value="Salon Services">Salon Services</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEditLectID" runat="server" 
                    ControlToValidate="DropdownListEmpTypeEdit" ErrorMessage="Lecturer ID Required" 
                    ForeColor="Red" CssClass="failureNotification" 
                    ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
            </td>
           
            <td class="style5" colspan="2" rowspan="2">
                <asp:Button ID="UpdateLect_Button" runat="server" Height="50px" 
                    style="font-weight: 700; font-size: x-large; " Text="Update" 
                    Width="368px" onclick="UpdateLect_Button_Click" />
            </td>
           
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="EmpEditFnameLabel" runat="server" Text="Full Name:"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="EmpEditTextBoxFname" runat="server" Width="220px" 
                    style="margin-left: 0px" Height="20px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorLectFname" runat="server" 
                    ControlToValidate="EmpEditTextBoxFname" ErrorMessage="First Name Required" 
                    ForeColor="Red" CssClass="failureNotification" 
                    ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
            </td>

        </tr>

        <tr>
            <td class="style3">
                <asp:Label ID="EmpEditGender" runat="server" Text="Gender:"></asp:Label>
            </td>

            <td class="style7">
                <asp:RadioButton ID="EmpRadioButtonMale" runat="server" GroupName="Gender" 
                    Text="Male" />
                &nbsp;<asp:RadioButton ID="EmpRadioButtonFemale" runat="server" GroupName="Gender" 
                    Text="Female" />
            </td>
           
            <td class="style5" align="center" colspan="2">
                <asp:Button ID="EmpDeleteButton" runat="server" Height="48px" 
                    style="font-size: x-large; font-weight: 700" Text="Delete" Width="362px" 
                    onclick="LectDelete_Button_Click" BackColor="Red" />
            </td>
            
        </tr>

        <tr>
            <td class="style3">
                <asp:Label ID="EmpEditLabelStreetAdd" runat="server" Text="Street:"></asp:Label>
            </td>
            <%--
            <td class="style5">
                <asp:TextBox ID="EditTextBoxLectSt" runat="server" Width="208px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorLectStr" runat="server" 
                    ControlToValidate="editTextBoxLectSt" ErrorMessage="Street Required" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>--%>

             <td class="style7">
                <asp:TextBox ID="EmpEditTextBoxStreetAdd" runat="server" Width="220px" 
                     Height="20px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorLectStr" runat="server" 
                    ControlToValidate="EmpEditTextBoxStreetAdd" ErrorMessage="Street Required" 
                    ForeColor="Red" CssClass="failureNotification" 
                    ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
            </td>
           
            <td class="style5" align="center" rowspan="2">
                <asp:Button ID="EmpConfirmButton" runat="server" Height="40px" 
                    onclick="ButtonLectConfirm_Click" style="font-size: large; font-weight: 700" 
                    Text="Confirm" Visible="False" Width="177px" BackColor="Red" />
            </td>
            
            <td class="style5" align="center" rowspan="2">
                <asp:Button ID="EmpCancelButton" runat="server" Height="40px" 
                    onclick="ButtonLectCancel_Click" style="font-size: large; font-weight: 700" 
                    Text="Cancel" Visible="False" Width="171px" />
            </td>
            
        </tr>
        <tr>
            <td class="style10">
                <asp:Label ID="EmpEditLabelCityAdd" runat="server" Text="City:"></asp:Label>
            </td>
            <%-- <td class="style5">
                <asp:TextBox ID="EditTextBoxLectCity" runat="server" Width="209px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorLectCity" runat="server" 
                    ControlToValidate="EditTextBoxLectCity" ErrorMessage="City Required" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>--%>

             <td class="style10">
                <asp:TextBox ID="EmpEditTextBoxCityAdd" runat="server" Width="220px" 
                     Height="20px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmpEditRequiredFieldValidatorCity" runat="server" 
                    ControlToValidate="EmpEditTextBoxCityAdd" ErrorMessage="City Required" 
                    ForeColor="Red" CssClass="failureNotification" 
                     ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="EmpEditLabelParishAdd" runat="server" Text="Parish:"></asp:Label>
            </td>
            <%-- <td class="style5">
                <asp:TextBox ID="EditTextBoxLectPar" runat="server" Width="209px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EditRequiredValidatorLectPar" runat="server" 
                    ControlToValidate="EditTextBoxLectPar" ErrorMessage="Parish Required" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>--%>
             <td class="style7">
                <asp:DropDownList ID="DropdownListEditEmpParish" runat="server" Height="20px" 
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
                <asp:RequiredFieldValidator ID="EmpEditRequiredFieldValidatorParishAdd" runat="server" 
                    ControlToValidate="DropdownListEditEmpParish" ErrorMessage="Parish Address Required" 
                    ForeColor="Red" CssClass="failureNotification" 
                    ValidationGroup="EditEmployee" 
                     InitialValue="------Select Your Parish------">*</asp:RequiredFieldValidator>
            </td>
          
            <td class="style5" colspan="2">
                <asp:Label ID="EmpLabelMsgDeleteOrCancel" runat="server" ForeColor="Red" 
                    style="font-weight: 700; text-align: center;" Text="Press Cancel or Confirm to Delete Employee" 
                    Width="315px" Visible="False"></asp:Label>
            </td>
          
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="EmpEditLabelPhone" runat="server" Text="Phone Number:"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="EmpEditTextBoxPhone" runat="server" Width="220px" Height="20px" 
                    ToolTip="correct format ----&gt;123-456-7890"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmpPhone" runat="server" 
                ErrorMessage="Phone Number Required" ControlToValidate="EmpEditTextBoxPhone" 
                    CssClass="failureNotification" ForeColor="#FF3300" 
                    ToolTip="Phone Number Required" ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
              
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmpPhone" 
                    runat="server" ControlToValidate="EmpEditTextBoxPhone" 
                    CssClass="failureNotification" 
                    ErrorMessage="correct format ---&gt; 123-456-7890 " ForeColor="Red" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                    ValidationGroup="EditEmployee" ToolTip="correct format---&gt;123-456-7890">*</asp:RegularExpressionValidator>
            </td>
          
        </tr>

        <tr>
            <td class="style3">
                <asp:Label ID="EmpEditYOELabel" runat="server" Text="Years of Experience"></asp:Label>
            </td>
            <%-- <td class="style5">
                <asp:TextBox ID="EditTextBoxLectEmail" runat="server" Width="209px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorLectEmail" runat="server" 
                    ControlToValidate="EditTextBoxLectEmail" ErrorMessage="Email Address Required" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>--%>
             <td class="style7">
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                <asp:TextBox ID="EmpEditYoeTxtBox" runat="server" Width="50px" 
                     Height="20px" TextMode="SingleLine"></asp:TextBox>
                   
                   
                   
                 <asp:NumericUpDownExtender ID="EmpYOE_EXT" runat="server"  
                     Maximum="100" Minimum="1" TargetControlID="EmpEditYoeTxtBox" 
                     Width="80" Step = "1">
                 </asp:NumericUpDownExtender>
                   
                   
                   
                 <%--   <asp:NumericUpDownExtender ID="EmpEditYoeTxtBox_Extender" runat="server"  
                    TargetControlID="EmpEditYoeTxtBox_Extender" Width="80" Step ="1" Minimum="1" Maximum="100"   >
                 </asp:NumericUpDownExtender>--%>
                    
                <asp:RequiredFieldValidator ID="EmpEditRequiredFieldValidatorYOE" runat="server" 
                    ControlToValidate="EmpEditYoeTxtBox" ErrorMessage="Street Address Required" 
                    ForeColor="Red" ValidationGroup="EditEmployee" 
                    CssClass="failureNotification" ToolTip="Street Address Required">*</asp:RequiredFieldValidator>
            </td>
         
        </tr>

        <tr>
            <td class="style3">
                <asp:Label ID="EmpEditLabelEmail" runat="server" Text="Email Address:"></asp:Label>
            </td>
             <td class="style7">
                <asp:TextBox ID="EmpEditTextBoxEmail" runat="server" Width="220px" Height="20px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorEmail" runat="server" 
                    ControlToValidate="EmpEditTextBoxEmail" ErrorMessage="Email Address Required" 
                    ForeColor="Red" CssClass="failureNotification" 
                    ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorLectEmail" 
                    runat="server" ControlToValidate="EmpEditTextBoxEmail" 
                    ErrorMessage="Email Message Format Incorrect" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="failureNotification" ForeColor="Red" 
                    ValidationGroup="EditEmployee" 
                     ToolTip="correct formt ---&gt;johnbrown@mail.com">*</asp:RegularExpressionValidator>
            </td>
         
        </tr>
     
        </table>
        <table class="style8">
            <tr>
                <td rowspan="4">
                    <asp:GridView ID="GrdViewEmpValUpdate" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataSourceID="LinqDataSourceUpdateEmployee" ForeColor="#333333" 
                        GridLines="None" 
                        onselectedindexchanged="GrdViewEmpValUpdate_SelectedIndexChanged" 
                        CellSpacing="1" Width="800px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                            <asp:BoundField DataField="employee_id" HeaderText="ID" 
                                ReadOnly="True" SortExpression="employee_id" />
                            <asp:BoundField DataField="employee_type" HeaderText="Employee Type" 
                                ReadOnly="True" SortExpression="employee_type" />
                            <asp:BoundField DataField="employee_fname" HeaderText="First Name" 
                                ReadOnly="True" SortExpression="employee_fname" />
                            <asp:BoundField DataField="employee_gender" HeaderText="Gender" 
                                ReadOnly="True" SortExpression="employee_gender" />
                            <asp:BoundField DataField="employee_street" HeaderText="Street" 
                                ReadOnly="True" SortExpression="employee_street" />
                            <asp:BoundField DataField="employee_city" HeaderText="City" 
                                ReadOnly="True" SortExpression="employee_city" />
                            <asp:BoundField DataField="employee_parish" HeaderText="Parish" 
                                ReadOnly="True" SortExpression="employee_parish" />
                            <asp:BoundField DataField="employee_phone" HeaderText="Phone" 
                                ReadOnly="True" SortExpression="employee_phone" />
                            <asp:BoundField DataField="employee_yoe" HeaderText="YOE" 
                                ReadOnly="True" SortExpression="employee_yoe" />
                            <asp:BoundField DataField="employee_email" HeaderText="Email" 
                                ReadOnly="True" SortExpression="employee_email" />
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
                    <asp:LinqDataSource ID="LinqDataSourceUpdateEmployee" runat="server" 
                        ContextTypeName="SalonComplex.LinqSQL.DataClassesLinqSQLDataContext" 
                        EntityTypeName="" OrderBy="employee_id, employee_fname" 
                        Select="new (employee_id, employee_type, employee_fname, employee_gender, employee_street, employee_city, employee_parish, employee_phone, employee_yoe, employee_email)" 
                        TableName="employees">
                    </asp:LinqDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
     </table>
    </fieldset>
</asp:Content>
