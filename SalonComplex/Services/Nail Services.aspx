<%@ Page Title="Spa Service" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Nail Services.aspx.cs" Inherits="SalonComplex.Services.Nail_Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        font-family: Garamond;
        font-size: medium;
        color: #000000;
    }
        .style3
        {
            width: 60px;
        }
        .style5
        {
        width: 142px;
    }
        .style7
        {
            width: 215px;
        }
    .style9
    {
        color: #0000FF;
    }
    .style10
    {
        width: 60px;
        color: #0000FF;
    }
    .style11
    {
        width: 142px;
        color: #000000;
    }
    .style12
    {
        width: 215px;
        color: #000000;
    }
        .style13
        {
            width: 100%;
        }
        .style14
        {}
        .style17
        {
            width: 215px;
            height: 22px;
        }
        .style18
        {
            width: 142px;
            height: 22px;
        }
        .style19
        {
            width: 60px;
            height: 22px;
        }
        .style20
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
   </h2>
   <br />
   <p class = "spa_nail_service">
       At The Edge our goal is to find the look that is perfect for you. With so many 
       changing trends in the industry, The Edge is committed to on-going education to 
       provide the highest in quality techniques. Not sure what is right for you? 
       Request extra time for our signature comprehensive consultation when scheduling 
       your appointment, that way we'll be sure to get it right, and leave you feeling 
       great.</p>
       <br />
   <fieldset style="width: 855px; height:auto" dir="ltr">
    <legend><span class="style17">Nail Services</span> </legend>
    <table class="style2" align="center">
        <tr>
            <td class="style12" style="text-transform: uppercase; font-weight: bold;">
                Types</td>
            <td class="style11" style="text-transform: uppercase; font-weight: bold;" 
                align="center">
                Prices</td>
            <td class="style10" style="text-transform: uppercase; font-weight: bold;">
                &nbsp;</td>
            <td class="style9" style="text-transform: uppercase; font-weight: bold;" 
                align="center" bgcolor="Black" rowspan="11">
                <asp:Image ID="Image5" runat="server" BorderColor="Black" BorderStyle="Groove" 
                    Height="215px" ImageAlign="AbsMiddle" ImageUrl="~/Images/Nail.jpg" 
                    Width="383px" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                Manicures</td>
            <td class="style5" align="center" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                $600</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                Pedicures</td>
            <td class="style5" align="center" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                $800</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                Polishing</td>
            <td class="style5" align="center" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                $300</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                Buffing</td>
            <td class="style5" align="center" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                $500</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" align="left" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                Acrylic</td>
            <td class="style5" align="center" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                $1300</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                Artificial nails</td>
            <td class="style5" align="center" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                $1100</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                Full Sets</td>
            <td class="style5" align="center" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                $1800</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                Sculptured Nails</td>
            <td class="style18" align="center" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                $1500</td>
            <td class="style19">
                </td>
        </tr>
        <tr>
            <td class="style7" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                Nail Tipping</td>
            <td class="style5" align="center" 
                style="color: #000000; font-size: medium; font-family: Garamond">
                $1200</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
     </fieldset><br />
    <table class="style13">
        <tr>
            <td align="center" class="style20">
                <asp:HyperLink ID="HyperLinkNailService" runat="server" ImageHeight = "150px" 
                ImageWidth  = "850px" ImageUrl="~/Images/Femservicelogo.png" ImageAlign = "AbsMiddle"
                NavigateUrl="~/Default.aspx" ToolTip="Go To Home Page">Home</asp:HyperLink>
             
            </td>
        </tr>
        <tr>
            <td align="center" class="style14">
                &nbsp;</td>
        </tr>
    </table>
 <br />
</asp:Content>

