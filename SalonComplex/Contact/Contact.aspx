<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SalonComplex.Contact.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 91%;
            margin-right: 0px;
            height: 982px;
            margin-top: 23px;
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
        .style25
        {
            width: 1152px;
            }
        #Reset1
        {
            width: 79px;
        }
        .style26
        {
            width: 365px;
            text-align: left;
        }
        #Reset2
        {
            width: 79px;
        }
        .style27
    {
        width: 365px;
        text-align: left;
        height: 213px;
    }
    .contact
    {
        width: 431px;
    }
        #textarea1
        {
            width: 354px;
            height: 114px;
        }
        #ContactCommentTextbox
        {
            width: 360px;
            height: 165px;
        }
        #TextArea2
        {
            width: 372px;
            height: 206px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />

        <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span><asp:ValidationSummary ID="ValidationSummaryAddComments" runat="server" 
              ForeColor="Red" ValidationGroup="AddCommentGroup" />
              <br />
              <span>  
    <asp:Label ID="ContactLabelStatus" runat="server" 
        style="font-size: medium; color: #333333" ForeColor="Blue"></asp:Label> </span>



    <table class="style1">
        <tr>
            <td >
                <h2>
                    Contact Us
                </h2>
            </td>
            <td >
                <h2>
          
                    Online Contact Form
                    </h2>
            </td>
        </tr>

        <tr>
            <td class="style25" rowspan="6">
                    <p class = ".contactText">
                    We appreciate your interest in doing business with Edge Beauty Salon. Please 
                    feel free to contact us by filling out the information in the form on the right or 
                    contact us using the information listed below.<br />
                    <br />
                    </p>
                    <p class = ".contactText">
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
                <p class=".contactText">
                    Did you enjoy your experience at Edge Salon? Connect with us on
                    facebook and leave a comment and check out our news and discount offers.</p>
            <p class ="OneLineContact">
                    <strong>Telephone Number: </strong>
                    <p class ="OneLineContact">
                    Salon: (1876) 965-3528
                    
                    </p>
            <p class = "OneLineContact">
                    <strong>Email:</strong>
                  </p>
                   <p class = "OneLineContact">
                    <strong><a href="mailto:edgesaloncomplex@gmail.com">info@edgesaloncomplex</a> </strong>
                    </p>
                    <p class = "OneLineContact">
                        <strong>Business Hours: </strong>
                        </p>
                        <p class = "OneLineContact">
                   
                        Mon - Sat: 9am - 8pm
                    </p>
                   
                    <p class = "OneLineContact">
                    <asp:HyperLink ID="Appointment" 
                            runat="server" Target="_parent" 
                            NavigateUrl="~/Appointment/Appointment Page.aspx">Book an Appointment</asp:HyperLink>
                    </p>
                
                    <p class = "OneLineContact">
                        <strong>View Shop Location</strong>
                    </p>
                
                        <div style="float: left; width: 444px; margin-left: 10px;">
                            
                                <a href="../location_org.jpg">
                                <img alt="" class="alignright size-full wp-image-134" 
                                    title="map2_org" src="../Images/location_org.jpg" /></a>
                            
                        </div>
                
            </td>
            <td class="style18">
           
                   <p class = "OneLineContact"> 
                   <asp:Label ID="CustNameContactLabel" runat="server" 
                           style="font-weight: 700" AssociatedControlID="TextBoxContactName" 
                           CssClass="textEntry">Your Name:</asp:Label>
                     </p>  
                     <p  class = "OneLineContact">         
                    <asp:TextBox ID="TextBoxContactName"  align="top" runat="server" Width="310px" 
                       style="text-align: left; margin-left: 2px" Height="25px" 
                             ValidationGroup="AddCommentGroup" CssClass="textEntry" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorContactName" 
                             runat="server" ControlToValidate="TextBoxContactName" 
                             CssClass="failureNotification" ErrorMessage="Please enter your name" 
                             ForeColor="Red" ValidationGroup="AddCommentGroup">*</asp:RequiredFieldValidator>
            </p>   
                </td>
        </tr>

        <tr>
            <td class="style18">
           
                   <p class = "OneLineContact"> 
                   <asp:Label ID="CustNameContactLabel0" runat="server" Text="Email Address:" 
                           style="font-weight: 700" AssociatedControlID="TextBoxContactEmail"></asp:Label>
                     </p>
                <p class = "OneLineContact"> 
                
                    <asp:TextBox ID="TextBoxContactEmail" runat="server" Width="310px" 
                        Height="25px" ToolTip="[correct format] johnbrown@mail.com" 
                        CssClass="textEntry" ></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmailPhone" 
                        runat="server" ErrorMessage="Email format incorrect" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="TextBoxContactEmail" CssClass="failureNotification" 
                        ForeColor="Red" ToolTip="johnbrown@mail.com" 
                        ValidationGroup="AddCommentGroup">*</asp:RegularExpressionValidator>
                     </p>  
                     </td>
        </tr>

        <tr>
            <td class="style18">
                    <p class = "OneLineContact"> 
                   <asp:Label ID="CustPhoneNumContactLabel" runat="server" Text="Phone Number:" 
                            style="font-weight: 700" AssociatedControlID="TextBoxContactPhone"></asp:Label>
                   </p>
                    <p class = "OneLineContact"> 
                
                    <asp:TextBox ID="TextBoxContactPhone" runat="server" Width="310px" Height="25px" 
                            ToolTip="accept format (123) 456-7890 or  123-456-7890" 
                            CssClass="textEntry" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhoneContact" 
                            runat="server" ControlToValidate="TextBoxContactPhone" 
                            CssClass="failureNotification" ErrorMessage="Incorrect phone format" 
                            ToolTip="(123) 456-7890 or  123-456-7890" 
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                            ValidationGroup="AddCommentGroup">*</asp:RegularExpressionValidator>
                   </p>
                     </td>
        </tr>

        <tr>
            <td class="style18">
                     <p class = "OneLineContact"> 
                   <asp:Label ID="CustRegardingContactLabel" runat="server" Text="Regarding:" 
                             style="font-weight: 700" AssociatedControlID="ContactRegDropDownList"></asp:Label>
                   </p>
                     <p class = "OneLineContact"> 
                
                    <asp:DropDownList ID="ContactRegDropDownList" runat="server" Height="25px" 
                        Width="310px" style="margin-right: 14px" EnableTheming="True" 
                             CssClass="textEntry" >
                        <asp:ListItem>-------Select One-------</asp:ListItem>
                        <asp:ListItem>Appointment</asp:ListItem>
                        <asp:ListItem>Customer Service</asp:ListItem>
                        <asp:ListItem>Consultation</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RegardingRequiredFieldValidator" runat="server"  
                        ControlToValidate="ContactRegDropDownList" CssClass="failureNotification"
                        ErrorMessage="Please select an area regarding the comments"  ValidationGroup="AddCommentGroup"
                        InitialValue="-------Select One-------"> *</asp:RequiredFieldValidator>
                        
                   </p>
            </td>
        </tr>

        <tr>
            <td class="style27">
            
                <textarea id="ContactCommentTextbox" cols="40" rows="10" runat= "server"> </textarea><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorContactComments" runat="server" 
                    ControlToValidate="ContactCommentTextbox" CssClass="failureNotification" 
                    ErrorMessage="Please write your comments (600 characters)" 
                    ToolTip="Max 600 Characters" ValidationGroup="AddCommentGroup">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorComments" runat="server" 
                    ControlToValidate="ContactCommentTextbox" CssClass="failureNotification" 
                    ErrorMessage="600 characters is the max" ForeColor="Red" MaximumValue="600" 
                    ValidationGroup="AddCommentGroup">*</asp:RangeValidator>
&nbsp;<p class ="OneLineContact"> 
                        &nbsp;<asp:Button ID="ContactUsSubmittButton" runat="server" Height="25px" Text="Send Your Comments" 
                           Width="140px" onclick="ContactUsSubmittButton_Click" 
                            ValidationGroup="AddCommentGroup" CssClass="submitButton" />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="Reset2" type="reset" value="reset" /></p>
            </td>
        </tr>

        <tr>
            <td class="style26">
                
            </td>
        </tr>

        </table>


        <br />
        <br />





    </table>





    </table>





    </asp:Content>