<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="Bill.aspx.cs" Inherits="Ecommerce.Bill" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <form>
<div class="container mt-5">
    <div class="d-flex justify-content-center row">
        <div class="col-md-8">
            <div class="p-3 bg-white rounded">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="text-uppercase">Amazon</h1>
                        <div class="billed"><span class="font-weight-bold text-uppercase">Name:</span><span class="ml-1">   
                        <asp:Label ID="Label1" runat="server"></asp:Label></span></div>
                        <div class="billed"><span class="font-weight-bold text-uppercase">Address:</span><span class="ml-1"><asp:Label ID="Address" runat="server"></asp:Label></span></div>
                        <div class="billed"><span class="font-weight-bold text-uppercase">Date:</span><span class="ml-1"><asp:Label ID="date" runat="server"></asp:Label></span></div>

                    </div>  
                    <div class="col-md-6 text-right mt-3">
                        <h4 class="text-danger mb-0">Amazon</h4><span>Amazon.com</span>
                    </div>
                </div>
                <div class="mt-3">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Book ID</th>
                                    <th>Book Name</th>
                                    <th>Late Days</th>
                                    <th>Fine</th>
                                </tr>
                            </thead>
                            <tbody>
                               	<tr>
    										<td> {{$book['book_id']}} </td> 
    										<td> {{$book['book']->book_name}} </td>
    										<td> Not Late </td>
                                            <td>{{$fine}}<td>
                                    	</tr>
    								<tr>
    										<td> {{$book['book_id']}} </td> 
    										<td> {{$book['book']->book_name}} </td>
    										<td> {{round((time() - strtotime($book['issued_date'])) / (3600*24)) }}</td>
    										<td>10</td>
                                            
    									</tr>
                              <tr>
                                    <td></td>
                                    <td></td>
                                    <td>Total</td>
                                    <td>{{$total}}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>

    </asp:Content>
