<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="Details.aspx.cs" Inherits="Ecommerce.Details" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Product] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="pid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">     
        <ItemTemplate>
            <div class="card line" style="width: 100%;height:auto;margin:10px" >
                
                <div style="display:flex">
                    <img class="card-img-top" src="<%# Eval("image") %>"" alt="Card image cap" style="width:50%">
                    <div class="card-body">
                        <h2 class="card-title" style="margin:2rem 0rem;font-weight:bold"><%# Eval("Name") %></h2>
                        <p class="card-text" style="text-overflow:ellipsis;width:70%;font-size:1.5rem"><%# Eval("description") %></p>
                        <h5 class="card-text" style="color:red">Deal Prize:-<%# Eval("price") %>/-</h5><br />
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Add To Cart" OnClick="Button1_Click" CommandArgument='<%# Eval("id")%>' /> 
                                
                        </div>
                </div>
                
                </div>
        </ItemTemplate>            
        
        </asp:DataList>  
    
    <asp:Label ID="productid" runat="server" style="display:none"></asp:Label>


</asp:Content>
