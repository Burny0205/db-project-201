<%@ Page Title="Appointment Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Appointment Page.aspx.cs" Inherits="SalonComplex.Appointment.Appointment_Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register src="../Controls/ServicesControl.ascx" tagName="ServiceControls" tagPrefix="sc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/hotspot.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/appointmentstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Scripts/appointment.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.ui.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.multiselect.min.js"></script>
    <script type="text/javascript">
        $(function () {

            salon.multiselect("#SalonDropDownListTime");

        });
            


</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div boomtime='left' id='part_ar_headline'>
        <h1>
            Book Online</h1>
    </div>
    <div boomtime='left' id='part_ar_intro'>
        <p class="appointText">
            Select your desired services, date and time.
        </p>
        <p class="appointText">
            We will contact you to confirm your reservation via email and a phone call in the
            next 12 hours.</p>
    </div>
    <form id="appt_request_form" action="/lschedule" method="post" name="form">
    <fieldset class="appointment" style="width: 750px;" id="appointment_info">
        <legend>Appointment Information</legend>
        <div id="appt_services">
            <h2 id="value_service">
                Choose Services</h2>
            <p class='radio'>
                <span id="service_option_msg" class="msg"></span>
            </p>
            <dl>
                <div class="spacer">
                </div>
                <div boomtime="right" id="service_menu_edit" class="style13">
                    <table class="appoint_td">
                    <tr>
                        <td class="style2">
                            <p class="appoint_p">
                                <asp:Label ID="Label1" runat="server" Style="font-size: medium; font-weight: 700;
                                    font-family: 'Segoe UI'" Text="Services:" Width="242px"></asp:Label>
                            </p>
                        </td>
                        <td class="style5">
                            <p class="appoint_p">
                                <asp:Label ID="Label2" runat="server" Style="font-size: medium; font-weight: 700;
                                    font-family: 'Segoe UI'" Text=" Employees:" Width="254px"></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="style2">
                            <p class="appoint_p">
                               
                                <asp:DropDownList ID="DropDownListServices" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDropListServices"
                                    DataTextField="employee_type" DataValueField="employee_type" Height="25px" 
                                    Width="200px" OnSelectedIndexChanged="LoadServices">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceDropListServices" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>"
                                    SelectCommand="SELECT DISTINCT employee_type FROM dbo.employee">
                                </asp:SqlDataSource>
                            </p>
                        </td>
                        <td class="style5">
                            <p class="appoint_p">
                                <asp:DropDownList runat="server" Height="25px" Width="200px" ID="DropDownListEmp"
                                    AutoPostBack="true" DataSourceID="SqlDataSourceEmployees" DataTextField="employee_fname"
                                    DataValueField="employee_id">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceEmployees" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>"
                                    ProviderName="<%$ ConnectionStrings:SalonConnectionString.ProviderName %>" SelectCommand="SP_SelectEmployee"
                                    SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownListServices" DefaultValue="" Name="EmpType"
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </p>
                        </td>
                    </tr>
                </table>

                    <div class="spacer">
                    </div>
                    <div class="style16">
                        Total $ <span id="service_value">0.00</span><br />
                    </div>
                    <div id="service">
                        <div id="service_cat17157">
                            <div class="service_row">
                                <table class='service_option_grid'>
                                    <asp:Repeater ID="rptServices" runat="server">
                                        <ItemTemplate>
                                            <sc:ServiceControls ID="ServiceControl" runat="server" Services="<%# Container.DataItem %>" />
                                        </ItemTemplate>
                                    </asp:Repeater>                                 
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </dl>
        </div>
        <div id="appt_time">
            <h2>
                Select Appointment</h2>
            <div boomtime="right" id="hour_edit">
                <p class="appointment">
                    Please select the desire date and&nbsp; three available times
                </p>
                <p class="appoint_p">
                    <asp:Label ID="LabelSpaAppDate" runat="server"></asp:Label>
                </p>
                <p class="message success">Check a few boxes.</p>
                <table class="appoint_td">
                    <td class="style2" rowspan="2">
                        <div style="width: 347px">
                            <p class="appoint_p">
                                <asp:Label ID="LabelEnterAppDate" Text="Enter Appointment Date:" runat="server" Style="font-weight: 700"></asp:Label>
                            </p>
                            <p class="appoint_p">
                                <asp:TextBox ID="TextBoxSpaDate" runat="server" Height="22px" Width="200px"></asp:TextBox>
                                <asp:Image ID="ImageSpaCalendar" runat="server" ImageUrl="~/Images/Calendar_scheduleHS.png"
                                    Height="25px" ImageAlign="AbsMiddle" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpaDateRequired" runat="server"
                                    ControlToValidate="TextBoxSpaDate" Text="*"> </asp:RequiredFieldValidator>
                                <br />
                                <asp:ScriptManager ID="ScriptManagerSpa" runat="server" OnDataBinding="Calendar1SelectionChanged">
                                </asp:ScriptManager>
                                <cc1:CalendarExtender ID="SpaDateCalendar" runat="server" TargetControlID="TextBoxSpaDate"
                                    PopupPosition="BottomLeft" PopupButtonID="ImageSpaCalendar" CssClass="CalendarStyle"
                                    OnDataBinding="SubmitAppButtonClick" Format="d">
                                </cc1:CalendarExtender>
                                <asp:RangeValidator ID="RangeValidatorSpa" runat="server" ForeColor="Red" ValidationGroup="ClientApp">Select date between today to next 7 day!</asp:RangeValidator>
                                <br />
                            </p>
                        </div>
                    </td>
                    <td class="style5">
                        <div>
                            <p class="appoint_p">
                                <asp:Label ID="SalonEmpAvailTime" runat="server" Text="Available Time:" Style="font-weight: 700"></asp:Label>
                            </p>
                            <p class="appoint_p">
                                <asp:DropDownList ID="SalonDropDownListTime" runat="server" Height="27px" Width="200px" ClientIDMode="Static">
                                    <asp:ListItem>8am</asp:ListItem>
                                    <asp:ListItem>9am</asp:ListItem>
                                    <asp:ListItem>10am</asp:ListItem>
                                    <asp:ListItem>11am</asp:ListItem>
                                    <asp:ListItem>12pm</asp:ListItem>
                                    <asp:ListItem>1pm</asp:ListItem>
                                    <asp:ListItem>2pm</asp:ListItem>
                                    <asp:ListItem>3pm</asp:ListItem>
                                    <asp:ListItem>4pm</asp:ListItem>
                                    <asp:ListItem>5pm</asp:ListItem>
                                </asp:DropDownList>
                                <asp:HiddenField ID="time_stamps" ClientIDMode="Static" runat="server"/>
                            </p>
                        </div>

                    </td>
                    <tr>
                        <td class="style5">
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style22">
                    <tr>
                        <td rowspan="4">
                            <asp:GridView ID="GridViewEmpSchedule" runat="server" AllowPaging="True" AllowSorting="True"
                                AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceEmp" ForeColor="#333333"
                                GridLines="None" CellSpacing="2" Style="margin-bottom: 0px" Width="737px" Height="200px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="sch_date" HeaderText="Schedule Date" SortExpression="sch_date" />
                                    <asp:BoundField DataField="employee_fname" HeaderText="First Name" SortExpression="employee_fname" />
                                    <asp:TemplateField HeaderText="8:00 am" SortExpression="8:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox10" runat="server" 
                                                Checked='<%# Bind("[8:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox10" runat="server" Checked='<%# Bind("[8:00 am]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[8:00 am]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="9:00 am" SortExpression="9:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox9" runat="server" 
                                                Checked='<%# Bind("[9:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox9" runat="server" Checked='<%# Bind("[9:00 am]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[9:00 am]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="10:00 am" SortExpression="10:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox8" runat="server" 
                                                Checked='<%# Bind("[10:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox8" runat="server" Checked='<%# Bind("[10:00 am]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[10:00 am]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="11:00 am" SortExpression="11:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox7" runat="server" 
                                                Checked='<%# Bind("[11:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox7" runat="server" Checked='<%# Bind("[11:00 am]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[11:00 am]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="12:00 pm" SortExpression="12:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox6" runat="server" 
                                                Checked='<%# Bind("[12:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox6" runat="server" Checked='<%# Bind("[12:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[12:00 pm]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="1:00 pm" SortExpression="1:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox5" runat="server" 
                                                Checked='<%# Bind("[1:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox5" runat="server" Checked='<%# Bind("[1:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[1:00 pm]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="2:00 pm" SortExpression="2:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox4" runat="server" 
                                                Checked='<%# Bind("[2:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox4" runat="server" Checked='<%# Bind("[2:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[2:00 pm]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="3:00 pm" SortExpression="3:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox3" runat="server" 
                                                Checked='<%# Bind("[3:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# Bind("[3:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[3:00 pm]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="4:00 pm" SortExpression="4:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" 
                                                Checked='<%# Bind("[4:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("[4:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[4:00 pm]").ToString()) %>'  />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="5:00 pm" SortExpression="5:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" 
                                                Checked='<%# Bind("[5:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("[5:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[5:00 pm]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
                            <asp:SqlDataSource ID="SqlDataSourceEmp" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>"
                                DeleteCommand="DELETE FROM [schedule] WHERE [employee_id] = @employee_id AND [schedule_id] = @schedule_id"
                                InsertCommand="INSERT INTO [schedule] ([sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm], [employee_id]) VALUES (@sch_date, @column1, @column2, @column3, @column4, @column5, @column6, @column7, @column8, @column9, @column10, @employee_id)"
                                SelectCommand="SP_CheckEmployee"
                                
                                UpdateCommand="UPDATE [schedule] SET [sch_date] = @sch_date, [8:00 am] = @column1, [9:00 am] = @column2, [10:00 am] = @column3, [11:00 am] = @column4, [12:00 pm] = @column5, [1:00 pm] = @column6, [2:00 pm] = @column7, [3:00 pm] = @column8, [4:00 pm] = @column9, [5:00 pm] = @column10 WHERE [employee_id] = @employee_id AND [schedule_id] = @schedule_id" 
                                SelectCommandType="StoredProcedure">
                                <DeleteParameters>
                                    <asp:Parameter Name="employee_id" Type="Int32" />
                                    <asp:Parameter Name="schedule_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter DbType="Date" Name="sch_date" />
                                    <asp:Parameter Name="column1" Type="Boolean" />
                                    <asp:Parameter Name="column2" Type="Boolean" />
                                    <asp:Parameter Name="column3" Type="Boolean" />
                                    <asp:Parameter Name="column4" Type="Boolean" />
                                    <asp:Parameter Name="column5" Type="Boolean" />
                                    <asp:Parameter Name="column6" Type="Boolean" />
                                    <asp:Parameter Name="column7" Type="Boolean" />
                                    <asp:Parameter Name="column8" Type="Boolean" />
                                    <asp:Parameter Name="column9" Type="Boolean" />
                                    <asp:Parameter Name="column10" Type="Boolean" />
                                    <asp:Parameter Name="employee_id" Type="Int32" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBoxSpaDate" Name="SchDate" PropertyName="Text"
                                        DefaultValue="2012-07-05" DbType="Date" />
                                    <asp:ControlParameter ControlID="DropDownListServices" DefaultValue="" 
                                        Name="EmpType" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter DbType="Date" Name="sch_date" />
                                    <asp:Parameter Name="column1" Type="Boolean" />
                                    <asp:Parameter Name="column2" Type="Boolean" />
                                    <asp:Parameter Name="column3" Type="Boolean" />
                                    <asp:Parameter Name="column4" Type="Boolean" />
                                    <asp:Parameter Name="column5" Type="Boolean" />
                                    <asp:Parameter Name="column6" Type="Boolean" />
                                    <asp:Parameter Name="column7" Type="Boolean" />
                                    <asp:Parameter Name="column8" Type="Boolean" />
                                    <asp:Parameter Name="column9" Type="Boolean" />
                                    <asp:Parameter Name="column10" Type="Boolean" />
                                    <asp:Parameter Name="employee_id" Type="Int32" />
                                    <asp:Parameter Name="schedule_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <br />
        <br />
        <p class="appointText">
            Anything else we should know about your desired services or appointment?
            <dl>
                <p class="appointText">
                    <asp:Label ID="AppCommentLabel" runat="server" Text="Comments:" Style="font-weight: 700"></asp:Label>
                </p>
                <dd style="width: 315px">
                    <asp:TextBox ID="comment" name="comment" Columns="35" Wrap="True" Rows="8" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
            </dl>
            <dl>
                <dd style="width: 380px; margin-left: 40px;">
                    <div id="SelectEmployee">
                        <asp:Button ID="SubmitAppButton" runat="server" Style="margin-left: 1px" Text="Submitt Appointment"
                            Width="154px" Height="30px" ValidationGroup="AddApp" OnClick="SubmitAppButtonClick" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="ResetButton" runat="server" Style="margin-left: 1px" Text="Reset Page"
                            Width="154px" Height="30px" ValidationGroup="AddApp" OnClientClick="salon.reset()" />
                        <br />
                    </div>
            </dl>
    </fieldset>
    </form>
    <script type="text/javascript">
     /*   hotspot_load();
        show_client_type();
        show_service_cat(document.getElementById('service_cat').value);
        service_calc();
        show_time(1, "", "");
        show_time(2, "", "");
        show_time(3, "", ""); */
    </script>
    <span id="content_in_end"></span>
    <div class="cleaner">
    </div>
</asp:Content>
