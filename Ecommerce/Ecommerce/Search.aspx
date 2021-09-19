<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="Search.aspx.cs" Inherits="Ecommerce.Search" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <asp:Label ID="query" runat="server" style="display:none"></asp:Label>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Product] WHERE ([name] LIKE '%' + @name + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="query" Name="name" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>     
                    <div class="card line" style="width: 18rem;height:auto;margin:10px" >
                    <a href="/Details?pid=<%# Eval("id") %>" ><img class="card-img-top" src="<%# Eval("image") %>"" alt="Card image cap"></a>
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("Name") %></h5>
                        <p class="card-text" style="overflow: hidden;text-overflow: ellipsis;white-space: initial; display: -webkit-box; -webkit-line-clamp: 2;-webkit-box-orient: vertical;"><%# Eval("description") %></p>
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Add To Cart" OnClick="Button1_Click" CommandArgument='<%# Eval("id")%>' /> 
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>  


    </asp:Content>
