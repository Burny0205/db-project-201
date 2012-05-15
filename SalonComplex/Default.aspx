<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SalonComplex._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/global.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/slides.min.jquery.js"></script>
    <script type="text/javascript" src="Scripts/jquery.easing.1.3.js"></script>
    <script type="text/javascript">
        $(function () {
            salon.preloadimages('#img_container');
            salon.initslideshow('#slides');
        });
    </script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main">
        <br /><br />
            <p>
       <asp:HyperLink ID="HyperLinkChangePassWord" runat="server" 
            NavigateUrl="~/Account/ChangePassword.aspx" Height="10" ForeColor="red">ChangePassword </asp:HyperLink>
    </p>
    <br />
        <h2>
            Welcome to The Edge Beauty Salon and Spa
        </h2>
        <p class="p_content">
            Lorem ipsum dolor sit amet, iuravi potest meum filiam. Mariae Bone de ascendit rationis ad quia ad te in. 
            Puellae in lucem exempli paupers coniunx minus signo currit itaque completum aliquod vestrum ad te finis puellam. 
            Rei completo litus sua etiam quantitas non ait est se vero cum suam in deinde vero non ait. Vigilans insaniae gaudens ergo est se vero rex Stranguillio eam 
            sed haec vidit pater vero diam dominum oculos rex. Quicquid eam eos Communicatio mihi quidditas mihi cum suam in. 
            Priapum avarus ait Cumque hoc ait est se vero diam nostra praedicabilium subsannio oculos capillos apto. Tua in fuerat est cum unde ascendit neque revertisset meam
             celaveritis ac noctes C in. Lavabat carissime haec vidit Dionysiadi rex Dionysiadi suo celaturos Tantus nata suum Perquiramus atque bona pater beneficiorum pedes. 
            Christus eum filiam vel dolens eos, laudes honore audi meae in lucem. Disce Apollonius ut a a civitas Conservus mihi. 
            Coniugem flebant Tharsiam in deinde cepit roseo ruens sed quod una civitatis intelligitur sicut in. Tharsis ratio agens his carpens introivit suam vidit tam! 
            Male habitu rubor virginitatem sunt forma non coepit contingere vasculo usque dicens filiae gloriam virginis in deinde vero cum.  
        </p>

        <div id="container">
		    <div id="example">
			    <div id="slides">
				    <div class="slides_container" id="img_container">
				    </div>
			    </div>
			    <img src="Images/sprites/example-frame.png" width="500" height="500" alt="Example Frame" 
                    id="frame"/>
		    </div>
	    </div>
    </div>
</asp:Content>
