<%@ Page Title="Spa Service" Language="C#" MasterPageFile="~/Master/Site.Master"
    AutoEventWireup="true" CodeBehind="Nail Services.aspx.cs" Inherits="SalonComplex.Services.Nail_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="main" class="logospace container-fluid">
        <div class="row-fluid">
            <p class="p_content">
                At The Edge our goal is to find the look that is perfect for you. With so many changing
                trends in the industry, The Edge is committed to on-going education to provide the
                highest in quality techniques. Not sure what is right for you? Request extra time
                for our signature comprehensive consultation when scheduling your appointment, that
                way we'll be sure to get it right, and leave you feeling great.
            </p>
            <br />
            <fieldset style="width: 500px; height: auto" dir="ltr">
                <h3 class="bold">Nail Services</h3>
                <table class="table table-bordered table-striped ">
                    <tr>
                        <th>Types</th>
                        <th>Prices</th>
                    </tr>
                    <tr>
                        <td>Polishing</td>
                        <td>$300</td>
                    </tr>
                    <tr>
                        <td>Buffing</td>
                        <td>$500</td>
                    </tr>
                    <tr>
                        <td>Manicures</td>
                        <td>$600</td>
                    </tr>
                    <tr>
                        <td>Pedicures</td>
                        <td>$800</td>
                    </tr>
                    <tr>
                        <td>Full Sets</td>
                        <td>$1300</td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </div>
    <br />
</asp:Content>
