<%@ Page Title="Barber Shop Services" Language="C#" MasterPageFile="~/Master/Site.Master"
    AutoEventWireup="true" CodeBehind="Male Services.aspx.cs" Inherits="SalonComplex.Male_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="main" class="logospace">
        <div class="container-fluid">
            <br />
            <h1 class="bold">Barbershop Services </h1>
            <p class="p_content">
                At The Edge our goal is to find the look that is perfect for you. With so many changing
                trends in the industry, The Edge is committed to on-going education to provide the
                highest in quality techniques. Not sure what is right for you? Request extra time
                for our signature comprehensive consultation when scheduling your appointment, that
                way we'll be sure to get it right, and leave you feeling great.
            </p>
            <br />
            <fieldset style="width: 800px; height: auto" dir="ltr">
                <h3 class="bold">Male Hair Services</h3>
                <table class="table table-bordered table-striped">
                    <tr>
                        <th>Types</th>
                        <th>Adult Prices</th>
                        <th>Children 10 &amp; Under&nbsp; Prices</th>
                    </tr>
                    <tr>
                        <td>Basic Cut</td>
                        <td>$350</td>
                        <td>$180</td>
                    </tr>
                    <tr>
                        <td>Style Cut</td>
                        <td>$450</td>
                        <td>$250</td>
                    </tr>
                    <tr>
                        <td>Afro</td>
                        <td>$380</td>
                        <td>$300</td>
                    </tr>
                    <tr>
                        <td>Afro Fade</td>
                        <td>$360</td>
                        <td>$280</td>
                    </tr>
                    <tr>
                        <td>Beard Trim</td>
                        <td>$200</td>
                        <td>---</td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </div>
    <br />
</asp:Content>
