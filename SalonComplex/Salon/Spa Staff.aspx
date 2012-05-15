<%@ Page Title="Spa Staff" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Spa Staff.aspx.cs" Inherits="SalonComplex.Salon.Spa_Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 316px;
    }
        .style6
        {
            font-family: Garamond;
            font-size: medium;
            font-weight: bold;
            color: #0000FF;
        }
        .style8
        {
            font-family: Garamond;
            font-size: medium;
            font-weight: bold;
            color: #0000FF;
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
<br />
<h1> Spa Staff </h1>
    <table class="style2">
   
    <tr>
        <td align="center" class="style3" rowspan="2">
            <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl="~/Images/N1.jpg" 
                Width="200px" BorderColor="Blue" BorderStyle="Groove" />
        </td>
      
    </tr>
    <tr>
        <td>
            <p class="spaStaff2"> <asp:Label ID="SpaWorkerNameLabel1" runat="server" Text="Tiffany Kain"></asp:Label>
            </p>
        <p class = "spaStaff">
            With hobbies that include arts and crafts you can undertsand why Tiffany is 
            praised for her creative nail designs. She specializes in pedicures, manicures, 
            and shampoos.
            <br />
            Just 4 years out of Angie&#39;s School of Beauty and already she&#39;s on top of her game.
            </p>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style3" rowspan="2">
            <asp:Image ID="Image3" runat="server" Height="250px" ImageUrl="~/Images/N2.jpg" 
                Width="200px" BorderColor="Blue" BorderStyle="Groove" />
        </td>
    </tr>
    <tr>
        <td>
            <p class="spaStaff2">
            <asp:Label ID="SpaWorkerNameLabel2" runat="server" Text="Abigail Lawrence"></asp:Label>
            </p>

            <p class = "spaStaff" > 
            After putting in due diligence at 
            Leon&#39;s in 2005, Abigail has been impressing 
            clients with her attention to detail and knowledge in the arts of pedicures, 
            manicures, acrylics, and creative designs.
            </p>
            </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style3" rowspan="2">
            <asp:Image ID="Image4" runat="server" Height="250px" ImageUrl="~/Images/N4.jpg" 
                Width="200px" BorderColor="Blue" BorderStyle="Groove" />
        </td>
    </tr>
    <tr>
        <td>
            <p class="spaStaff2" > 
            <asp:Label ID="SpaWokerNameLabel3" runat="server" Text="Clarissa Brown"></asp:Label>
            </p>
            <p class = "spaStaff"> 
            Over 5 years seperate Clarissa from her graduation day at 
            La Marie Spa School of Beauty. 
            In those 5 years she has perfected the arts of nails and body 
            beautification. She excels at facials, massages, waxing, pedicures, manicures, 
            and skin care.
            <br />
            She loves to dance, socialize and considers work at the salon a hobby.
             </p>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style3" rowspan="2">
            <asp:Image ID="Image5" runat="server" Height="250px" ImageUrl="~/Images/N5.jpg" 
                Width="200px" BorderColor="Blue" BorderStyle="Groove" />
        </td>
    </tr>
    <tr>
        <td><p class="spaStaff2">
            <asp:Label ID="SpaWokerNameLabel4" runat="server" Text="Michelle Lee"></asp:Label>
             </p>
            <p class = "spaStaff"> 
            Michelle knows acrylic nails like the back of his hand. He excels in coming up 
            with creative and unique designs and is an expert manicurist/pedicurist.<br />
            <br />
            A 2005 graduate of&nbsp; 
            Leon&#39;s School of Beauty, Michelle enjoys computers and just 
            hanging out with friends.
            </p>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style3" rowspan="2">
            <asp:Image ID="Image6" runat="server" Height="250px" ImageUrl="~/Images/N6.jpg" 
                Width="200px" BorderColor="Blue" BorderStyle="Groove" />
        </td>
    </tr>
    <tr>
        <td>
        <p class="spaStaff2"> 
            <asp:Label ID="SpaWokerNameLabel5" runat="server" Text="Paula Richards"></asp:Label>
            </p>
            <p class = "spaStaff">
            Paula is the Nail Technician extraordinaire at our salon! She specializes in 
            manicures, pedicures and the revolutionary gel nail polish. If you want the 
            BEST nails in town, only our girl Paula can give them to you!
            </p>
            </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style3" rowspan="2">
            <asp:Image ID="Image7" runat="server" Height="269px" ImageUrl="~/Images/N3.jpg" 
                Width="225px" BorderColor="Blue" BorderStyle="Groove" />
        </td>
    </tr>
    <tr>
        <td >
            <p class="spaStaff2"> 
            <asp:Label ID="SpaWorkerLabel6" runat="server" Text="Ileana Powell"></asp:Label>
            </p>
            <p class = "spaStaff"> 
            Ileana is EBS Salon very capable and lovely Receptionist.
            <br />
            She likes working at the salon, dancing and hanging out with friends.
            </p>
        </td>
    </tr>
  
</table>
 <br />
</asp:Content>

