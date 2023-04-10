<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="0.aspx.cs" Inherits="BikeShop_Working.BikeShop" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!-- TODO -->
    <!-- Drop downs for staff and manager need auto update-->
      <h2>Add Customer<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
</h2>
        <!-- Add Customer input fields -->
        <!-- ... -->
<asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />

<asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />

<asp:Label ID="lblCreditCard" runat="server" Text="Credit Card:"></asp:Label>
<asp:TextBox ID="txtCreditCard" runat="server"></asp:TextBox><br />

<asp:Label ID="lblPIN" runat="server" Text="PIN:"></asp:Label>
<asp:TextBox ID="txtPIN" runat="server"></asp:TextBox><br />

<asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br />

<asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />

<asp:Label ID="lblStreet" runat="server" Text="Street:"></asp:Label>
<asp:TextBox ID="txtStreet" runat="server"></asp:TextBox><br />

<asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
<asp:TextBox ID="txtCity" runat="server"></asp:TextBox><br />

<asp:Label ID="lblState" runat="server" Text="State:"></asp:Label>
<asp:TextBox ID="txtState" runat="server"></asp:TextBox><br />

<asp:Label ID="lblZipCode" runat="server" Text="Zip Code:"></asp:Label>
<asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox><br />

      <strong>
      <asp:Label ID="Label4" runat="server" Text="customer"></asp:Label>
      </strong>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" OnClick="btnAddCustomer_Click" />

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Credit_Card_Encrypted" HeaderText="Credit_Card_Encrypted" SortExpression="Credit_Card_Encrypted" />
                <asp:BoundField DataField="Credit_Card_PIN_Encrypted" HeaderText="Credit_Card_PIN_Encrypted" SortExpression="Credit_Card_PIN_Encrypted" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zip_Code" HeaderText="Zip_Code" SortExpression="Zip_Code" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>

        <h2>Add Staff</h2>
        <!-- Add Staff input fields -->
        <!-- ... -->

            First Name: <asp:TextBox ID="txtStaffFirstName" runat="server" /><br />
            Last Name: <asp:TextBox ID="txtStaffLastName" runat="server" /><br />
            Email: <asp:TextBox ID="txtStaffEmail" runat="server" /><br />
            Phone: <asp:TextBox ID="txtStaffPhone" runat="server" /><br />
            Is Manager: <asp:CheckBox ID="chkIsManager" runat="server" /><br />

        <strong>
      <asp:Label ID="Label9" runat="server" Text="staff"></asp:Label>
      </strong>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnAddStaff" runat="server" Text="Add Staff" OnClick="btnAddStaff_Click" />
   
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>
   
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Staff_ID" DataSourceID="SqlDataSource4" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="Staff_ID" HeaderText="Staff_ID" InsertVisible="False" ReadOnly="True" SortExpression="Staff_ID" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:CheckBoxField DataField="IsManager" HeaderText="IsManager" SortExpression="IsManager" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
      </asp:GridView>
   


        <h2>Manage Staff<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT [Staff_ID] FROM [Staff]"></asp:SqlDataSource>
      </h2>
        <!-- Manage Staff DropDownList and buttons -->
        <!-- ... -->
