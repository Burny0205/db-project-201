<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true"
    CodeBehind="AppointmentSceduler.aspx.cs" Inherits="SalonComplex.Employee.AppointmentSceduler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main" class="logospace">
        <span class="span10">
            <asp:Button runat="server" OnClick="RunScheduler" CssClass="btn btn-primary btn-large span2"
                Text="Run Scheduler" />
            <a class="btn btn-success btn-large" style="height: 17px;" data-toggle="modal" href="#myModal">
                <i class="icon-refresh icon-white"></i>Start Automatic Scheduler</a></span>
        <br />
        <br />
        <br />
        <asp:Label runat="server" ID="lblResultArea"></asp:Label>
        <br />
        <br />
    </div>
    <div id="myModal" class="modal hide fade" style="display: none;">
        <div class="modal-header">
            <button class="close" data-dismiss="modal">×</button>
            <h3>Edge Salon Automatic Scheduling Service</h3>
        </div>
        <div class="modal-body">
            <p>
                The Automatic Scheduling System automatically processes client Appointments at 6
                hour intervals
            </p>
            <p style="color: red">
                The Automatic Scheduling System is unavailable at this moment. Please contact our
                support team to have this feature deployed.
            </p>
            <p style="color: blue">
                Please use the run scheduler button for manual process to initiate the scheduler.
                Sorry for any inconvenience caused.
            </p>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn" data-dismiss="modal">Close</a>
        </div>
    </div>
</asp:Content>
