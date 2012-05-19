<%@ Page Title="Spa Staff" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true"
    CodeBehind="Spa Staff.aspx.cs" Inherits="SalonComplex.Salon.Spa_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        span {
            font-weight: 700
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="main" class="logospace">
        <div class="container-fluid">
            <h1 class="bold">Spa Staff</h1>
        
            <div class="row-fluid">
                <div class="span2">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/employees/spa/N1.jpg" />
                </div>
                <div class="span10">
                    <p>
                        <asp:Label ID="SpaWorkerNameLabel1" runat="server" Text="Tiffany Kain"></asp:Label>
                    </p>
                    <p class="p_content">
                        With hobbies that include arts and crafts you can undertsand why Tiffany is praised
                        for her creative nail designs. She specializes in pedicures, manicures, and shampoos.
                        <br />
                        Just 4 years out of Angie&#39;s School of Beauty and already she&#39;s on top of
                        her game.
                    </p>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span2">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/employees/spa/N2.jpg" />
                </div>
                <div class="span10">
                    <p>
                        <asp:Label ID="SpaWorkerNameLabel2" runat="server" Text="Abigail Lawrence"></asp:Label>
                    </p>
                    <p class="p_content">
                        After putting in due diligence at Leon&#39;s in 2005, Abigail has been impressing
                        clients with her attention to detail and knowledge in the arts of pedicures, manicures,
                        acrylics, and creative designs.
                    </p>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span2">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/employees/spa/N4.jpg" />
                </div>
                <div class="span10">
                    <p>
                        <asp:Label ID="SpaWokerNameLabel3" runat="server" Text="Clarissa Brown"></asp:Label>
                    </p>
                    <p class="p_content">
                        Over 5 years seperate Clarissa from her graduation day at La Marie Spa School of
                        Beauty. In those 5 years she has perfected the arts of nails and body beautification.
                        She excels at facials, massages, waxing, pedicures, manicures, and skin care.
                        <br />
                        She loves to dance, socialize and considers work at the salon a hobby.
                    </p>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span2">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/employees/spa/N5.jpg" />
                </div>
                <div class="span10">
                    <p>
                        <asp:Label ID="SpaWokerNameLabel4" runat="server" Text="Michelle Lee"></asp:Label>
                    </p>
                    <p class="p_content">
                        Michelle knows acrylic nails like the back of his hand. He excels in coming up with
                        creative and unique designs and is an expert manicurist/pedicurist.
                        A 2005 graduate of&nbsp; Leon&#39;s School of Beauty, Michelle enjoys computers
                        and just hanging out with friends.
                    </p>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span2">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/employees/spa/N6.jpg" />
                </div>
                <div class="span10">
                    <p>
                        <asp:Label ID="SpaWokerNameLabel5" runat="server" Text="Paula Richards"></asp:Label>
                    </p>
                    <p class="p_content">
                        Paula is the Nail Technician extraordinaire at our salon! She specializes in manicures,
                        pedicures and the revolutionary gel nail polish. If you want the BEST nails in town,
                        only our girl Paula can give them to you!
                    </p>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span2">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/employees/spa/N3.jpg" />
                </div>
                <div class="span10">
                    <p>
                        <asp:Label ID="SpaWorkerLabel6" runat="server" Text="Ileana Powell"></asp:Label>
                    </p>
                    <p class="p_content">
                        Ileana is EBS Salon very capable and lovely Receptionist.
                        She likes working at the salon, dancing and hanging out with friends.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
