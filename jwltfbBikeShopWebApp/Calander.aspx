<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calander.aspx.cs" Inherits="jwltfbBikeShopWebApp.Calander" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Advanced Controls</h2>
    <h4>list of events in a repeater from a calaander control</h4>
    <div class="form-group">
        <label>Event Name:</label>
        <asp:TextBox ID="txtEvent" CssClass="form-control" runat="server" />
    </div>
    <div class="form-group">
        <label>Event Date:</label>
        <asp:Calendar runat="server" ID="calendarEvents" />
    </div>
    <div class="form-group">
        <label>Event Name</label>
        <asp:Button ID="btnEvent" CssClass="btn btn-primary btn-large" runat="server" Text="Add Event" OnClick="btnEvent_Click" />
    </div>
    <h3>Events Repeater.</h3>
    <div>
        <asp:Repeater ID="rptEvents" runat="server">
            <ItemTemplate>
                <h3><%# DataBinder.Eval(Container.DataItem, "EventDate") %><small class="border-5 border-danger"><%# DataBinder.Eval(Container.DataItem, "EventName") %></small></h3>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
