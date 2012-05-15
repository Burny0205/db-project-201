<%@ Page Title="Employee Schedule" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Add Employee Schedule.aspx.cs" Inherits="SalonComplex.Employee.Add_Employee_Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .styleScheduleTable
        {
            width: 80%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
<br />

        <p class = "empSch"> Create, edit and update employee schedule using the the grid below. <br />
                    Tick the days employee will not be available for work.
                    The correct date format is dd/mm/yyyy</p>
 <br />

      
    <table class="styleScheduleTable">
        <tr>
            <td>
                <asp:ListView ID="ListViewEmpSch" runat="server" 
                    DataSourceID="SqlDataSourceEmpSch" InsertItemPosition="LastItem" 
                    DataKeyNames="schedule_id,employee_id">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="schedule_idLabel" runat="server" 
                                    Text='<%# Eval("schedule_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="employee_idLabel" runat="server" 
                                    Text='<%# Eval("employee_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="sch_dateLabel" runat="server" Text='<%# Eval("sch_date") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column1CheckBox" runat="server" 
                                    Checked='<%# Eval("column1") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column2CheckBox" runat="server" 
                                    Checked='<%# Eval("column2") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column3CheckBox" runat="server" 
                                    Checked='<%# Eval("column3") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column4CheckBox" runat="server" 
                                    Checked='<%# Eval("column4") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column5CheckBox" runat="server" 
                                    Checked='<%# Eval("column5") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column6CheckBox" runat="server" 
                                    Checked='<%# Eval("column6") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column7CheckBox" runat="server" 
                                    Checked='<%# Eval("column7") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column8CheckBox" runat="server" 
                                    Checked='<%# Eval("column8") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column9CheckBox" runat="server" 
                                    Checked='<%# Eval("column9") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column10CheckBox" runat="server" 
                                    Checked='<%# Eval("column10") %>' Enabled="false" />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color:#008A8C;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                    Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                    Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="schedule_idLabel1" runat="server" 
                                    Text='<%# Eval("schedule_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="employee_idLabel1" runat="server" 
                                    Text='<%# Eval("employee_id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="sch_dateTextBox" runat="server" 
                                    Text='<%# Bind("sch_date") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column1CheckBox" runat="server" 
                                    Checked='<%# Bind("column1") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column2CheckBox" runat="server" 
                                    Checked='<%# Bind("column2") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column3CheckBox" runat="server" 
                                    Checked='<%# Bind("column3") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column4CheckBox" runat="server" 
                                    Checked='<%# Bind("column4") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column5CheckBox" runat="server" 
                                    Checked='<%# Bind("column5") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column6CheckBox" runat="server" 
                                    Checked='<%# Bind("column6") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column7CheckBox" runat="server" 
                                    Checked='<%# Bind("column7") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column8CheckBox" runat="server" 
                                    Checked='<%# Bind("column8") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column9CheckBox" runat="server" 
                                    Checked='<%# Bind("column9") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column10CheckBox" runat="server" 
                                    Checked='<%# Bind("column10") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>
                                    No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                    Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                    Text="Clear" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="employee_idTextBox" runat="server" 
                                    Text='<%# Bind("employee_id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="sch_dateTextBox" runat="server" 
                                    Text='<%# Bind("sch_date") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column1CheckBox" runat="server" 
                                    Checked='<%# Bind("column1") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column2CheckBox" runat="server" 
                                    Checked='<%# Bind("column2") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column3CheckBox" runat="server" 
                                    Checked='<%# Bind("column3") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column4CheckBox" runat="server" 
                                    Checked='<%# Bind("column4") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column5CheckBox" runat="server" 
                                    Checked='<%# Bind("column5") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column6CheckBox" runat="server" 
                                    Checked='<%# Bind("column6") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column7CheckBox" runat="server" 
                                    Checked='<%# Bind("column7") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column8CheckBox" runat="server" 
                                    Checked='<%# Bind("column8") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column9CheckBox" runat="server" 
                                    Checked='<%# Bind("column9") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column10CheckBox" runat="server" 
                                    Checked='<%# Bind("column10") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="schedule_idLabel" runat="server" 
                                    Text='<%# Eval("schedule_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="employee_idLabel" runat="server" 
                                    Text='<%# Eval("employee_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="sch_dateLabel" runat="server" Text='<%# Eval("sch_date") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column1CheckBox" runat="server" 
                                    Checked='<%# Eval("column1") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column2CheckBox" runat="server" 
                                    Checked='<%# Eval("column2") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column3CheckBox" runat="server" 
                                    Checked='<%# Eval("column3") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column4CheckBox" runat="server" 
                                    Checked='<%# Eval("column4") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column5CheckBox" runat="server" 
                                    Checked='<%# Eval("column5") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column6CheckBox" runat="server" 
                                    Checked='<%# Eval("column6") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column7CheckBox" runat="server" 
                                    Checked='<%# Eval("column7") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column8CheckBox" runat="server" 
                                    Checked='<%# Eval("column8") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column9CheckBox" runat="server" 
                                    Checked='<%# Eval("column9") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column10CheckBox" runat="server" 
                                    Checked='<%# Eval("column10") %>' Enabled="false" />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th runat="server">
                                            </th>
                                            <th runat="server">
                                                Schedule ID</th>
                                            <th runat="server">
                                                Employee ID</th>
                                            <th runat="server">
                                                Schedule Date</th>
                                            <th runat="server">
                                                8:00 AM</th>
                                            <th runat="server">
                                                9:00 AM</th>
                                            <th runat="server">
                                                10:00 AM</th>
                                            <th runat="server">
                                                11:00 AM</th>
                                            <th runat="server">
                                                12:00 PM</th>
                                            <th runat="server">
                                                1:00 PM</th>
                                            <th runat="server">
                                                2:00 PM</th>
                                            <th runat="server">
                                                3:00 PM</th>
                                            <th runat="server">
                                                4:00 PM</th>
                                            <th runat="server">
                                                5:00 PM</th>
                                        </tr>
                                        <tr ID="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" 
                                    style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="schedule_idLabel" runat="server" 
                                    Text='<%# Eval("schedule_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="employee_idLabel" runat="server" 
                                    Text='<%# Eval("employee_id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="sch_dateLabel" runat="server" Text='<%# Eval("sch_date") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="column1CheckBox" runat="server" 
                                    Checked='<%# Eval("column1") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column2CheckBox" runat="server" 
                                    Checked='<%# Eval("column2") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column3CheckBox" runat="server" 
                                    Checked='<%# Eval("column3") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column4CheckBox" runat="server" 
                                    Checked='<%# Eval("column4") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column5CheckBox" runat="server" 
                                    Checked='<%# Eval("column5") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column6CheckBox" runat="server" 
                                    Checked='<%# Eval("column6") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column7CheckBox" runat="server" 
                                    Checked='<%# Eval("column7") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column8CheckBox" runat="server" 
                                    Checked='<%# Eval("column8") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column9CheckBox" runat="server" 
                                    Checked='<%# Eval("column9") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:CheckBox ID="column10CheckBox" runat="server" 
                                    Checked='<%# Eval("column10") %>' Enabled="false" />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>                                         
                <asp:SqlDataSource ID="SqlDataSourceEmpSch" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>" 
                    DeleteCommand="DELETE FROM [schedule] WHERE [schedule_id] = @original_schedule_id AND [employee_id] = @original_employee_id" 
                    InsertCommand="INSERT INTO [schedule] ([employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (@employee_id, @sch_date, @column1, @column2, @column3, @column4, @column5, @column6, @column7, @column8, @column9, @column10)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [schedule_id], [employee_id], [sch_date], [8:00 am] AS column1, [9:00 am] AS column2, [10:00 am] AS column3, [11:00 am] AS column4, [12:00 pm] AS column5, [1:00 pm] AS column6, [2:00 pm] AS column7, [3:00 pm] AS column8, [4:00 pm] AS column9, [5:00 pm] AS column10 FROM [schedule]" 
                    
                    
                    
                    UpdateCommand="UPDATE [schedule] SET [sch_date] = @sch_date, [8:00 am] = @column1, [9:00 am] = @column2, [10:00 am] = @column3, [11:00 am] = @column4, [12:00 pm] = @column5, [1:00 pm] = @column6, [2:00 pm] = @column7, [3:00 pm] = @column8, [4:00 pm] = @column9, [5:00 pm] = @column10 WHERE [schedule_id] = @original_schedule_id AND [employee_id] = @original_employee_id">
                    <DeleteParameters>
                        <asp:Parameter Name="original_schedule_id" Type="Int32" />
                        <asp:Parameter Name="original_employee_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="employee_id" Type="Int32" />
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
                    </InsertParameters>
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
                        <asp:Parameter Name="original_schedule_id" Type="Int32" />
                        <asp:Parameter Name="original_employee_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>             
            </td>
        </tr>
    </table>
    </asp:Content>

