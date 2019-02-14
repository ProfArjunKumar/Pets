<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="userview.aspx.cs" Inherits="Pets.userview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{
            color:#000000;
            border-bottom:none;
        }
        td{
            border-top:none;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Conttent -->
        <main class="page-content">
            <br />
            <br />

            <!-- Product Details Area -->
            <div class="product-details-area bg-white ptb-30">
                <div class="container">

                    <div class="pdetails">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="pdetails-images">
                                    <div class="pdetails-largeimages pdetails-imagezoom" style="box-shadow: 0 0 10px rgba(0,0,0,1);">
                                        <div>
                                            <asp:Image ID="Image1" style="margin-top:10px" runat="server" Height="500px" Width="500px" />
                                            <%--<img src="images/product/lg/product-image-1.jpg" alt="product image">--%>
                                        </div>
                                        
                                    </div>

                                    
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="pdetails-content">

                                    
                                    <h3><asp:Label ID="lblname" runat="server"></asp:Label></h3>
                                    <div class="pdetails-pricebox">
                                        
                                        <span class="price">&#8377;<asp:Label ID="lblprice" runat="server"></asp:Label></span>
                                        
                                    </div>
                                    <p style="color:#000000"><asp:Label ID="lbldetil" runat="server"></asp:Label></p>
                                    <div style="color:#000000">Size: <asp:Label ID="lblsize" runat="server"></asp:Label></div><br/>
                                    <div style="color:#000000">Color: <asp:Label ID="lblcolor" runat="server"></asp:Label></div>
                                    <div class="pdetails-quantity">
                                        <div class="quantity-select">
                                            <asp:TextBox Text="1" id="txtQuantity" style="color:#000000" runat="server"></asp:TextBox>
                                           <%-- <input type="text" value="1">--%>
                                            <div class="inc qtybutton">+<i class="ion ion-ios-arrow-up"></i></div>
                                            <div class="dec qtybutton">-<i class="ion ion-ios-arrow-down"></i></div>
                                        </div>
                                        <asp:Button ID="Button2" runat="server" OnClick="Button1_OnClick" class="ho-button ho-button-dark" style="width:20%;background-color:#0B88EE;color:#ffffff;border:none" Text="Add To Cart"></asp:Button>
                                        <%--<a href="shop-rightsidebar.html" class="ho-button">
                                            <i class="lnr lnr-cart"></i>
                                            <span>Add to cart</span>
                                        </a>--%>
                                    </div>
                                    
                                    
                                   
                                </div>
                            </div>
                        </div>
                    </div>

                    

                </div>
            </div>
            <!--// Product Details Area -->

            <!-- Related Product Area -->
            <div class="ho-section related-product-area pb-30">
                <div class="container">
                    <div class="section-title" style="margin-bottom: 0px">
                        <h3>RELATED PRODUCTS</h3>
                    </div>
                    <div class="table-responsive-md">
                            <asp:DataList ID="DataList1" runat="server" CssClass="table" DataKeyField="id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_OnItemCommand" RepeatColumns="4" RepeatDirection="Horizontal" CellPadding="10" CellSpacing="10">
                        <ItemTemplate>
                            <div>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="200px" Width="250px" />
                                        </asp:LinkButton>
                            </div>
                            <div>
                                        <asp:Label ID="Label1" runat="server" style="color:#000000" Text='<%# Eval("productname") %>' />
                                    </div>
                                <div>
                                        &#8377; <asp:Label ID="Label2" runat="server" style="color:#000000" Text='<%#Eval("Price") %>'></asp:Label>
                            </div>
                            <div class="text-center ho-button ho-button-dark">
                                            <asp:LinkButton ID="LinkButton1" Text="View" style="color: #ffffff" runat="server" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
                                    </div>
                                
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=35.237.174.166;Initial Catalog=Ecommerce;User ID=sa;Password=Maya@123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [addproduct]"></asp:SqlDataSource>
                       </div>
                </div>
            </div>
            <!--// Related Product Area -->

           

        </main>
        <!--// Page Conttent -->
    
    <div class="my-account-area ptb-30">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mt-30 mt-lg-0">
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
