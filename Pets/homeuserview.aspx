<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="homeuserview.aspx.cs" Inherits="Pets.homeuserview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Conttent -->
        <main class="page-content">

            <!-- Product Details Area -->
            <div class="product-details-area bg-white ptb-30">
                <div class="container">

                    <div class="pdetails">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="pdetails-images">
                                    <div class="pdetails-largeimages pdetails-imagezoom">
                                        <div class="pdetails-singleimage" data-src="images/product/lg/product-image-1.jpg">
                                            <asp:Image ID="Image1" runat="server" Height="500px" Width="500px" />
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
                                            <asp:TextBox Text="1" id="txtQuantity" runat="server"></asp:TextBox>
                                           <%-- <input type="text" value="1">--%>
                                            <div class="inc qtybutton">+<i class="ion ion-ios-arrow-up"></i></div>
                                            <div class="dec qtybutton">-<i class="ion ion-ios-arrow-down"></i></div>
                                        </div>
                                        <asp:Button ID="Button2" runat="server" OnClick="Button1_OnClick" class="ho-button lnr lnr-cart" style="width:20%" Text="Add To Cart"></asp:Button>
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
                    <div class="section-title">
                        <h3>RELATED PRODUCTS</h3>
                    </div>
                    <div class="product-slider new-best-featured-slider slider-navigation-2">
                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-1.jpg" alt="product image">
                                        <img class="hoproduct-backimage" src="images/product/product-image-22.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-pack">New</li>
                                        <li class="flag-discount">-15%</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-7.jpg" alt="product image">
                                        <img class="hoproduct-backimage" src="images/product/product-image-8.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-pack">New</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-18.jpg" alt="product image">
                                        <img class="hoproduct-backimage" src="images/product/product-image-19.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-pack">New</li>
                                        <li class="flag-discount">-15%</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-15.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-new">new</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-12.jpg" alt="product image">
                                        <img class="hoproduct-backimage" src="images/product/product-image-13.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-new">new</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-10.jpg" alt="product image">
                                        <img class="hoproduct-backimage" src="images/product/product-image-11.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-pack">New</li>
                                        <li class="flag-discount">-15%</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-7.jpg" alt="product image">
                                        <img class="hoproduct-backimage" src="images/product/product-image-8.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-pack">New</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-4.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-pack">New</li>
                                        <li class="flag-discount">-15%</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">

                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-5.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-pack">New</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-15.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-new">new</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>

                        <div class="product-slider-col">
                            <!-- Single Product -->
                            <article class="hoproduct">
                                <div class="hoproduct-image">
                                    <a class="hoproduct-thumb" href="product-details.html">
                                        <img class="hoproduct-frontimage" src="images/product/product-image-12.jpg" alt="product image">
                                        <img class="hoproduct-backimage" src="images/product/product-image-13.jpg" alt="product image">
                                    </a>
                                    <ul class="hoproduct-actionbox">
                                        <li><a href="#"><i class="lnr lnr-cart"></i></a></li>
                                        <li><a href="#" class="quickview-trigger"><i class="lnr lnr-eye"></i></a></li>
                                        <li><a href="#"><i class="lnr lnr-heart"></i></a></li>
                                    </ul>
                                    <ul class="hoproduct-flags">
                                        <li class="flag-new">new</li>
                                    </ul>
                                </div>
                                <div class="hoproduct-content">
                                    <h5 class="hoproduct-title"><a href="product-details.html">SonicFuel
                                            Wireless Over-Ear Headphones</a></h5>
                                    <div class="hoproduct-rattingbox">
                                        <div class="rattingbox">
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                            <span class="active"><i class="ion ion-ios-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="hoproduct-pricebox">
                                        <div class="pricebox">
                                            <del class="oldprice">$35.11</del>
                                            <span class="price">$34.11</span>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <!--// Single Product -->
                        </div>
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
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_OnItemCommand" RepeatColumns="4" RepeatDirection="Horizontal" CellPadding="10" CellSpacing="10">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="200px" Width="250px" />
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("id") %>'><i class="fa fa-shopping-basket" style="margin-left: -20px;"></i></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=35.237.174.166;Initial Catalog=Ecommerce;User ID=sa;Password=Maya@123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [addproduct]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
