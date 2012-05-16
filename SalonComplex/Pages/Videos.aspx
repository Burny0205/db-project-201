<%@ Page Title="Videos" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true"
    CodeFile="Videos.aspx.cs" Inherits="Video_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Scripts/slides.min.jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../Plugins/flowplayer/flowplayer-3.2.9.min.js"> </script>
    <script type="text/javascript">
        $(function () {
            salon.mediaplayer('salon_media');   
		});
    </script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main">
        <a href="http://pseudo01.hddn.com/vod/demo.flowplayervod/flowplayer-700.flv" class="player"
            style="display:block;width:800px;height:600px;margin:10px auto" id="salon_media">
            <!-- specify a splash image inside the container -->
            <img src="../Images/sprites/edge.png" alt="edge logo" />
        </a>
    </div>
</asp:Content>
