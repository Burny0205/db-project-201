<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="SalonComplex.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style3
        {
            font-family: "Comic Sans MS";
        }
        .style6
        {
            width: 100%;
            border: 2px solid #034AF3;
        }
        .style7
        {
            width: 446px;
            font-size: small;
        }
        .style8
        {
            width: 100%;
        }
        .style10
        {
            height: 180px;
        }
        .style11
        {
            height: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <%--<h2 align="center" 
        style="font-family: Garamond; font-size: x-large; font-weight: bolder; font-style: normal; text-transform: uppercase; color: #000000">
        Welcome to 
    </h2>--%>
     <table class="style8">
        <tr>
            <td align="center" class="style16" 
                style="font-size: x-large; font-family: Garamond; font-weight: bolder; font-style: normal; color: #000000; text-transform: uppercase;">
        Welcome to 
            </td>
        </tr>
    </table>
   <%-- <h2  align="center" 
        
        style="font-family: Garamond; font-size: x-large; font-weight: bolder; font-style: italic; text-transform: uppercase; color: #000000">
        The Edge 
    </h2>--%>
    <table class="style8">
        <tr>
            <td align="center" class="style16" 
                style="font-size: x-large; font-family: Garamond; font-weight: bolder; font-style: italic; color: #000000; text-transform: uppercase;">
                <asp:Image ID="Image5" runat="server" Height="60px" ImageUrl="~/Images/Logo1.jpg" 
                    Width="386px" />
            </td>
        </tr>
    </table>
   <%-- <h2 align="center" 
        style="font-family: Garamond; font-size: large; font-weight: bolder; font-style: normal; text-transform: uppercase; color: #000000">
        Beauty Salon and Spa
    </h2>--%>
     <table class="style8">
        <tr>
            <td align="center" class="style16" 
                style="font-size: x-large; font-family: Garamond; font-weight: bolder; font-style: normal; color: #000000; text-transform: uppercase;">
          Beauty Salon and Spa
            </td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td rowspan="3">
            <p class = > 
                <span class="style3">The Edge’s professional teams of stylists are educated, expertly trained hair and nail care specialists who are always ready and willing to share up to the minute intel on the most recent nail care techniques and designs, the most cutting edge techniques in cuts, coloring and weaving as well as the latest insights in natural hair care and chemically treated hair technology.
                </span>
                <br />
                <br />
                <span class="style3">The Edge Salon holds the distinction of a first class Jamaican hair and nail salon. We are The Edge hair and nail salon and we welcome you to experience the difference we make. “Come with the hair and nails you have, leave with the hair and nails you want.”
                <br />
                <br />
        As reflected in him and her more than 10 years of experience in the beauty industry, Justin and Joan embody the entrepreneurial spirit. For most of their lives it seems they have been designing. Justin got his start as a barber and hair stylist working for one of Jamaica’s well know barber shop, “Kris Kut”, while Joan got her start at Maureen’s hair salon in Princeville Plaza. As a couple they decided to merge their skill to form The Edge hair and salon offering a variety of services to the Jamaican public.
                <br />
                <br />
        Justin and Joan opened their first salon in 2000 and a few years later launched The Edge in the spring of 2001. Their vision for this new salon was to create a welcoming and intimate space where they would make their client’s look and feel beautiful. Since that time, Justin and Joan has built The Edge into one of the most prestigious and highly respected salons in Jamaica, catering to their list of clients in entertainment, fashion and design, as well as from the news rooms and the wider society.
                <br />
                <br />
        With their trademark cutting, styling and nail techniques they will make you look fabulous. They developed a proprietary hair coloring process that prevents hair damage and dryness and created colors that look vibrant and natural. They are individual authorities in the hair industry, leading trends in haircuts for men and women, along with new extension techniques for women. Today clients come from all over the island for a chance to sit in their chair.
                <br />
                <br />
        We are a premier Manchester hair salon offering expert beauty, hair and nail care services. Our stylists have over 10 years of experience in hair color and cuts for males and females, weaves and hair extensions mainly for women, as well as nail care for both genders. Our stylists are trained in the latest techniques in color and hair cutting as well as nail designs by renowned hair and nail professionals.
                <br />
                <br />
        We constantly evaluate hair and nail products on the market and only use the best products with proven results. We have a range of specialty products, including products for extension care and curly hair, as well as professional styling tools.
                <br />
                <br />
        Our philosophy is to make sure every customer is beautiful, happy, and satisfied when he/she leaves our salon. At The Edge we consider our stylists our clients' beauty partners. We listen to what our clients want, give our recommendations based on our professional expertise, and work with our clients to achieve the look they desire.
                </span>
                </p>
                </td>
                
            <td align="center" bgcolor="Black" valign="middle" class="style10">
                <asp:Image ID="Image2" runat="server" BorderColor="White" BorderStyle="Groove" 
                    ImageUrl="~/Images/A1.jpg" Width="302px" Height="190px" />
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="Black" valign="middle" class="style11">
                <asp:Image ID="Image3" runat="server" BorderStyle="Groove" ImageUrl="~/Images/A2.jpg" 
                    Width="302px" Height="190px" BorderColor="White" />
            </td>
        </tr>
        <p> 
        <tr>
            <td align="center" bgcolor="Black" valign="top">
                <asp:Image ID="Image4" runat="server" BackColor="Black" BorderColor="White" 
                    BorderStyle="Groove" ImageUrl="~/Images/A3.jpg" 
                    Width="302px" Height="192px" ImageAlign="Top" />
            </td>
        </tr>
        </p>
        </table>
         <br />
    </asp:Content>
