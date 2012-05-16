<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="SalonComplex.Pages.WebForm1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
    <link rel='stylesheet' type='text/css' href='../Plugins/fullcalendar/fullcalendar.css' />
<link rel='stylesheet' type='text/css' href='../Plugins/fullcalendar/fullcalendar.print.css' media='print' />
<script type='text/javascript' src='../Scripts/jquery.ui.js'></script>
<script type='text/javascript' src='../Plugins/fullcalendar/fullcalendar.js'></script>
<script type='text/javascript'>

    $(document).ready(function () {

        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();

        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            events: "../View/user_appointment.aspx"
        });

    });

</script>
<style type='text/css'>

	#calendar {
	    margin-top: 30px !important;
		width: 930px;
		margin: 0 auto;
		}

    .page {
        padding-bottom: 10px;
    }

</style>
    

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="main">
        <div id='calendar'></div>
    </div>
    

</asp:Content>