<asp:DropDownList ID="ddlManagerStaff" runat="server" DataTextField="FullName" DataValueField="Staff_ID" />
<%--<asp:DropDownList ID="ddlManagerStaff" runat="server" DataTextField="Staff_ID" DataValueField="Staff_ID" DataSourceID="SqlDataSource2"></asp:DropDownList><br />--%>
<asp:Button ID="btnPromote" runat="server" Text="Promote" OnClick="btnPromote_Click" />
<asp:Button ID="btnDemote" runat="server" Text="Demote" OnClick="btnDemote_Click" />

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>
      <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
      <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT * FROM [Staff_Store]"></asp:SqlDataSource>
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Staff_ID" DataSourceID="SqlDataSource3" ForeColor="Black" AllowSorting="True">
          <Columns>
              <asp:BoundField DataField="Staff_ID" HeaderText="Staff_ID" InsertVisible="False" ReadOnly="True" SortExpression="Staff_ID" />
              <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
              <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
              <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
              <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
              <asp:CheckBoxField DataField="IsManager" HeaderText="IsManager" SortExpression="IsManager" />
          </Columns>
          <FooterStyle BackColor="#CCCCCC" />
          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
          <RowStyle BackColor="White" />
          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#808080" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#383838" />
      </asp:GridView>

        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9">
            <Columns>
                <asp:BoundField DataField="Staff_ID" HeaderText="Staff_ID" SortExpression="Staff_ID" />
                <asp:BoundField DataField="Store_ID" HeaderText="Store_ID" SortExpression="Store_ID" />
            </Columns>
      </asp:GridView>


       <h2>Add Store</h2>
   <!-- Add Store input fields -->
   <!-- ... -->

       Store_Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" /><br />
       Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" /><br />
       Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" /><br />
       Street:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" /><br />
       City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" /><br />
       State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" /><br />
       Zip_Code:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server" />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label1" runat="server" Text="store"></asp:Label>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="addStore" runat="server" OnClick="addStore_Click" Text="Add Store" />
      <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT * FROM [Stores]"></asp:SqlDataSource>
      <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Store_ID" DataSourceID="SqlDataSource10" ForeColor="Black" GridLines="Vertical">
          <AlternatingRowStyle BackColor="#CCCCCC" />
          <Columns>
              <asp:BoundField DataField="Store_ID" HeaderText="Store_ID" InsertVisible="False" ReadOnly="True" SortExpression="Store_ID" />
              <asp:BoundField DataField="Store_Name" HeaderText="Store_Name" SortExpression="Store_Name" />
              <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
              <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
              <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
              <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
              <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
              <asp:BoundField DataField="Zip_Code" HeaderText="Zip_Code" SortExpression="Zip_Code" />
          </Columns>
          <FooterStyle BackColor="#CCCCCC" />
          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#808080" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#383838" />
      </asp:GridView>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
      <br />
      <br />
       
    
    
    <h2>Place Order</h2>
        <!-- Place Order input fields -->
        <!-- ... -->
  
        <div>
            <label>Customer:</label>
            <asp:DropDownList ID="ddlCustomer" runat="server"></asp:DropDownList>
        </div>
        <div>
            <label>Store:</label>
            <asp:DropDownList ID="ddlStore" runat="server"></asp:DropDownList>
        </div>
        <div>
            <label>Staff:</label>
            <asp:DropDownList ID="ddlStaff" runat="server"></asp:DropDownList>
        </div>
        <div>
            <label>Discount:</label>
            <asp:TextBox ID="txtDiscount" runat="server"></asp:TextBox>
        </div>

        <div>
         <label>Product:</label>
            <asp:DropDownList ID="ddlProduct" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <div>
            <label>Quantity:</label>
            <asp:DropDownList ID="ddlQuantity" runat="server"></asp:DropDownList>
        </div>
        <div>
            <label>Source Store:</label>
             <asp:DropDownList ID="ddlSourceStore" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSourceStore_SelectedIndexChanged"></asp:DropDownList>
        </div>

    <asp:Label ID="lblMessage" runat="server" ForeColor="Green" >place order...</asp:Label>
      <br />

        <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" />
    <%--        <asp:Button ID="btnAddItem" runat="server" Text="Add Item" OnClick="btnAddItem_Click" /> < br /> --%>

      <%--<asp:GridView ID="gvOrderItems" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
      </asp:GridView>  --%>

      <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT * FROM [Order_Items]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2BikeShop2 %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
      <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
      <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Order_ID" DataSourceID="SqlDataSource5" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
          <AlternatingRowStyle BackColor="#DCDCDC" />
          <Columns>
              <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" InsertVisible="False" ReadOnly="True" SortExpression="Order_ID" />
              <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
              <asp:BoundField DataField="Staff_ID" HeaderText="Staff_ID" SortExpression="Staff_ID" />
              <asp:BoundField DataField="Store_ID" HeaderText="Store_ID" SortExpression="Store_ID" />
              <asp:BoundField DataField="Order_Date" HeaderText="Order_Date" SortExpression="Order_Date" />
              <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
          </Columns>
          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#0000A9" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#000065" />
      </asp:GridView>
      <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
      <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Order_Item_ID" DataSourceID="SqlDataSource6" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
          <AlternatingRowStyle BackColor="#DCDCDC" />
          <Columns>
              <asp:BoundField DataField="Order_Item_ID" HeaderText="Order_Item_ID" InsertVisible="False" ReadOnly="True" SortExpression="Order_Item_ID" />
              <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" SortExpression="Order_ID" />
              <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
              <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
              <asp:BoundField DataField="Source_Store_ID" HeaderText="Source_Store_ID" SortExpression="Source_Store_ID" />
          </Columns>
          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#0000A9" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#000065" />
      </asp:GridView>
      <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
      <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="Stock_ID" DataSourceID="SqlDataSource7" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
          <AlternatingRowStyle BackColor="#DCDCDC" />
          <Columns>
              <asp:BoundField DataField="Stock_ID" HeaderText="Stock_ID" InsertVisible="False" ReadOnly="True" SortExpression="Stock_ID" />
              <asp:BoundField DataField="Store_ID" HeaderText="Store_ID" SortExpression="Store_ID" />
              <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
              <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
          </Columns>
          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#0000A9" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#000065" />
      </asp:GridView>
      <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
      <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource8" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
          <AlternatingRowStyle BackColor="PaleGoldenrod" />
          <Columns>
              <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" InsertVisible="False" ReadOnly="True" SortExpression="Product_ID" />
              <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
              <asp:BoundField DataField="Brand_ID" HeaderText="Brand_ID" SortExpression="Brand_ID" />
              <asp:BoundField DataField="Category_ID" HeaderText="Category_ID" SortExpression="Category_ID" />
              <asp:BoundField DataField="Model_Year" HeaderText="Model_Year" SortExpression="Model_Year" />
              <asp:BoundField DataField="List_Price" HeaderText="List_Price" SortExpression="List_Price" />
          </Columns>
          <FooterStyle BackColor="Tan" />
          <HeaderStyle BackColor="Tan" Font-Bold="True" />
          <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
          <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
          <SortedAscendingCellStyle BackColor="#FAFAE7" />
          <SortedAscendingHeaderStyle BackColor="#DAC09E" />
          <SortedDescendingCellStyle BackColor="#E1DB9C" />
          <SortedDescendingHeaderStyle BackColor="#C2A47B" />
      </asp:GridView>

</asp:Content>
