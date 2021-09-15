<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecommerce._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT TOP 4 * FROM [Product] WHERE ([Accessories] = @Accessories)">
        <SelectParameters>
            <asp:Parameter DefaultValue="laptop" Name="Accessories" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
   
    <asp:Label ID="Label1" runat="server" Text="hello"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>     
                    <div class="card line" style="width: 18rem;height:36rem;margin:10px" >
                    <img class="card-img-top" src="<%# Eval("image") %>"" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("Name") %></h5>
                        <p class="card-text"><%# Eval("description") %></p>
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Add To Cart" OnClick="Button1_Click" /> 
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>  

</asp:Content>
