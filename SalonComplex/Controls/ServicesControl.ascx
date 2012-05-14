<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServicesControl.ascx.cs" Inherits="SalonComplex.Controls.ServicesControl" %>
<tr class='service_option'>
    <td class='style21'>
        <asp:CheckBox ID="chkService" runat="server"/>
        <asp:HiddenField ID="serviceId" runat="server"/>
    </td>
    
    <td class='style20'>
        <asp:Label ID="lblSName" runat="server" Text="Label"></asp:Label>
     </td>
    <td class="style6">
        <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
    </td>
</tr>