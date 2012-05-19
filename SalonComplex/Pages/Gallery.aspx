<%@ Page Title="Photo Gallery" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true"
    CodeFile="Gallery.aspx.cs" Inherits="Gallery_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Scripts/slides.min.jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../Plugins/galleria/galleria-1.2.7.min.js"></script>
    <script type="text/javascript">
        $(function () {
            salon.preloadimages('#galleria', 50);
            salon.gallery('#galleria');
		});
    </script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main">
        <div id="galleria">
        </div>
         <br />
         <p class="p_content">
            We invite you to take a look at some of our unique styles and techniques. Special thanks to our customers for being apart of our collection
            of photos to document an array of contemporary hairstyles and trims. Will you find your special look in this gallery? Let us know and we will
            suit your preferences in no time. 
        </p>
     </div>
</asp:Content>
