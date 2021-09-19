<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="PlaceOrder.aspx.cs" Inherits="Ecommerce.PlaceOrder" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="vh-100" style="background-color: #eee;margin:auto">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-11">
                    <div class="card text-black" style="border-radius: 25px;">
                        <div class="card-body p-md-5">
                            <div class="row justify-content-center align-items-center" style="margin-left:400px">
                                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                    <p class="text-center h1 fw-bold mb-5 mx-md-4" style="font-size:1.5rem">Shipping Address</p>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <div class="form-outline flex-fill mb-0">
                                                <asp:TextBox ID="name" CssClass="form-control name" runat="server"></asp:TextBox>
                                                <label class="form-label" for="form3Example1c">Your Name</label>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <div class="form-outline flex-fill mb-0">
                                        <asp:TextBox ID="address" CssClass="form-control address" runat="server"></asp:TextBox>
                                                <label class="form-label" for="form3Example3c">Your Shipping address</label>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <div class="form-outline flex-fill mb-0">
                                                <asp:TextBox ID="mobileno" CssClass="form-control mobileno" runat="server"></asp:TextBox>
                                                <label class="form-label" for="form3Example4c">Mobile Number</label>
                                            </div>
                                        </div>
       

                                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                            <asp:LinkButton ID="Button1" CssClass="btn btn-success confirm" runat="server" Text="Proceed to buy" href="../Bill?"/>
                                            <script>
                                                const confirm = document.querySelector(".confirm");
                                                confirm.addEventListener("click", function () {
                                                    const name = document.querySelector(".name");
                                                    const address = document.querySelector(".address");
                                                    const mobileno = document.querySelector(".mobileno");
                                                    confirm.href += `name=${name.value}&address=${address.value}&mobileno=${mobileno.value}`;
                                                });
                                            </script>
        
                                        </div>
                                    
                                </div>
                                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>