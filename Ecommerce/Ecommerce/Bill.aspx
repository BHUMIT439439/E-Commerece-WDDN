<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="Bill.aspx.cs"
    Inherits="Ecommerce.Bill" %>


    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div id="divPrint" runat="server">
            <div class="container">
                <div class="page-header">
                    <h1 style="text-align: center">
                        Amazon Bill </h1>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 body-main">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-4 d-flex" style="width:auto;justify-content:space-between">
                                        <img class="img" alt="Amazon Bill" style="width:4rem;height:4rem;margin:1rem"
                                            src="http://pngimg.com/uploads/shopping_cart/shopping_cart_PNG59.png"
                                            style="height: 100px" />
                                        <div>
                                            <p><b>Name : </b>
                                                <asp:Label ID="Name" runat="server"></asp:Label>
                                            </p>
                                            <b>Address : </b>
                                            <p>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Address" runat="server" Width="20%"></asp:Label>
                                            </p>
                                            <p><b>MobileNo : </b>
                                                <asp:Label ID="MobileNo" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-8 text-right">

                                    </div>
                                </div> <br />
                                <div class="row">
                                    <div class="col-md-12 text-center">
                                        <h2>INVOICE</h2>
                                    </div>
                                </div> <br />
                                <div>
                                    <table class="table">
                                        <thead style="background: #1E1F23;color: #fff">
                                            <tr>
                                                <th>
                                                    <h5>Description</h5>
                                                </th>
                                                <th>
                                                    <h5>Amount</h5>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1"
                                                RepeatColumns="4" RepeatDirection="Horizontal">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <h5>
                                                                <%# Eval("name") %>
                                                            </h5>
                                                        </td>
                                                        <td>
                                                            <h5 style="margin:10px 8rem">
                                                                <%# Eval("Price")%>
                                                            </h5>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                                                       <ItemTemplate>
                                                           <tr>
                                                               <td class="text-right">
                                                                 <h4 style="color:red"><strong>Total:</strong></h4>
                                                                </td>
                                                               <td>
                                                                   <h5 style="margin:10px 18rem">
                                                                       <span style="color:red"> <%# Eval("Total") %>₹/-</span>
                                                                   </h5>
                                                               </td>
                                                           </tr>
                                                       </ItemTemplate>
                                            </asp:DataList>
                                        </tbody>
                                    </table>
                                </div>
                                <div>
                                    <div class="col-md-12">
                                        <p><b>Date :</b> <asp:Label ID="date" runat="server"></asp:Label></p> <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Order Now" OnClick="Button1_Click" /> 
                               

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
            SelectCommand="SELECT [Product].* FROM [Product] INNER JOIN [CartTable] ON ([Product].ID=[CartTable].productid) WHERE ([CartTable].CustomerID = @CustomerID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="userid" Name="CustomerID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:Label ID="userid" runat="server" style="display:none"></asp:Label>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT SUM([Product].price) AS 'TOTAL' FROM [Product] INNER JOIN [CartTable] ON ([Product].ID=[CartTable].productid) WHERE ([CartTable].CustomerID = @CustomerID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="userid" Name="CustomerID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


    </asp:Content>