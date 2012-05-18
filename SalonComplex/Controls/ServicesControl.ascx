<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServicesControl.ascx.cs" Inherits="SalonComplex.Controls.ServicesControl" %>
<tr>
    <td style="width: 5px">
        <asp:CheckBox ID="chkService" runat="server"/>
        <asp:HiddenField ID="serviceId" runat="server"/>
    </td>
    
    <td>
        <asp:Label ID="lblSName" runat="server" Text="Label"></asp:Label>
     </td>
    <td>
        <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
    </td>
</tr>