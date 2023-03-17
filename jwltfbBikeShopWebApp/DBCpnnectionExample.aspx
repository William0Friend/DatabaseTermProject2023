<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBCpnnectionExample.aspx.cs" Inherits="jwltfbBikeShopWebApp.DBCpnnectionExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Database Connection Example </h1>s
    <hr />
    <h4>
        <asp:Literal ID="ltConnectionMessage" runat="server" />
    </h4>
    <div class="row">
        <ul>
            <asp:Literal ID="ltOutput" runat="server"   />
        </ul>
    </div>
</asp:Content>
