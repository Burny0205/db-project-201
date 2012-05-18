<%@ Page Title="Salon Appointment" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Salon AppointMent.aspx.cs" Inherits="SalonComplex.Appointment.SalonAppointMent" %>
<%@ Register TagPrefix="sc" TagName="ServiceControls" Src="~/Controls/ServicesControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/hotspot.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/appointmentstyle.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/cal.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Scripts/appointment.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.dateinput.min.js"></script>

    <%--		<div id="content_wrapper">
			<div id="content">
				<div boomtime="left" id="content_in">
    --%>
  
    <script type="text/javascript">
        
        $(function () {
            $('#TextBoxSpaDate').dateinput(
                {
                    format: 'm/d/yyyy',
                    min: -1,
                    max: 7
                });
            

            $('#GridViewSalonEmpSchedule :checked').live("click", function () {
                var result = $('#GridViewSalonEmpSchedule :checked').not(':disabled');
                if (result.length > 3) {
                    alert('Cannot select more than three times');
                    $(this).attr('checked', false);
                }
            });
            
        })
        

    </script>

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div boomtime='left' id='part_ar_headline'>
    </div>
    <div boomtime='left' id='part_ar_intro'>
        <p class="appointText">
          <!-- We will contact you to confirm your reservation via email and phone call in the
           next 12 hours. -->
        </p>
        <p class="appointText" >
           <asp:Label ID="LabelSpaAppDate" runat="server" ForeColor="Red" Height="21px" 
           style="font-size: small" Width="174px"></asp:Label>
        </p>
    </div>
    <form id="appt_request_form" action="/lschedule" method="post" name="form">
    <fieldset class="appointment" style="width: 750px;" id="appointment_info">
        <legend>Salon Appointment Information</legend>
        <div id="appt_services">
            <h2 id="value_service">
                Choose Services</h2>
            <dl>
                <div class="spacer">
                </div>
                <div boomtime="right" id="service_menu_edit" class="style13">
                    <div class="style14">
                        <dt style="width: 255px" class="style14">
                             <asp:DropDownList ID="SalonDropDownList" runat="server" ClientIDMode="Static" AutoPostBack="True" OnSelectedIndexChanged="LoadServices">
                                    <asp:ListItem>Women Hair Services</asp:ListItem>
                                    <asp:ListItem>Men Hair Services</asp:ListItem>
                                    <asp:ListItem>Boys Hair Services</asp:ListItem>
                             </asp:DropDownList>
                             <br /> <br />
                    </div>
                    <div class="spacer">
                    </div>
                    <div class="style14">Total $ <span id="service_value">0.00 </span>
                    </div>
                    <br />  
                    <div id="service">
                        <div>
                            <div>
                                <table class='table table-bordered table-striped'>
                                    <tr>
                                        <th></th>
                                        <th>Service Name</th>
                                        <th>Price</th>
                                    </tr>
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
            <h2 class="clearmargin">Select Appointment
            </h2>
            <div boomtime="right" id="hour_edit">
                <p class="alert alert-info span8 clearmargin">
                    Please select a date and enter any three (3) times (in order of preference) from employee schedule below.
                </p>
              
                <table class="appoint_td">
                    <tr>
                        <td class="style27">
                            <p class="appoint_p">
                                <asp:Label ID="SalonServiceEmpLabel" runat="server" 
                                    Style="font-size: medium; font-family: 'Segoe UI'" Text="Services:" 
                                    Width="242px" Height="21px"></asp:Label>
                            </p>
                         </td>
                        <td class="style28">
                            <p class="appoint_p">
                                <asp:Label ID="SalonDateLabel" runat="server" 
                                    Style="font-size: medium; font-family: 'Segoe UI'" Text="Enter Appointment Date:"
                                    Width="242px" Height="21px"></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="style27">
                            <p class="appoint_p">
                                <asp:DropDownList ID="DropDownListSalonServices" runat="server" 
                                    DataSourceID="SqlDataSourceDropListServices"
                                    DataTextField="employee_type" DataValueField="employee_type" Height="25px" 
                                    Width="200px" Enabled="False">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceDropListServices" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>"
                                    SelectCommand="SELECT employee_type FROM employee WHERE (employee_type = 'Salon Services')  GROUP BY employee_type">
                                </asp:SqlDataSource>
                            </p>
                        </td>
                        <td class="style28">
                            <p class="appoint_p" align="center">
                                <asp:TextBox ID="TextBoxSpaDate" runat="server" Height="22px" Width="200px" 
                                     ClientIDMode="Static" AutoPostBack="True" placeholder="select a date"></asp:TextBox>
                            </p>
                        </td>
                    </tr>
                    </table>
                <br />
                <br />
                            <asp:GridView ID="GridViewSalonEmpSchedule" runat="server" AllowPaging="True" AllowSorting="True"
                                AutoGenerateColumns="False" DataSourceID="SqlDataSourceEmp"
                                GridLines="None" ClientIDMode="Static" CssClass="table">
                                <Columns>
                                    <asp:BoundField DataField="sch_date" HeaderText="Schedule Date" 
                                        SortExpression="sch_date" DataFormatString="{0:d}" />
                                    <asp:BoundField DataField="employee_fname" HeaderText="Employee Name" SortExpression="employee_fname" />
                                    <asp:TemplateField HeaderText="8:00 am" SortExpression="8:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox10" runat="server" 
                                                Checked='<%# Bind("[8:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox10" runat="server" Checked='<%# Bind("[8:00 am]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[8:00 am]").ToString()) %>' Text='<%# Bind("employee_id") %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="9:00 am" SortExpression="9:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox9" runat="server" 
                                                Checked='<%# Bind("[9:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox9" runat="server" Checked='<%# Bind("[9:00 am]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[9:00 am]").ToString()) %>' Text='<%# Bind("employee_id") %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="10:00 am" SortExpression="10:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox8" runat="server" 
                                                Checked='<%# Bind("[10:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox8" runat="server" Checked='<%# Bind("[10:00 am]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[10:00 am]").ToString()) %>' Text='<%# Bind("employee_id") %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="11:00 am" SortExpression="11:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox7" runat="server" 
                                                Checked='<%# Bind("[11:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox7" runat="server" Checked='<%# Bind("[11:00 am]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[11:00 am]").ToString()) %>' Text='<%# Bind("employee_id") %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="12:00 pm" SortExpression="12:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox6" runat="server" 
                                                Checked='<%# Bind("[12:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox6" runat="server" Checked='<%# Bind("[12:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[12:00 pm]").ToString()) %>' Text='<%# Bind("employee_id") %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="1:00 pm" SortExpression="1:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox5" runat="server" 
                                                Checked='<%# Bind("[1:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox5" runat="server" Checked='<%# Bind("[1:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[1:00 pm]").ToString()) %>' Text='<%# Bind("employee_id") %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="2:00 pm" SortExpression="2:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox4" runat="server" 
                                                Checked='<%# Bind("[2:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox4" runat="server" Checked='<%# Bind("[2:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[2:00 pm]").ToString()) %>' Text='<%# Bind("employee_id") %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="3:00 pm" SortExpression="3:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox3" runat="server" 
                                                Checked='<%# Bind("[3:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# Bind("[3:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[3:00 pm]").ToString()) %>' Text='<%# Bind("employee_id") %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="4:00 pm" SortExpression="4:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" 
                                                Checked='<%# Bind("[4:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("[4:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[4:00 pm]").ToString()) %>' Text='<%# Bind("employee_id") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="5:00 pm" SortExpression="5:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" 
                                                Checked='<%# Bind("[5:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("[5:00 pm]") %>' 
                                                Enabled='<%# ToggleEnabled(Eval("[5:00 pm]").ToString()) %>' Text='<%# Bind("employee_id") %>'/>
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
                                        DefaultValue="" DbType="Date" />
                                    <asp:ControlParameter ControlID="DropDownListSalonServices" DefaultValue="" 
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
            </div>
        </div>
        <br />
        
        <p class="appointText">
            Anything else we should know about your desired services or appointment?
            <dl>
                <p class="appointText">
                <asp:Label ID="AppCommentLabel" runat="server" Text="Comments:" Style="font-weight: 700"></asp:Label>
                </p>
                <dd style="width: 315px">
                    <asp:TextBox runat="server" ID="comment" Columns="35" Rows="8" Wrap="True" TextMode="MultiLine"></asp:TextBox>
                <br />
            </dl>
            <dl>
                <dd style="width: 380px; margin-left: 10px;">
                    <div id="SelectEmployee">
                        <asp:Button ID="SubmitAppButton" runat="server" Style="margin-left: 1px" Text="Submit Appointment"
                            Width="154px" Height="30px" ValidationGroup="AddApp" OnClick="SubmitAppButtonClick" CssClass="btn btn-primary" />
                        <input id="Reset1" type="reset" value="Reset Button" class="btn" />
                        <br />
                    </div>
            </dl>
    </fieldset>
    </form>
    <span id="content_in_end"></span>
    <div class="cleaner">
    </div>
</asp:Content>

