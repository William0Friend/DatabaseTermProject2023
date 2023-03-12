<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" A 

    <div class="form-group">
        <label> Your State </label>
        <asp:DropDownList ID="ddlStates" CssClass="form-control" OnSelectedIndexChanged="ddl_SelectedIndexChanged" runat="server" >
        <asp:ListItem Value =""> Select Your State </asp:ListItem>
        <asp:ListItem Value ="AL"> Alabama </asp:ListItem>
        <asp:ListItem Value ="AK"> Alaska </asp:ListItem>
        <asp:ListItem Value ="AL"> Alabama </asp:ListItem>
        <asp:ListItem Value ="CO"> Colorado </asp:ListItem>
            <!-- can get other 50 addeded -->
        </asp:DropDownList>
    </div>
<div class="jombotron">
    <h3>Your Custom Price is ::: <asp:Literal ID="ltCustomePrice" runat="server" Text="(select your state to get price)" /></h3>
</div>
</asp:Content>




















































