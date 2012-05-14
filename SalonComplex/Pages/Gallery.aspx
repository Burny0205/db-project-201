<%@ Page Title="Photo Gallery" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Gallery.aspx.cs" Inherits="Gallery_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Scripts/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../Scripts/slides.min.jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../Plugins/galleria/galleria-1.2.7.min.js"></script>
    <script type="text/javascript" src="../Scripts/main.js"></script>
    <script type="text/javascript">
        $(function () {
            salon.preloadimages('#galleria');
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
            Lorem ipsum dolor sit amet, iuravi potest meum filiam. Mariae Bone de ascendit rationis ad quia ad te in. 
            Puellae in lucem exempli paupers coniunx minus signo currit itaque completum aliquod vestrum ad te finis puellam. 
            Rei completo litus sua etiam quantitas non ait est se vero cum suam in deinde vero non ait. Vigilans insaniae gaudens ergo est se vero rex Stranguillio eam 
            sed haec vidit pater vero diam dominum oculos rex. Quicquid eam eos Communicatio mihi quidditas mihi cum suam in.
        </p>
     </div>
</asp:Content>
