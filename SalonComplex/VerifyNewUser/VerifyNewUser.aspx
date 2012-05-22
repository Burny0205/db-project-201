<%@ Page Title="Verification" Language="C#" MasterPageFile="~/Master/Site.Master"
    AutoEventWireup="true" CodeBehind="VerifyNewUser.aspx.cs" Inherits="SalonComplex.VerifyNewUser.VerifyNewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">

        $(function () {

            if ($('#LabelMsg').text().length > 1) {

                var display = $('#LabelStatus').text() + " <br />";
                display += $('#LabelMsg').text();

                $('#successModal p').html(display);
                $('#successModal').modal('show');
            }

        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="logospace">
        <br />
        <br />
        <br />
        <div id="successModal" class="modal hide fade" style="display: none;">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">×</button>
                <h3>Registration Notification</h3>
            </div>
            <div class="modal-body">
                <p>
                    <asp:Label ID="LabelStatus" runat="server" ForeColor="Red" Style="font-size: small;
                        display: none;" ClientIDMode="Static" Width="10"></asp:Label>
                    <asp:Label ID="LabelMsg" runat="server" ForeColor="Red" Style="font-size: small;
                        display: none;" ClientIDMode="Static" Width="10"></asp:Label>
                </p>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" data-dismiss="modal">Close</a>
            </div>
        </div>
    </div>
</asp:Content>
