<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangeNewPasswordFail.aspx.cs" Inherits="SalonComplex.Account.ChangeNewPasswordFail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="login"> 
    <asp:Label ID="LabelStatus" runat="server" 
        Text="Error occured changing password" ForeColor="Red"></asp:Label></p>
</asp:Content>
