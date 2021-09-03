<%@ Page Title="Add Product" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddProduct.aspx.cs" Inherits="Ecommerce.Product.AddProduct" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2><%: Title %></h2>
        <div class="form-group mt-2">
            <asp:Label ID="ProdcutNameLabel" runat="server" Text="Product Name"></asp:Label>
            <asp:TextBox ID="ProductName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group mt-2">
            <asp:Label ID="ProductDescriptionLabel" runat="server" Text="Description"></asp:Label>
            <asp:TextBox ID="ProductDescription" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group mt-2">
            <asp:Label ID="ImageLabel" runat="server" Text="Image"></asp:Label>
            <asp:FileUpload ID="ImageUpload" runat="server" />
        </div>
        <div class="form-group mt-2">
            <asp:Label ID="PriceLable" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="ProductPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group mt-2">
            <asp:Label ID="StockLabel" runat="server" Text="Stock"></asp:Label>
            <asp:TextBox ID="Stock" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
       <asp:Button type="submit" CssClass="btn btn-primary mt-3" runat="server" Text="Add"></asp:Button>
    </div>
</asp:Content>
