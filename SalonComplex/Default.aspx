<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SalonComplex._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/global.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/slides.min.jquery.js"></script>
    <script type="text/javascript" src="Scripts/jquery.easing.1.3.js"></script>
    <script type="text/javascript">
        $(function () {
            salon.preloadimages('#img_container', 40);
            salon.initslideshow('#slides');
        });
    </script>
    <style type="text/css">
        #frame {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main logospace">
        <h2 class="bold">
            Welcome to The Edge Beauty Salon and Spa - our goal is to find the perfect look for you.
        </h2>
        <p class="p_content">
            We are an ultra modern, upscale salon and
            spa with a complete menu of products and services to offer its clientele.

            Our motto is "perfection at its finest" as our focus and commitment is entirely to our guests.
            With a range of certified and well trained employees, a relaxing atmosphere and flexible prices
            Edge Beauty Salon and Spa is the perfect choice for you!
        </p>

        <div id="container">
		    <div id="example">
			    <div id="slides">
				    <div class="slides_container" id="img_container">
				    </div>
			    </div>
			    <img src="Images/sprites/example-frame.png" width="739" height="341" alt="Example Frame" 
                    id="frame"/>
		    </div>
	    </div>
    </div>
</asp:Content>
