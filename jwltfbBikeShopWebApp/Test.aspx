<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="jwltfbBikeShopWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
       
        <div>
            <label>Name</label>
            <asp:TextBox ID="txtName" runat="server" />
            <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" ErrorMessage="******NEEDS (proper) INPUT******" />
        </div>

        <div>
            <label>Email</label>
            <asp:TextBox ID="txtEmail" runat="server" />
            <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="******NEEDS (proper) INPUT******" />

        </div>
        <div>
            <label>Age</label>
            <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator runat="server" ID="rfvAge" ControlToValidate="txtAge" ErrorMessage="******NEEDS (proper) INPUT******" />

        </div>
        <div>
            <label>Phone</label>
            <asp:TextBox ID="txtPhone" runat="server" />
        <asp:RequiredFieldValidator runat="server" ID="rfvPhone" ControlToValidate="txtPhone" ErrorMessage="******NEEDS (proper) INPUT******" />

        </div>
        <div>
            <label>Fovorite Color</label>
            <asp:DropDownList ID="ddlColor" runat="server">
                <asp:ListItem Text="Please choose a color" Value="" />
                <asp:ListItem Text="Blue" Value="Blue" />
                <asp:ListItem Text="Red" Value="Red" />
                <asp:ListItem Text="Yellow" Value="Yellow" />
                <asp:ListItem Text="Green" Value="Green" />            
                <asp:ListItem Text="Purple" Value="Purple" />
            </asp:DropDownList>
        </div>

        <div class="row">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Info" OnClick="btnSubmit_Click" />
        </div>
      























        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="h1Title">JWLBikeShop</h1>
            <p class="lead">Fill out form please</p>
        </section>
        <div class="row">
            <section class="col-md-4" aria-labelledby="h2formfn">
                <h2 id="h2formfn"> fn </h2>
                <label>Staff First Name</label>
                <asp:TextBox ID="StaffFirstName" runat="server" />
            </section>
            <section class="col-md-4" aria-labelledby="h2formln">
                <h2 id="h2formln">ln </h2>
                <label>Staff First Name</label>
                <asp:TextBox ID="StaffSecondName" CssClass="text-danger" runat="server" />
            </section>
            <section class="col-md-4" aria-labelledby="h2formsql">
                <h2 id="h2formsql"> sql</h2>
                <label>SQL</label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server">
                   
                </asp:SqlDataSource>
            </section>
        </div>

         <div class="message">
            <asp:Literal ID="ltMessage" runat="server" />
        </div>

    </main>

</asp:Content>
