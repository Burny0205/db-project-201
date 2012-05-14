<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact_Dult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 91%;
            margin-right: 0px;
            height: 982px;
        }
        .style11
        {
            width: 365px;
        }
        .style13
        {
            width: 1253px;
        }
        .style15
        {
            width: 1253px;
            height: 73px;
        }
        .style16
        {
            width: 365px;
            height: 73px;
        }
        .style18
        {
            width: 365px;
            text-align: left;
            height: 39px;
        }
        .wp-image-134
        {
            width: 408px;
            height: 256px;
        }
        .style19
        {
            width: 1253px;
            height: 16px;
        }
        .style20
        {
            width: 365px;
            height: 16px;
        }
        .style23
        {
            width: 1253px;
            height: 46px;
        }
        .style24
        {
            width: 365px;
            height: 46px;
        }
        .style25
        {
            width: 1253px;
            height: 39px;
        }
        .style26
        {
            width: 365px;
            height: 180px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">




    <table class="style1">
        <tr>
            <td class="style19">
                <h2>
                    Contact Us
                </h2>
            </td>
            <td class="style20">
                <h2>
                    Online Contact Form</h2>
            </td>
        </tr>
        <tr>
            <td class="style25">
                    <p> 
                    We appreciate your interest in doing business with Edge Beauty Salon. Please 
                    feel free to contact us by filling out the information in the form on the right or 
                    contact us using the information listed below.<br />
                    <br />
                    </p>
            </td>
            <td class="style18">
                   <strong> Your Name:<br /></strong> 
                
                    <asp:TextBox ID="TextBox4" runat="server" Width="299px" 
                       style="text-align: right; margin-left: 2px" ></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style15"><p>
                    <strong>The Edge Beauty Salon </strong>
                    <br />
                    Shop 21 Manchester Shopping center
                    <br />
                    47 Union Street
                    <br />
                    Mandeville
                    <br />
                    Manchester
                    <br />
                    <br />
                     </p>
                </td>
            <td class="style16">
                    <strong> Email Address:<br /> </strong>
                
                    <asp:TextBox ID="TextBox5" runat="server" Width="303px" ></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style13">
            <p> 
                    <strong>Telephone Number: </strong>
                    <br />
                    Salon (1876) 965-3528
                    <br />
                    <br />
                    </p>
                </td>
            <td class="style11">
                    <strong> Phone Number:<br /></strong>
                
                    <asp:TextBox ID="TextBox6" runat="server" Width="302px" ></asp:TextBox>
                    <br />
                    <br />
                </td>
        </tr>
        <tr>
            <td class="style13">
            <p> 
                    <strong>Email:</strong>
                    <br />
                    <strong><a href="mailto:@SITEEMAIL@">info@edegebeautysalon.com</a> </strong>
                    </p>
                </td>
            <td class="style11">
                    <strong> Regarding: <br /></strong>
                
                    <asp:DropDownList ID="RegardingDropDownList" runat="server" Height="22px" 
                        Width="303px" >
                        <asp:ListItem>-------Select One-------</asp:ListItem>
                        <asp:ListItem>Appointment</asp:ListItem>
                        <asp:ListItem>Customer Service</asp:ListItem>
                        <asp:ListItem>Consultation</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RegardingRequiredFieldValidator" runat="server"  
                        ControlToValidate="RegardingDropDownList" CssClass="failureNotification"
                        ErrorMessage="RequiredFieldValidator"  ValidationGroup="RegisterUserValidationGroup"
                        InitialValue="-------Select One-------"> *</asp:RequiredFieldValidator>
                        
                    <br />
                    <br />
                        
                </td>
        </tr>
        <tr>
            <td class="style23">
                    <p>
                        <strong>Business Hours: </strong>
                        <br />
                        Mon - Sat: 9am - 8pm
                    </p>
                    <p>
                        Did you enjoy your experience at Edge Salon? Connect with us on <br />facebook  and 
                        leave a comment and check out our news and discount offers.</p>
                    <p>
                    <asp:HyperLink ID="Appointment" 
                            runat="server" Target="_parent" 
                            NavigateUrl="~/Appointment/Appointment Page.aspx">Book an Appointment</asp:HyperLink>
                    </p>
                
                    <p>
                        <strong>View Shop Location</strong>
                    </p>
                
                        <div style="float: left; width: 444px;">
                            <p>
                                <a href="../location_org.jpg">
                                <img alt="" class="alignright size-full wp-image-134" 
                                    title="map2_org" src="Images/location_org.jpg" /></a>
                            </p>
                        </div>
                
                </td>
            <td class="style26" height="50">
                       <textarea style="width: 303px; height: 118px;" name="S1" cols="30"> </textarea><br />
                       <asp:Button ID="Button3" runat="server" Height="20px" Text="Send Your Comments" 
                           Width="140px" />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button4" runat="server" Height="20px" 
                           style="margin-left: 30px" Text="Clear" Width="58px" />
                   
                       </td>
        </tr>
        </table>





    </asp:Content>