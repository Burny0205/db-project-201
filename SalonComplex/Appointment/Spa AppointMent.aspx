<%@ Page Title="Spa Appointment" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Spa AppointMent.aspx.cs" Inherits="SalonComplex.Appointment.Spa_AppointMent" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/hotspot.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/cal.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/appointmentstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Scripts/appointment.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.dateinput.min.js"></script>
    <%--		<div id="content_wrapper">
			<div id="content">
				<div boomtime="left" id="content_in">
    --%>
   

   
    <style type="text/css">
        .style35
        {
            width: 326px;
            text-align: justify;
        }
        .style36
        {
            width: 275px;
            text-align: left;
        }
    </style>
   

    <script type="text/javascript">

        $(function () {
            $('#TextBoxSpaDate').dateinput(
                {
                    format: 'm/d/yyyy',
                    min: -1,
                    max: 7
                });
        })

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
             <p class="appointText" >
                    <asp:Label ID="LabelSpaAppDate" runat="server" ForeColor="Red" Height="21px" 
                        style="font-size: small" Width="174px"></asp:Label>
                </p> 
    </div>
    <form id="appt_request_form" action="/lschedule" method="post" name="form">
    <fieldset class="appointment" style="width: 750px;" id="appointment_info">
        <legend>Spa Appointment Information</legend>
        <div id="appt_services">
            <h2 id="value_service">
                Choose Services</h2>
            
            <dl>
                <div class="spacer">
                </div>
                <div boomtime="right" id="service_menu_edit" class="style13">
                    <div class="style14">
                        <dt style="width: 255px" class="style14">
                            <select id="service_cat" name="service_cat" runat="server"  size="1" onchange="show_service_cat(this.value);">
                                <option value="17157">Nail Services</option>
                                <option value="17158">Wax Services</option>
                            </select>
                    </div>
                    <div class="spacer">
                    </div>
                    <div class="style16">
                        Total $ <span id="service_value">0.00</span><br>
                        </dt>
                    </div>
                    <dd id="service">
                        <div id="service_cat17157">
                            <div class="service_row">
                                <p class='hotspot' name='hotspot' id='hotspot'>
                                    Scissor Services:</p>
                                <div class='hotspot_content' name='hotspot_content' id='hotspot_content'>
                                    <p class="appointText">
                                        Haircut for men, women and children.</p>
                                </div>
                                <table class='service_option_grid'>
                                    <tr class='service_option'>
                                        <td class='style9'>
                                            <input type="checkbox" id="service_option110036" name="service_option110036" value="110036"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style25'>
                                            <label for="service_option110036">
                                                Mens Haircut & Shave</label>
                                            <td class='style3'>
                                                $500.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style9'>
                                            <input type="checkbox" id="service_option110060" name="service_option110060" value="110060"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style25'>
                                            <label for="service_option110060">
                                                Shave & Outline</label>
                                            <td class='style3'>
                                                $300.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style9'>
                                            <input type="checkbox" id="service_option110037" name="service_option110037" value="110037"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style25'>
                                            <label for="service_option110037">
                                                Womens Haircut</label>
                                            <td class='style3'>
                                                $600.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style9'>
                                            <input type="checkbox" id="service_option110038" name="service_option110038" value="110038"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style25'>
                                            <label for="service_option110038">
                                                Childs Haircut (12 & under)</label>
                                            <td class='style3'>
                                                $250.00
                                            </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="service_row">
                                <p class='hotspot' name='hotspot' id='hotspot'>
                                    Special Hair Services:</p>
                                <div class='hotspot_content' name='hotspot_content' id='hotspot_content'>
                                    <p class="appointText">
                                        Various styles offered to suite your look. Style for partying with friends, a wedding,
                                        or a formal event.
                                    </p>
                                </div>
                                <table class='service_option_grid'>
                                    <tr class='service_option'>
                                        <td class='style15'>
                                            <input type="checkbox" id="service_option110051" name="service_option110051" value="110051"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style36'>
                                            <label for="service_option110051">
                                                Shampoo and Blowout</label>
                                            <td class='style31'>
                                                $1200.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style15'>
                                            <input type="checkbox" id="service_option110052" name="service_option110052" value="110052"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style36'>
                                            <label for="service_option110052">
                                                Hightlights & Shampoo</label>
                                            <td class='style31'>
                                                $1150.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style15'>
                                            <input type="checkbox" id="service_option110053" name="service_option110053" value="110053"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style36'>
                                            <label for="service_option110053">
                                                Relaxed & Blow Dry
                                            </label>

                                            <td class='style31'>
                                                $950.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style15'>
                                            <input type="checkbox" id="service_option195816" name="service_option195816" value="195816"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style36'>
                                            <label for="service_option195816">
                                                Hights & Blow Dry
                                            </label>
                                            <td class='style31'>
                                                $700.00
                                            </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="service_row">
                                <p class='hotspot' name='hotspot' id='hotspot'>
                                    Color Services:</p>
                                <div class='hotspot_content' name='hotspot_content' id='hotspot_content'>
                                    <p class="appointText">
                                        Quality professional color offered by our stylist, giving you that vibrant look
                                        and feel for your hair.</p>
                                </div>
                                <table class='service_option_grid'>
                                    <tr class='service_option'>
                                        <td class='style15'>
                                            <input type="checkbox" id="service_option110039" name="service_option110039" value="110039"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style35'>
                                            <label for="service_option110039">
                                                Solid Color</label>
                                            <td class='style11'>
                                                $980.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style15'>
                                            <input type="checkbox" id="service_option110040" name="service_option110040" value="110040"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style35'>
                                            <label for="service_option110040">
                                                Color Cut & Style</label>
                                            <td class='style11'>
                                                $1350.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style15'>
                                            <input type="checkbox" id="service_option110041" name="service_option110041" value="110041"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style35'>
                                            <label for="service_option110041">
                                                Retouch & Color</label>
                                            <td class='style11'>
                                                $800.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style15'>
                                            <input type="checkbox" id="service_option110042" name="service_option110042" value="110042"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style35'>
                                            <label for="service_option110042">
                                                Color & Blow Dry</label>
                                            <td class='style11'>
                                                $625.00
                                            </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div id="service_cat17158">
                            <div class="service_row">
                                <p class='hotspot' name='hotspot' id='hotspot'>
                                    Nail Services</p>
                                <div class='hotspot_content' name='hotspot_content' id='hotspot_content'>
                                    <p class="appointText">
                                        Add the finishing touch on your new look.
                                    </p>
                                </div>
                                <table class='service_option_grid'>
                                    <tr class='service_option'>
                                        <td class='style21'>
                                            <input type="checkbox" id="service_option115962" name="service_option115962" value="115962"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style20' style="text-align: left">
                                            <label for="service_option115962">
                                                Polishing</label>
                                            <td class='style6'>
                                                $300.00
                                            </td>
                                    </tr>
                                    <tr class='service_option'>
                                        <td class='style21'>
                                            <input type="checkbox" id="service_option115964" name="service_option115964" value="115964"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style20'>
                                            <label for="service_option115964" class="style11" style="text-align: left">
                                               Buffing
                                            </label>
                                            <td class='style6'>
                                                $500.00
                                            </td>
                                    </tr>

                                    <tr class='service_option'>
                                        <td class='style21'>
                                            <input type="checkbox"  id = "service_option110061"name="service_option110061" value="110061"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style20'>
                                            <label for="service_option110060" class="style11" style="text-align: left">
                                               Manicures
                                            </label>
                                            <td class='style6'>
                                                $600.00
                                            </td>
                                    </tr>

                                    <tr class='service_option'>
                                        <td class='style21'>
                                            <input type="checkbox"  id = "service_option110062"name="service_option110062" value="110062"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style20' style="text-align: left">
                                            <label for="service_option110062">
                                                Pedicures</label>
                                            <td class='style6'>
                                                $800.00
                                            </td>
                                    </tr>

                                    <tr class='service_option'>
                                        <td class='style21'>
                                            <input type="checkbox"  id="service_option110063"name="service_option110063" value="110063"
                                                onclick="service_calc()">
                                        </td>
                                        <td class='style20' style="text-align: left">
                                            <label for="service_option110063">
                                                Full Sets</label>
                                            <td class='style6'>
                                                $1300.00
                                            </td>
                                    </tr>


                                </table>
                            </div>
                        </div>
                        &nbsp;
                    </dd>
                </div>
            </dl>
        </div>
        <div id="appt_time">
            <h2>
                Select Appointment</h2>
            <div boomtime="right" id="hour_edit">
                <p class="appointText">
                    Please select an employee then enter the desire date and&nbsp; three available times
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
                                <asp:Label ID="LabelEnterAppDate" Text="Enter Appointment Date:" runat="server" 
                                    Style="font-size: medium; font-family: 'Segoe UI'"></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="style27">
                            <p class="appoint_p">
                                <asp:DropDownList ID="DropDownListSpaServices" runat="server" 
                                    AutoPostBack="true" DataSourceID="SqlDataSourceDropListServices"
                                    DataTextField="employee_type" DataValueField="employee_type" Height="25px" 
                                    Width="200px" Enabled="False">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceDropListServices" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>"
                                    
                                    
                                    
                                    SelectCommand="SELECT employee_type FROM employee WHERE (employee_type = 'Spa Services') GROUP BY employee_type">
                                </asp:SqlDataSource>
                            </p>
                        </td>
                        <td class="style28">
                            <p class="appoint_p" align="center">
                                <asp:TextBox ID="TextBoxSpaDate" runat="server" Height="22px" Width="200px" 
                                    ontextchanged="Page_Load" ClientIDMode="Static" AutoPostBack="True"></asp:TextBox>
                            </p>
                        </td>
                    </tr>
                    <td class="style29" align="center">
                        


                        
                           
                                                
                    </td>
                    <td class="style29" align="center">
                          <p class="appoint_p" align="center"></p> </td>
                    </table>
                <br />
                <br />
                <table class="style22">
                    <tr>
                        <td rowspan="4">
                            <asp:GridView ID="GridViewEmpSchedule" runat="server" AllowPaging="True" AllowSorting="True"
                                AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceEmp" ForeColor="#333333"
                                GridLines="None" CellSpacing="2" Style="margin-bottom: 0px" Width="737px" Height="200px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ButtonType="Button" HeaderText="Select Employee" 
                                        ShowSelectButton="True" />
                                    <asp:BoundField DataField="sch_date" HeaderText="Schedule Date" 
                                        SortExpression="sch_date" DataFormatString="{0:d}" />
                                    <asp:BoundField DataField="employee_fname" HeaderText="First Name" SortExpression="employee_fname" />
                                    <asp:TemplateField HeaderText="8:00 am" SortExpression="8:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox10" runat="server" 
                                                Checked='<%# Bind("[8:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox10" runat="server" Checked='<%# Bind("[8:00 am]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[8:00 am]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="9:00 am" SortExpression="9:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox9" runat="server" 
                                                Checked='<%# Bind("[9:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox9" runat="server" Checked='<%# Bind("[9:00 am]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[9:00 am]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="10:00 am" SortExpression="10:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox8" runat="server" 
                                                Checked='<%# Bind("[10:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox8" runat="server" Checked='<%# Bind("[10:00 am]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[10:00 am]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="11:00 am" SortExpression="11:00 am">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox7" runat="server" 
                                                Checked='<%# Bind("[11:00 am]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox7" runat="server" Checked='<%# Bind("[11:00 am]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[11:00 am]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="12:00 pm" SortExpression="12:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox6" runat="server" 
                                                Checked='<%# Bind("[12:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox6" runat="server" Checked='<%# Bind("[12:00 pm]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[12:00 pm]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="1:00 pm" SortExpression="1:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox5" runat="server" 
                                                Checked='<%# Bind("[1:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox5" runat="server" Checked='<%# Bind("[1:00 pm]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[1:00 pm]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="2:00 pm" SortExpression="2:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox4" runat="server" 
                                                Checked='<%# Bind("[2:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox4" runat="server" Checked='<%# Bind("[2:00 pm]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[2:00 pm]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="3:00 pm" SortExpression="3:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox3" runat="server" 
                                                Checked='<%# Bind("[3:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# Bind("[3:00 pm]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[3:00 pm]").ToString()) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="4:00 pm" SortExpression="4:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" 
                                                Checked='<%# Bind("[4:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("[4:00 pm]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[4:00 pm]").ToString()) %>'  />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="5:00 pm" SortExpression="5:00 pm">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" 
                                                Checked='<%# Bind("[5:00 pm]") %>' />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("[5:00 pm]") %>' 
                                                Enabled='<%# toggleEnabled(Eval("[5:00 pm]").ToString()) %>' />
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
                                    <asp:ControlParameter ControlID="DropDownListSpaServices" DefaultValue="" 
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
        
        <p class="appointText">
            Anything else we should know about your desired services or appointment?
            <dl>
                <p class="appointText">
                    <asp:Label ID="AppCommentLabel" runat="server" Text="Comments:" Style="font-weight: 700"></asp:Label>
                </p>
                <dd style="width: 315px">
                    <textarea id="comment" name="comment" cols="35" wrap="virtual" rows="8"></textarea></dd>
                <br />
            </dl>
            <dl>
                <dd style="width: 380px; margin-left: 40px;">
                    <div id="SelectEmployee">
                        <asp:Button ID="SubmitAppButton" runat="server" Style="margin-left: 1px" Text="Submitt Appointment"
                            Width="154px" Height="30px" ValidationGroup="AddApp" OnClick="SubmitAppButton_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="Reset1" type="reset" value="Reset Button" />
                        <br />
                    </div>
            </dl>
    </fieldset>
    </form>
    <script type="text/javascript">
        hotspot_load();
        //show_client_type();
        show_service_cat(document.getElementById('service_cat').value);
        service_calc();
        show_time(1, "", "");
        show_time(2, "", "");
        show_time(3, "", "");
    </script>
    <span id="content_in_end"></span>
    <div class="cleaner">
    </div>
</asp:Content>
