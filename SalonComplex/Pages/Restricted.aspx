<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true"
    CodeBehind="Restricted.aspx.cs" Inherits="SalonComplex.Pages.Restricted" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="span9 logospace">
        <div class="hero-unit">
            <h2 style="color:red">Un-aunthenticated Access Detected</h2>
            <p>You have attempted to access a resource that is only available to authenticated users.
                Please Login or create and account before accessing these pages.
                Thank You
            </p>
            <br /><br />
            <p><a class="btn btn-primary btn-large" href="../Account/Login.aspx">Home Page</a>
            <a class="btn btn-primary btn-large btn-info" href="../Account/Register.aspx">Login Page</a></p>
        </div>
    </div>
</asp:Content>
