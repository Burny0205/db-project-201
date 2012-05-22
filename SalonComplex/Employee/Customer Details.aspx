<%@ Page Title="Edit Customer" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Customer Details.aspx.cs" Inherits="SalonComplex.Employee.CustomerDetails" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<br />
    <h1>
        Edit Client </h1>
        <br />
        <br />
    <p>
                <asp:Label ID="EmpEditLabelStatus" runat="server" 
                    style="font-size: medium; font-weight: 700" CssClass="failureNotification"></asp:Label>
</p>
 <asp:ValidationSummary ID="ValidationSummaryEditEmployee" runat="server" 
        ForeColor="Red" ValidationGroup="EditEmployee" style="font-size: small" />
 <fieldset style="width:800px; height:auto">
    <legend> Client Information</legend> 
    <table class="style1">
        <tr>
            <td class="style7">
                <asp:Label ID="EmpEditLabelType" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="EmpEditTextBoxFname0" runat="server" Width="220px" 
                    style="margin-left: 0px" Height="20px" CssClass="textEntry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="EmpEditTextBoxFname" CssClass="failureNotification" 
                    ErrorMessage="RequiredFieldValidator" ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
            </td>
           
            <td class="style5" colspan="2" rowspan="2">
                <asp:Button ID="UpdateLect_Button" runat="server" Height="50px" 
                    style="font-weight: 700; font-size: x-large; " Text="Update" 
                    Width="368px" onclick="UpdateLectButtonClick" CssClass="btn btn-primary btn-large" />
            </td>
           
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="EmpEditFnameLabel" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="style7" colspan="2">
                <asp:TextBox ID="EmpEditTextBoxFname" runat="server" Width="220px" 
                    style="margin-left: 0px" Height="20px" CssClass="textEntry"></asp:TextBox>
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
                &nbsp;</td>
           
            <td class="style7" align="left" valign="top">
                <asp:RadioButton ID="EmpRadioButtonFemale" runat="server" GroupName="Gender" 
                    Text="Female" />
            </td>
           
            <td class="style5" align="center" colspan="2">
                <asp:Button ID="EmpDeleteButton" runat="server" Height="48px" 
                    style="font-size: x-large; font-weight: 700" Text="Delete" Width="362px" 
                    onclick="LectDeleteButtonClick" BackColor="Red" CssClass="btn btn-large btn-danger" />
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

             <td class="style7" colspan="2">
                <asp:TextBox ID="EmpEditTextBoxStreetAdd" runat="server" Width="220px" 
                     Height="20px" CssClass="textEntry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EditRequiredFieldValidatorLectStr" runat="server" 
                    ControlToValidate="EmpEditTextBoxStreetAdd" ErrorMessage="Street Required" 
                    ForeColor="Red" CssClass="failureNotification" 
                    ValidationGroup="EditEmployee">*</asp:RequiredFieldValidator>
            </td>
           
            <td class="style5" align="center" rowspan="2">
                <asp:Button ID="EmpConfirmButton" runat="server" Height="40px" 
                    onclick="ButtonLectConfirmClick" style="font-size: large; font-weight: 700" 
                    Text="Confirm" Visible="False" Width="177px" BackColor="Red" />
            </td>
            
            <td class="style5" align="center" rowspan="2">
                <asp:Button ID="EmpCancelButton" runat="server" Height="40px" 
                    onclick="ButtonLectCancelClick" style="font-size: large; font-weight: 700" 
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

             <td class="style10" colspan="2">
                <asp:TextBox ID="EmpEditTextBoxCityAdd" runat="server" Width="220px" 
                     Height="20px" CssClass="textEntry"></asp:TextBox>
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
             <td class="style7" colspan="2">
                <asp:DropDownList ID="DropdownListEditEmpParish" runat="server" Height="26px" 
                    style="margin-right: 0px" Width="220px" CssClass="textEntry">
                    <asp:ListItem Selected="True">------Select Your Parish------</asp:ListItem>
                    <asp:ListItem>Manchester</asp:ListItem>
                    <asp:ListItem>Clarendon</asp:ListItem>
                    <asp:ListItem>ST Elizabeth</asp:ListItem>
                    <asp:ListItem>ST Andrew</asp:ListItem>
                    <asp:ListItem>Trelawny</asp:ListItem>
                    <asp:ListItem>Hanover</asp:ListItem>
                    <asp:ListItem>Portland</asp:ListItem>
                    <asp:ListItem>ST Thomas</asp:ListItem>
                    <asp:ListItem>Westmoreland</asp:ListItem>
                    <asp:ListItem>ST Catherine</asp:ListItem>
                    <asp:ListItem>ST Mary</asp:ListItem>
                    <asp:ListItem>ST Ann</asp:ListItem>
                    <asp:ListItem>Kingston</asp:ListItem>
                    <asp:ListItem>ST James</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="EmpEditRequiredFieldValidatorParishAdd" runat="server" 
                    ControlToValidate="Profession" ErrorMessage="Parish Address Required" 
                    ForeColor="Red" CssClass="failureNotification" 
                    ValidationGroup="EditEmployee" 
                     InitialValue="------Select Your Parish------">*</asp:RequiredFieldValidator>
            </td>
          
            <td class="style5" colspan="2">
                <asp:Label ID="EmpLabelMsgDeleteOrCancel" runat="server" ForeColor="Red" 
                    style="font-weight: 700; text-align: center;" Text="Press Cancel or Confirm to Delete Client" 
                    Width="315px" Visible="False"></asp:Label>
            </td>
          
        </tr>
        <tr>
            <td class="style3">
                 <asp:Label ID="ProfessionLabel" runat="server" AssociatedControlID="Profession" CssClass="span2">Profession:</asp:Label></td>
             <td class="style7" colspan="2">
                 <asp:DropDownList ID="Profession" runat="server" ValidationGroup="RegisterUserValidationGroup"
                                ViewStateMode="Enabled" CssClass="textEntry" Width="221px">
                                <asp:ListItem Selected="True">----Select Your Profession----</asp:ListItem>
                                <asp:ListItem>Accountant</asp:ListItem>
                                <asp:ListItem>Banker</asp:ListItem>
                                <asp:ListItem>Doctor</asp:ListItem>
                                <asp:ListItem>Teacher</asp:ListItem>
                                <asp:ListItem>Taxi-Driver</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="ProfessionRequired" runat="server" ControlToValidate="DropdownListEditEmpParish"
                                CssClass="failureNotification" ErrorMessage="You must select a Profession!!!."
                                InitialValue="----Select Your Profession----" ToolTip="You must select a Profession!!"
                                ValidationGroup="RegisterUserValidationGroup"> *</asp:RequiredFieldValidator></td>
          
            <td class="style5" colspan="2">
                &nbsp;</td>
          
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="EmpEditLabelPhone" runat="server" Text="Phone Number:"></asp:Label>
            </td>
            <td class="style7" colspan="2">
                <asp:TextBox ID="EmpEditTextBoxPhone" runat="server" Width="220px" Height="20px" 
                    ToolTip="correct format ----&gt;123-456-7890" CssClass="textEntry"></asp:TextBox>

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

        </table>
        <br />
        <br />
        <table class="style8">
            <tr>
                <td rowspan="4">
                    <asp:GridView ID="GrdViewEmpValUpdate" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataSourceID="LinqDataSourceClient" ForeColor="#333333" 
                        GridLines="None" 
                        onselectedindexchanged="GrdViewEmpValUpdateSelectedIndexChanged" 
                        CellSpacing="2" Width="800px" DataKeyNames="client_id">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775"/>
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="client_id" HeaderText="client_id" 
                                ReadOnly="True" SortExpression="client_id" InsertVisible="False" />
                            <asp:BoundField DataField="client_LoginID" HeaderText="client_LoginID" 
                                SortExpression="client_LoginID" />
                            <asp:BoundField DataField="client_fname" HeaderText="client_fname" 
                                SortExpression="client_fname" />
                            <asp:BoundField DataField="client_lname" HeaderText="client_lname" 
                                SortExpression="client_lname" />
                            <asp:BoundField DataField="client_gender" HeaderText="client_gender" 
                                SortExpression="client_gender" />
                            <asp:BoundField DataField="client_street" HeaderText="client_street" 
                                SortExpression="client_street" />
                            <asp:BoundField DataField="client_city" HeaderText="client_city" 
                                SortExpression="client_city" />
                            <asp:BoundField DataField="client_parish" HeaderText="client_parish" 
                                SortExpression="client_parish" />
                            <asp:BoundField DataField="client_profession" HeaderText="client_profession" 
                                SortExpression="client_profession" />
                            <asp:BoundField DataField="client_phone" HeaderText="client_phone" 
                                SortExpression="client_phone" />
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
                    <asp:LinqDataSource ID="LinqDataSourceClient" runat="server" 
                        ContextTypeName="SalonComplex.LinqSQL.DataClassesLinqSQLDataContext" 
                        EntityTypeName="" OrderBy="client_fname, client_lname" TableName="clients">
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
