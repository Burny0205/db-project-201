<%@ Page Title="Woman Hair Salon Servies" Language="C#" MasterPageFile="~/Master/Site.Master"
    AutoEventWireup="true" CodeBehind="Female Services.aspx.cs" Inherits="SalonComplex.Services.Female_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="../Styles/global.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="main" class="logospace">
        <div class="container-fluid">
        <br />
        <h1 class="bold">Hair Salon Services </h1>
        <p class="p_content">
            At The Edge our goal is to find the look that is perfect for you. With so many changing
            trends in the industry, The Edge is committed to on-going education to provide the
            highest in quality techniques. Not sure what is right for you? Request extra time
            for our signature comprehensive consultation when scheduling your appointment, that
            way we'll be sure to get it right, and leave you feeling great.
        </p>
        <br />
        <fieldset style="width: auto; height: auto" dir="ltr">
            <h1 class="bold">Women Hair Services</h1>
            <%-- <p>--%>
            <table class="table table-bordered table-striped">
                <tr>
                    <th>SERVICE NAME</th>
                    <th>Prices</th>
                </tr>
                <tr>
                    <td>Shampoo, Blow- dry, Flat Iron/Curl</td>
                    <td>$3500</td>
                </tr>
                <tr>
                    <td>Press/Flat Iron or re-curl</td>
                    <td>$4000</td>
                </tr>
                <tr>
                    <td>Conditioner</td>
                    <td>$1500</td>
                </tr>
                <tr>
                    <td>Re-touch</td>
                    <td>$2000</td>
                </tr>
                <tr>
                    <td>Virgin Relaxer</td>
                    <td>$3000</td>
                </tr>
                <tr>
                    <td>Cornrows</td>
                    <td>$1500</td>
                </tr>
                <tr>
                    <td>Invisible</td>
                    <td>$2500</td>
                </tr>
                <tr>
                    <td>Micro Braid</td>
                    <td>$6000</td>
                </tr>
                <tr>
                    <td>Colour</td>
                    <td style="text-transform: uppercase">$3000</td>
                </tr>
                <tr>
                    <td>Colour Re-touch</td>
                    <td>$2000</td>
                </tr>
            </table>
        </fieldset>
            </div>
    </div>
    <br />
</asp:Content>
