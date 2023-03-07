<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eBikeShop.aspx.cs" Inherits="jwltfbBikeShopWebApp.eBikeShop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList runat="server" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <div>
            <asp:Button runat="server" Text="Button" OnClick="Unnamed2_Click" />
        </div>
    </form>
</body></html>
