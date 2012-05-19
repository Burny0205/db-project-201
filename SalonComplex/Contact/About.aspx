<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="SalonComplex.Contact.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        img {
            padding-bottom: 2px;
            padding-top: 2px;
        }

    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="main" class="logospace">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span6">
                    <h2 class="bold">About Edge Beauty Salon and Spa</h2>
                    <p class="p_content">
                        The Edge's professional teams of stylists are educated, expertly trained hair and
                        nail care specialists who are always ready and willing to share up to the minute
                        intel on the most recent nail care techniques and designs, the most cutting edge
                        techniques in cuts, coloring and weaving as well as the latest insights in natural
                        hair care and chemically treated hair technology.
                        <br />
                        <br />
                        The Edge Salon holds the distinction of a first class Jamaican hair and nail salon.
                        We are The Edge hair and nail salon and we welcome you to experience the difference
                        we make. "Come with the hair and nails you have, leave with the hair and nails you
                        want."
                        <br />
                        <br />
                        As reflected in him and her more than 10 years of experience in the beauty industry,
                        Justin and Joan embody the entrepreneurial spirit. For most of their lives it seems
                        they have been designing. Justin got his start as a barber and hair stylist working
                        for one of Jamaica's well know barber shop, "Kris Kut", while Joan got her start
                        at Maureen's hair salon in Princeville Plaza. As a couple they decided to merge
                        their skill to form The Edge hair and salon offering a variety of services to the
                        Jamaican public.
                        <br />
                        <br />
                        Megan and Patrick opened their first salon in 2000 and a few years later launched
                        The Edge in the spring of 2001. Their vision for this new salon was to create a
                        welcoming and intimate space where they would make their client's look and feel
                        beautiful. Since that time, Justin and Joan has built The Edge into one of the most
                        prestigious and highly respected salons in Jamaica, catering to their list of clients
                        in entertainment, fashion and design, as well as from the news rooms and the wider
                        society.
                        <br />
                        <br />
                        With their trademark cutting, styling and nail techniques they will make you look
                        fabulous. They developed a proprietary hair coloring process that prevents hair
                        damage and dryness and created colors that look vibrant and natural. They are individual
                        authorities in the hair industry, leading trends in haircuts for men and women,
                        along with new extension techniques for women. Today clients come from all over
                        the island for a chance to sit in their chair.
                        <br />
                        <br />
                        We are a premier Manchester hair salon offering expert beauty, hair and nail care
                        services. Our stylists have over 10 years of experience in hair color and cuts for
                        males and females, weaves and hair extensions mainly for women, as well as nail
                        care for both genders. Our stylists are trained in the latest techniques in color
                        and hair cutting as well as nail designs by renowned hair and nail professionals.
                        <br />
                        <br />
                        Our philosophy is to make sure every customer is beautiful, happy, and satisfied
                        when he/she leaves our salon. At The Edge we consider our stylists our clients'
                        beauty partners. We listen to what our clients want, give our recommendations based
                        on our professional expertise, and work with our clients to achieve the look they
                        desire.
                    </p>
                </div>
                <div class="span6">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/A1.jpg" />
                </div>
                <div class="span6">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/A2.jpg"/>
                </div>
                <div class="span6">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/A3.jpg" />
                </div>
            </div>
        </div>
        <br />
        <br />

    </div>
</asp:Content>
