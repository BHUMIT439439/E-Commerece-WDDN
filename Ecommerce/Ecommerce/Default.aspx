<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecommerce._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
   

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    <br />
   

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>     
          <div class="card line" style="width: 18rem;" >
                    <img class="card-img-top" src="<%# Eval("image") %>"" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("Name") %></h5>
                        <p class="card-text"><%# Eval("description") %></p>
                        <a href="#" class="btn btn-primary">Add to cart</a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>  

</asp:Content>
