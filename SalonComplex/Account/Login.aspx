<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="SalonComplex.Account.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="main" class="logospace">
        <br />
        <p class="login">
            <asp:Label ID="LabelStatus" runat="server" ForeColor="Red"></asp:Label>
        </p>
        <p class="login">
            Please enter your username and password.
            <br />
            <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">Register</asp:HyperLink>
            if you do not have an account.
        </p>
        <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false"
            OnAuthenticate="LoginUserAuthenticate">
            <LayoutTemplate>
                <asp:ValidationSummary ID="AddValidationSummary" runat="server" CssClass="failureNotification"
                    ValidationGroup="LoginUserValidationGroup" />
                <div>
                    <fieldset>
                        <legend>Account Information</legend>
                        <div class="container-fluid">
                            <div class="row-fluid">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="span2">Username:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="span4" MaxLength="50" placeholder="Enter desired username"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                    CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                                    ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="UserName"
                                    ErrorMessage="Invalid UserName" ForeColor="Red" OnServerValidate="CustomValidator1ServerValidate"
                                    CssClass="failureNotification" ValidationGroup="LoginUserValidationGroup">*</asp:CustomValidator>
                            </div>
                            <div class="row-fluid">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="span2">Password:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="span4" TextMode="Password"
                                    MaxLength="30" placeholder="Enter desired password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                    ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator><asp:CustomValidator
                                        ID="CustomValidator2" runat="server" ErrorMessage="Invalid PassWord" CssClass="failureNotification"
                                        ForeColor="Red" OnServerValidate="CustomValidator2ServerValidate" ValidationGroup="LoginUserValidationGroup">*</asp:CustomValidator>
                            </div>
                        <p>
                            <asp:CheckBox ID="RememberMe" runat="server" />
                            <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label>
                        </p>
                        <p class="submitButton">
                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="LoginUserValidationGroup"
                                CssClass="btn btn-primary btn-large span3" />
                        </p>
                            </div>
                        
                    </fieldset>
                </div>
            </LayoutTemplate>
        </asp:Login>
    </div>
</asp:Content>
