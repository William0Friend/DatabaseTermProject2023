<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBConnectionExample.aspx.cs" Inherits="jwltfbBikeShopWebApp.DBCpnnectionExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Database Connection Example </h1>
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


<!--
     <connectionStrings>
   <add name="DBConnection" providerName="System.Data.SqlClient" connectionString="data source=DESKTOP-V1TNUF0\SQLEXPRESS; initial catalog=sqlexpressexample;user id=user;password=password;persist security info=True;packet size=4096"/>
  </connectionStrings>

-->