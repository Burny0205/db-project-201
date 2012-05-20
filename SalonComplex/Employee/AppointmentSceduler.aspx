<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="AppointmentSceduler.aspx.cs" Inherits="SalonComplex.Employee.AppointmentSceduler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main" class="logospace">
        
        <asp:Button runat="server" OnClick="RunScheduler" CssClass="btn btn-primary btn-large" Text="Run Scheduler"/>
        

    </div>
</asp:Content>
