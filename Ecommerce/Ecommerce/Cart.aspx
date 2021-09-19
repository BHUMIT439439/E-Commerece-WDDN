    <%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="Cart.aspx.cs" Inherits="Ecommerce.Cart"%>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <asp:Label ID="userid" runat="server" style="display:none"></asp:Label>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Product].* FROM [Product] INNER JOIN [CartTable] ON ([Product].ID=[CartTable].productid) WHERE ([CartTable].CustomerID = @CustomerID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="userid" Name="CustomerID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>     
                    <div class="card line" style="width:auto;height:auto;margin:10px" >
                    <div style="display:flex">
                        <a href="/Details?pid=<%# Eval("id") %>" ><img class="card-img-top" src="<%# Eval("image") %>"" alt="Card image cap" style="width:10rem"></a>
                    <div class="card-body"">
                        <h5 class="card-title"><%# Eval("Name") %></h5>
                        
                        <p class="card-text" style="overflow: hidden;text-overflow: ellipsis;white-space: initial; display: -webkit-box; -webkit-line-clamp: 2;-webkit-box-orient: vertical;"><%# Eval("description") %></p>
                        <h5 class="card-title">PRICE:-<%# Eval("Price")%>₹/-</h5>
                        <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="DELETE" OnClick="Button1_Click" CommandArgument='<%# Eval("id")%>' /> 
                    
                    </div>
                    </div>
                        
                </div>
            </ItemTemplate>
        </asp:DataList>

         <asp:LinkButton ID="Button1" CssClass="btn btn-success" runat="server" Text="Buy Now" href="../PlaceOrder"/> 
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>


    </asp:Content>
