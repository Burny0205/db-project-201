<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true"
    CodeBehind="Unauthorized.aspx.cs" Inherits="SalonComplex.Pages.Unauthorized" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="span9 logospace">
        <div class="hero-unit">
            <h2 style="color:red">Unauthorised Access Detected</h2>
            <p>You have attempted to access a resource that is only available to adminstrative staff.
                Use the Home Page button to go back to the main screen or Login has an admin.
                Thank You
            </p>
            <br /><br />
            <p><a class="btn btn-primary btn-large" href="../Default.aspx">Home Page</a>
            <a class="btn btn-primary btn-large btn-info" href="../Account/Login.aspx">Login Page</a></p>
        </div>
    </div>
</asp:Content>
