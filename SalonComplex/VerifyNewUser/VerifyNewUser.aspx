<%@ Page Title="Verification" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerifyNewUser.aspx.cs" Inherits="SalonComplex.VerifyNewUser.VerifyNewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p> 
    <asp:Label ID="LabelStatus" runat="server" Text="Label" ForeColor="Red"></asp:Label>
    </p>
    <p> 
    <asp:Label ID="LabelMsg" runat="server" ForeColor="Red"></asp:Label>
    </p>
</asp:Content>
