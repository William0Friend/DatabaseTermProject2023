<%@ Page Title="Place Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jwltfbBikeShopWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <h1>test...</h1>
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


        <!-- Real From Here On  -->

        <h1>Place order </h1>
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <label>Store Pulldown</label>
                    <asp:DropDownList ID="ddlPlaceOrder" runat="server">
                        <asp:ListItem Text="Please choose a color" Value="" />
                        <asp:ListItem Text="Blue" Value="Blue" />
                        <asp:ListItem Text="Red" Value="Red" />
                        <asp:ListItem Text="Yellow" Value="Yellow" />
                        <asp:ListItem Text="Green" Value="Green" />
                        <asp:ListItem Text="Purple" Value="Purple" />
                    </asp:DropDownList>
                </div>
                <div class="col-3">
                    <label>Staff Pulldown</label>
                    <asp:DropDownList ID="ddlStorePulldown" runat="server">
                        <asp:ListItem Text="Please choose a color" Value="" />
                        <asp:ListItem Text="Blue" Value="Blue" />
                        <asp:ListItem Text="Red" Value="Red" />
                        <asp:ListItem Text="Yellow" Value="Yellow" />
                        <asp:ListItem Text="Green" Value="Green" />
                        <asp:ListItem Text="Purple" Value="Purple" />
                    </asp:DropDownList>
                </div>

                <div>
                    <label>Discount</label>
                    <asp:TextBox ID="disCount" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvDiscount" ControlToValidate="disCount" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>

                <div class="col-3">
                    <label>First Name</label>
                    <asp:TextBox ID="firstName" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvFirstName" ControlToValidate="firstName" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>

                <div class="col-3">
                    <label>Last Name</label>
                    <asp:TextBox ID="lastName" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvLastName" ControlToValidate="lastName" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>

            </div>

            <div class="row">
                <div class="col-3">
                    <label>Bike Name</label>
                    <asp:DropDownList ID="ddlBikeName" runat="server">
                        <asp:ListItem Text="Please choose a color" Value="" />
                        <asp:ListItem Text="Blue" Value="Blue" />
                        <asp:ListItem Text="Red" Value="Red" />
                        <asp:ListItem Text="Yellow" Value="Yellow" />
                        <asp:ListItem Text="Green" Value="Green" />
                        <asp:ListItem Text="Purple" Value="Purple" />
                    </asp:DropDownList>
                </div>
                <div class="col-3">
                    <label>Qty</label>
                    <asp:DropDownList ID="ddlQty" runat="server">
                        <asp:ListItem Text="Please choose a color" Value="" />
                        <asp:ListItem Text="Blue" Value="Blue" />
                        <asp:ListItem Text="Red" Value="Red" />
                        <asp:ListItem Text="Yellow" Value="Yellow" />
                        <asp:ListItem Text="Green" Value="Green" />
                        <asp:ListItem Text="Purple" Value="Purple" />
                    </asp:DropDownList>
                </div>
                <div class="col-3">
                    <label>Store Name</label>
                    <asp:DropDownList ID="ddlStoreName" runat="server">
                        <asp:ListItem Text="Please choose a color" Value="" />
                        <asp:ListItem Text="Blue" Value="Blue" />
                        <asp:ListItem Text="Red" Value="Red" />
                        <asp:ListItem Text="Yellow" Value="Yellow" />
                        <asp:ListItem Text="Green" Value="Green" />
                        <asp:ListItem Text="Purple" Value="Purple" />
                    </asp:DropDownList>
                </div>

            </div>

            <div>
                <asp:Button ID="btnOrderComplete" runat="server" Text="orderComplete" OnClick="orderComplete_Click" />
            </div>

        </div>

        <h1>Business Page / Inventory Page</h1>
        <div class="container">

            <div class="row">
                <div>
                    <label>addStaff</label>
                    <asp:TextBox ID="addStaff" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvAddStaff" ControlToValidate="addStaff" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>
                <div>
                    <asp:Button ID="btnAddStaff" runat="server" Text="Add Staff" OnClick="addStaff_Click" />
                </div>
                <div>
                    <label>addChangeManager</label>
                    <asp:TextBox ID="addChangeManager" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvaddChangeManager" ControlToValidate="addChangeManager" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>
                <div>
                    <asp:Button ID="btnAddChangeManager" runat="server" Text="Add Change Manager" OnClick="addChangeManager_Click" />
                </div>
                <div>
                    <label>addCustomer</label>
                    <asp:TextBox ID="addCustomer" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvAddCustomer" ControlToValidate="addCustomer" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>
                <div>
                    <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" OnClick="addCustomer_Click" />
                </div>

            </div>

            <div class="row">
                <div>
                    <label>AddInventoryToStores</label>
                    <asp:TextBox ID="addInventoryToStores" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvAddInventoryToStores" ControlToValidate="addInventoryToStores" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>
                <div>
                    <asp:Button ID="btnAddInventoryToStores" runat="server" Text="Add Inventory to Stores" OnClick="addInventoryToStores_Click" />
                </div>
                <div>
                    <label>AddStore</label>
                    <asp:TextBox ID="addStore" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvAddStore" ControlToValidate="addStore" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>
                <div>
                    <asp:Button ID="btnAddStore" runat="server" Text="Add Store" OnClick="addStore_Click" />
                </div>
                <div>
                    <label>AddBikeName</label>
                    <asp:TextBox ID="addBikeName" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvAddBikeName" ControlToValidate="addBikeName" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>
                <div>
                    <asp:Button ID="btnAddBikeName" runat="server" Text="Add Bike Name" OnClick="addBikeName_Click" />
                </div>
                <div>
                    <label>AddBikeCost</label>
                    <asp:TextBox ID="addBikeCost" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvAddBikeCost" ControlToValidate="addBikeCost" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>
                <div>
                    <asp:Button ID="btnAddBikeCost" runat="server" Text="Add Bike Cost" OnClick="addBikeCost_Click" />
                </div>
                <div>
                    <label>AddBikeBrand</label>
                    <asp:TextBox ID="addBikeBrand" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvAddBikeBrand" ControlToValidate="addBikeBrand" ErrorMessage="******NEEDS (proper) INPUT******" />
                </div>
                <div>
                    <asp:Button ID="btnAddBikeBrand" runat="server" Text="Add Bike Brand" OnClick="addBikeBrand_Click" />
                </div>

            </div>
</div class="container m-4 border-dark border-2 ">

        <div class="rox">
            <h1>Database Connection Example </h1>
            <hr />
            <h4>
                <asp:Literal ID="bikeshopeIn" runat="server" />
            </h4>
            <div class="row">
                <ul>
                    <asp:Literal ID="bikeShopOut" runat="server" />
                </ul>
            </div>
        </div>
</div>
    
    </main>

</asp:Content>

<!--
     <connectionStrings>
   <add name="DBConnection" providerName="System.Data.SqlClient" connectionString="data source=DESKTOP-V1TNUF0\SQLEXPRESS; initial catalog=sqlexpressexample;user id=user;password=password;persist security info=True;packet size=4096"/>
  </connectionStrings>

-->