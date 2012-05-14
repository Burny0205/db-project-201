<%@ Page Title="Barber Shop Services" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Male Services.aspx.cs" Inherits="SalonComplex.Male_Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 101%;
        color: #000000;
        font-family: Garamond;
    }
    .style3
    {
            width: 124px;
            text-align: justify;
        }
    .style5
    {
            width: 133px;
        }
    .style7
    {
        font-size: medium;
        font-family: Garamond;
        color: #000000;
        text-align: justify;
            height: 109px;
        }
    .style8
    {
        width: 173px;
        font-weight: bold;
        font-size: large;
        color: #0000CC;
    }
    .style9
    {
        width: 133px;
        font-weight: bold;
        font-size: large;
        color: #000000;
    }
    .style11
    {
        width: 124px;
        font-weight: bold;
        font-size: large;
        color: #000000;
    }
    .style16
    {
            width: 124px;
            font-size: medium;
            text-align: justify;
        }
    .style17
    {
        font-size: x-large;
        font-family: Garamond;
        color: #000000;
    }
        .style18
        {
            width: 124px;
            font-size: medium;
            height: 23px;
            text-align: justify;
        }
        .style20
        {
            width: 133px;
            height: 23px;
            font-size: medium;
        }
        .style22
        {
            width: 133px;
            font-size: medium;
        }
        .style23
        {
            width: 153px;
            font-size: large;
            color: #000000;
        }
        .style24
        {
            width: 153px;
        }
        .style25
        {
            width: 153px;
            font-size: medium;
        }
        .style26
        {
            width: 153px;
            font-size: medium;
            height: 23px;
        }
        .style27
        {
            width: 153px;
            font-family: Garamond;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <h1>
    Male Salon Hair Services
   </h1>
 <p class = "maleservice">
    At The Edge our goal is to find the look that is perfect for you. 
    With so many changing trends in the industry, The Edge is committed to on-going education to provide the highest in quality techniques.
    Not sure what is right for you? Request extra time for our signature comprehensive consultation when scheduling your appointment, that way we'll be sure to get it right, and leave you feeling great.
</p>
   
        
        <br />
    <fieldset style="width: 800px; height:auto" dir="ltr">
    <legend><span class="style17">Male Hair Services</span> </legend>
        <table class="style2" align="center" 
            style="background-image: none">
            <tr class="style7">
                <td class="style11" style="text-transform: uppercase">
                    Types</td>
                <td class="style9" style="text-transform: uppercase; text-align: center;" 
                    align="center">
                    Adult Prices</td>
                <td class="style23" style="text-transform: uppercase; font-weight: 700;" 
                    align="center">
                    Children 10 &amp; Under&nbsp; Prices</td>
                <td class="style8" style="text-transform: uppercase" align="center" 
                    rowspan="13">
                    
                   <%-- <asp:Image ID="Image2"  ahref= "Default.aspx"  runat="server" Height="498px" ImageAlign="AbsMiddle" 
                        ImageUrl="~/Images/servicelogo.png" Width="243px"  />--%>
                     
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" 
                        ImageUrl="~/Images/servicelogo.png" ImageHeight="350px" ImageWidth="200px" 
                        ImageAlign="AbsMiddle" ToolTip="Go To Home Page" >Home</asp:HyperLink>
                          
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5" align="center">
                    &nbsp;</td>
                <td class="style24" align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Basic Cut</td>
                <td class="style22" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $350</td>
                <td class="style25" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $180</td>
            </tr>
            <tr>
                <td class="style18" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Style Cut</td>
                <td class="style20" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $450</td>
                <td class="style26" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $250</td>
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Afro</td>
                <td class="style22" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $380</td>
                <td class="style25" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $300</td>
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Afro Fade</td>
                <td class="style22" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $360</td>
                <td class="style25" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $280</td>
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Beard Trim</td>
                <td class="style22" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $200</td>
                <td class="style25" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    ---</td>
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Mustache Trim</td>
                <td class="style22" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $200</td>
                <td class="style24" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    ---</td>
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Goatee</td>
                <td class="style22" align="center" 
                    style="font-size: medium; font-family: Garamond">
                    $250</td>
                <td class="style24" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    ---</td>
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Edge</td>
                <td class="style22" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $300</td>
                <td class="style27" 
                    style="color: #000000; font-size: medium; font-family: Garamond;" 
                    align="center">
                    $200</td>
                <span class="bold">
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Razor Edge</td>
                <td class="style22" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $500</td>
                <td class="style24" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    ----</td>
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Eyebrow Trim</td>
                <td class="style22" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $200</td>
                <td class="style25" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    ---</td>
            </tr>
            <tr>
                <td class="style16" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    Shampoo</td>
                <td class="style22" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    $600</td>
                <td class="style25" align="center" 
                    style="color: #000000; font-size: medium; font-family: Garamond">
                    ---</td>
            </tr>
            </table>
        
        </span>
        
        </fieldset>
    <br />
</asp:Content>

