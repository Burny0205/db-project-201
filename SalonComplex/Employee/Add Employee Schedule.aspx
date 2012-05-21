<%@ Page Title="Employee Schedule" Language="C#" MasterPageFile="~/Master/Admin.Master"
    AutoEventWireup="true" CodeBehind="Add Employee Schedule.aspx.cs" Inherits="SalonComplex.Employee.Add_Employee_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .page {
            width: 1290px !important;
        }
        .title {
            text-align: center !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <div id="main" class="logospace">
        <br />
        <p class="empSch">
            Create, edit and update employee schedule using the the grid below.
            <br />
            Tick the days employee will not be available for work. The correct date format is
            dd/mm/yyyy
        </p>
        <asp:SqlDataSource ID="SqlDataSourceEmpSch" runat="server" ConnectionString="<%$ ConnectionStrings:SalonConnectionString %>"
            DeleteCommand="DELETE FROM [schedule] WHERE [schedule_id] = @original_schedule_id AND [employee_id] = @original_employee_id"
            InsertCommand="INSERT INTO [schedule] ([employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (@employee_id, @sch_date, @column1, @column2, @column3, @column4, @column5, @column6, @column7, @column8, @column9, @column10)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [schedule_id], [employee_id], [sch_date], [8:00 am] AS column1, [9:00 am] AS column2, [10:00 am] AS column3, [11:00 am] AS column4, [12:00 pm] AS column5, [1:00 pm] AS column6, [2:00 pm] AS column7, [3:00 pm] AS column8, [4:00 pm] AS column9, [5:00 pm] AS column10 FROM [schedule]"
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
        <asp:ListView ID="ListView1" runat="server" 
            DataKeyNames="schedule_id,employee_id" DataSourceID="SqlDataSourceEmpSch" 
            InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr>
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" CssClass="btn btn-primary"/>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn"/>
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
                <tr>
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" CssClass="btn btn-primary" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" CssClass="btn"
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
                <table runat="server">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" CssClass="btn btn-primary"/>
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" CssClass="btn" />
                    </td>
                    <td>&nbsp;</td>
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
                <tr>
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" CssClass="btn btn-primary"/>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn"/>
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
                            <table id="itemPlaceholderContainer" runat="server" class="table table-condensed table-bordered">
                                <tr>
                                    <th runat="server"></th>
                                    <th runat="server">schedule_id</th>
                                    <th runat="server">employee_id</th>
                                    <th runat="server">sch_date</th>
                                    <th runat="server">8:00_am</th>
                                    <th runat="server">9:00_am</th>
                                    <th runat="server">10:00_am</th>
                                    <th runat="server">11:00_am</th>
                                    <th runat="server">12:00_am</th>
                                    <th runat="server">1:00_m</th>
                                    <th runat="server">2:00_pm</th>
                                    <th runat="server">3:00_pm</th>
                                    <th runat="server">4:00_pm</th>
                                    <th runat="server">5:00_pm</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" ButtonCssClass="btn" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr>
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" CssClass="btn btn-primary"/>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn"/>
                    </td>
                    <td>
                        <asp:Label ID="schedule_idLabel" runat="server" 
                            Text='<%# Eval("schedule_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="employee_idLabel" runat="server" 
                            Text='<%# Eval("employee_id") %>'  Width="10" Height="10"/>
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
    </div>
    
</asp:Content>