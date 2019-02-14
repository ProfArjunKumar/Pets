<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Pets.index1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Petsfriend - Home</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=0.55, shrink-to-fit=no" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="#" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/icon.png" />
    <!-- Google font (font-family: 'Roboto', sans-serif;) -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700" rel="stylesheet" />
    <!-- Plugins -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/plugins.css" />
    <!-- Style Css -->
    <link rel="stylesheet" href="css/style.css" />
    <!-- Custom Styles -->
    <link rel="stylesheet" href="css/custom.css" />
    <style>
        table{
            overflow:auto;
            color:#000000;
            border-bottom:none;
        }
        td{
            border-top:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper" class="wrapper">
           <!-- Header -->
            <header class="header">

                <!-- Header Bottom Area -->

                <div class="header-bottom bg-light fixed-top">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-2 col-md-6 col-sm-6">
                                <a href="index.aspx" class="header-logo">
                                    <img src="images/logo/logo.png" alt="logo">
                                </a>
                            </div>
                            <div class="col-lg-8 d-none d-lg-block">

                                <!-- Navigation -->
                                <nav class="ho-navigation">
                                    <ul>
                                        <li class="active">
                                            <a href="index.aspx">HOME</a>
                                        </li>
                                        <li class="megamenu-holder">
                                            <a href="#">Dog</a>
                                            <ul class="megamenu">
                                                <li><a href="#">Dog Supplies</a>
                                                    <ul>
                                                        <li><a href="homedogfood.aspx">Dog Food</a></li>
                                                        <li><a href="homedogtreats.aspx">Dog Treats</a></li>
                                                        <li><a href="homedogtoys.aspx">Dog Toys</a></li>
                                                        <li><a href="homeDogaccessories.aspx">Dog Accessories</a></li>
                                                        <li><a href="homedoggrooming.aspx">Dog Grooming & Health</a></li>
                                                        <li><a href="homedogcages.aspx">Dog Cages</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Dog sUPPLIES</a>
                                                    <ul>
                                                        <li><a href="homeDogBeds&Furniture.aspx">Dog Beds & Furniture</a></li>
                                                        <li><a href="homeDogCollars.aspx">Dog Collars, Harnesses & Leashes</a></li>
                                                        <li><a href="homeDogClothes.aspx">Dog Clothes & Apparels</a></li>
                                                        <li><a href="homeDogDiapers.aspx">Dog Diapers</a></li>
                                                        <li><a href="homeDogTraining.aspx.aspx">Dog Training</a></li>
                                                        <li><a href="homeDogCarriersandTravelProducts.aspx.aspx">Dog Carriers & Travel Products</a></li>
                                                        <li><a href="homeDogLitters.aspx">Dog Litter & Housebreaking</a></li>
                                                    </ul>
                                                </li>

                                            </ul>
                                        </li>
                                        <li class="dropdown-holder">
                                            <a href="#">CAT</a>
                                            <ul class="hodropdown">
                                                <li><a href="homeCatFood.aspx">Cat Food</a></li>
                                                <li><a href="homeCatTreats.aspx">Cat Treats</a></li>
                                                <li><a href="homeCatToys.aspx">Cat Toys</a></li>
                                                <li><a href="homeCatBeds&Furniture.aspx">Cat Beds & Furniture</a></li>
                                                <li><a href="homeCatLitters.aspx">Cat Litter Supplies</a></li>
                                                <li><a href="homeCatAccessories.aspx">Cat Accessories</a></li>
                                                <li><a href="homeCatGrooming.aspx">Cat Grooming</a></li>

                                            </ul>
                                        </li>
                                        <li class="dropdown-holder">
                                            <a href="#">FISH</a>
                                            <ul class="hodropdown">

                                                <li><a href="homeFishFood.aspx">Fish Food</a></li>

                                            </ul>
                                        </li>
                                        
                                        <li class="dropdown-holder">
                                            <a href="#">Other Pets</a>
                                            <ul class="hodropdown">

                                                <li><a href="homeOtherPets.aspx">Other Pets Food</a></li>

                                            </ul>
                                        </li>
                                        <li class="dropdown-holder">
                                            <a href="#"><i class="lnr lnr-user"></i>&nbsp My Account</a>
                                            <ul class="hodropdown">
                                                
                                                <li>
                                                    <a href="login.aspx">Sign in</a>
                                                </li>
                                                 <li>
                                                    <a href="register.aspx">Sign Up</a>
                                                </li>
                                            </ul>

                                        </li>

                                    </ul>
                                </nav>
                                <!--// Navigation -->

                            </div>
                            <div class="col-lg-2">
                                <div class="header-contactinfo">
                                    <i class="flaticon-support"></i>
                                    <span>Call Us Now:</span>
                                    <b>+91-9897490068</b>
                                </div>
                            </div>
                            <div class="col-12 d-block d-lg-none">
                                <div class="mobile-menu clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--// Header Bottom Area -->

            </header>
            <!--// Header -->
            <!-- Hero Area -->
            <div class="herobanner herobanner-2 slider-navigation slider-dots slider-dots-center">

                <!-- Herobanner Single -->
                <div class="herobanner-single">
                    <img src="images/hero/slider_bg1.jpg" alt="hero image" />
                    <div class="herobanner-content">
                        <div class="herobanner-box">
                            <h4>DOG</h4>
                        </div>
                        <div class="herobanner-box">
                            <h1>The Future Of <span>Pets</span> Online Market</h1>
                        </div>
                       
                        <div class="herobanner-box">
                            <a href="#" class="ho-button ho-button-white">
                                <i class="lnr lnr-cart"></i>
                                <span>Shop Now</span>
                            </a>
                        </div>
                    </div>
                    <span class="herobanner-progress"></span>
                </div>
                <!--// Herobanner Single -->

                <!-- Herobanner Single -->
                <div class="herobanner-single">
                    <img src="images/hero/slider_bg2.jpg" alt="hero image">
                    <div class="herobanner-content">
                        <div class="herobanner-box">
                            <h4>CAT</h4>
                        </div>
                        <div class="herobanner-box">
                            <h1>The Future Of <span>Pets</span> Online Market</h1>
                        </div>
                       
                        <div class="herobanner-box">
                            <a href="#" class="ho-button ho-button-white">
                                <i class="lnr lnr-cart"></i>
                                <span>Shop Now</span>
                            </a>
                        </div>
                    </div>
                    <span class="herobanner-progress"></span>
                </div>
                <!--// Herobanner Single -->

                <!-- Herobanner Single -->
                <div class="herobanner-single">
                    <img src="images/hero/slider_bg3.jpg" alt="hero image">
                    <div class="herobanner-content">
                        <div class="herobanner-box">
                            <h4>FISH</h4>
                        </div>
                        <div class="herobanner-box">
                           <h1>The Future Of <span>Pets</span> Online Market</h1>
                        </div>
                        
                        <div class="herobanner-box">
                            <a href="#" class="ho-button ho-button-white">
                                <i class="lnr lnr-cart"></i>
                                <span>Shop Now</span>
                            </a>
                        </div>
                    </div>
                    <span class="herobanner-progress"></span>
                </div>
                <!--// Herobanner Single -->

                <!-- Herobanner Single -->
                <div class="herobanner-single">
                    <img src="images/hero/slider_bg4.jpg" alt="hero image">
                    <div class="herobanner-content">
                        <div class="herobanner-box">
                            <h4>BIRDS</h4>
                        </div>
                        <div class="herobanner-box">
                            <h1>The Future Of <span>Pets</span> Online Market</h1>
                        </div>
                       
                        <div class="herobanner-box">
                            <a href="#" class="ho-button ho-button-white">
                                <i class="lnr lnr-cart"></i>
                                <span>Shop Now</span>
                            </a>
                        </div>
                    </div>
                    <span class="herobanner-progress"></span>
                </div>
                <!--// Herobanner Single -->
            </div>
            <!--// Hero Area -->
            <!-- Page Conttent -->
            <main class="page-content">
                <div class="ho-section deal-of-the-day-area bg-white pt-30">
                    <div class="container">
                        <div class="section-title" style="border-bottom:none">
                            <h3>DOGS</h3>
                            <div class="table-responsive-md">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" CssClass="table" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_OnItemCommand"  RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <div>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' TabIndex="4" Height="200px" Width="200px" />
                                                </asp:LinkButton>
                                            </div>
                                            <div>Product name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                            </div>
                                            <div>Price:
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                            </div>
                                            <div>Size:
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                            </div>
                                            <div>Colour:
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("color") %>'></asp:Label>
                                    </div>
                                    <div class="text-center ho-button ho-button-dark">
                                        <asp:LinkButton ID="LinkButton4" Text="View" style="color:#ffffff" runat="server" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
                                            </div>
                                       
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=35.237.174.166;Initial Catalog=Ecommerce;User ID=sa;Password=Maya@123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT TOP 4 * FROM [addproduct] WHERE ([category] = @category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="DOG" Name="category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        </div>    
                    </div>
                </div>
                <div class="ho-section deal-of-the-day-area bg-white pt-30">
                    <div class="container">
                        <div class="section-title" style="border-bottom:none">
                            <h3>CATS</h3>
                            <div class="table-responsive-md">
                            <asp:DataList ID="DataList2" runat="server" DataKeyField="id" CssClass="table" DataSourceID="SqlDataSource2" OnItemCommand="DataList2_OnItemCommand" RepeatColumns="4" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    
                                            <div>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="200px" Width="200px" />
                                                </asp:LinkButton>
                                            </div>
                                            <div>Product name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                            </div>
                                            <div>Price:
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                            </div>
                                            <div>Size:
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                            </div>
                                            <div>Colour:
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("color") %>'></asp:Label>
                                    </div>
                                    <div class="text-center ho-button ho-button-dark">
                                        <asp:LinkButton ID="LinkButton4" Text="View" runat="server" style="color:#ffffff" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
                                            </div>
                                        
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=35.237.174.166;Initial Catalog=Ecommerce;User ID=sa;Password=Maya@123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT TOP 4 * FROM [addproduct] WHERE ([category] = @category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="CAT" Name="category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                            </div>
                    </div>
                </div>

                <div class="ho-section deal-of-the-day-area bg-white pt-30">
                    <div class="container">
                        <div class="section-title" style="border-bottom:none">
                            <h3>FISH</h3>
                            <div class="table-responsive-md">
                            <asp:DataList ID="DataList3" runat="server" CssClass="table" DataKeyField="id" DataSourceID="SqlDataSource3" OnItemCommand="DataList3_OnItemCommand" RepeatColumns="4" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                            <div>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="200px" Width="200px" />
                                                </asp:LinkButton>
                                            </div>
                                        
                                            <div>Product name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                            </div>
                                            <div>Price:
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                            </div>
                                            <div>Size:
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                            </div>
                                            <div>Colour:
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("color") %>'></asp:Label>
                                    </div>
                                    <div class="text-center ho-button ho-button-dark">
                                        <asp:LinkButton ID="LinkButton4" Text="View" style="color:#ffffff" runat="server" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
                                            </div>
                                        
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=35.237.174.166;Initial Catalog=Ecommerce;User ID=sa;Password=Maya@123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT TOP 4 * FROM [addproduct] WHERE ([category] = @category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="FISH" Name="category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                            </div>
                    </div>
                </div>

                <div class="ho-section deal-of-the-day-area bg-white pt-30">
                    <div class="container">
                        <div class="section-title" style="border-bottom:none">
                            <h3>BIRD</h3>
                            <div class="table-responsive-md">
                            <asp:DataList ID="DataList4" runat="server" CssClass="table" DataKeyField="id" DataSourceID="SqlDataSource4" OnItemCommand="DataList4_OnItemCommand" RepeatColumns="4" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    
                                            <div>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="200px" Width="200px" />
                                                </asp:LinkButton>
                                            </div>
                                        
                                            <div>Product name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                            </div>
                                       
                                            <div>Price:
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                            </div>
                                        
                                            <div>Size:
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                            </div>
                                       
                                            <div>Colour:
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("color") %>'></asp:Label>
                                    </div>
                                    <div class="text-center ho-button ho-button-dark">
                                        <asp:LinkButton ID="LinkButton4" Text="View" style="color:#ffffff" runat="server" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
                                            </div>
                                       
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=35.237.174.166;Initial Catalog=Ecommerce;User ID=sa;Password=Maya@123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT TOP 4 * FROM [addproduct] WHERE ([category] = @category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="BIRD" Name="category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                            </div>
                    </div>
                </div>
            </main>
            <!--// Page Conttent -->

           

            <!-- Footer -->
            <footer class="footer bg-light">

                <!-- Footer Top Area -->
                <div class="footer-toparea">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-3 col-12">
                                <div class="footer-widget widget-info">
                                    <h5 class="footer-widget-title" style="color:#000000">Contact Info</h5>

                                    <ul>
                                        <li style="color: #ffffff"><i class="ion ion-ios-pin" style="color: #ffffff"></i>B-106, New Agra, Agra
                                        Pin Code 282005
                                        Uttar Pradesh India </li>
                                        <li style="color: #ffffff"><i class="ion ion-ios-call" style="color: #ffffff"></i>Call us: +91-9897490068</li>

                                        <li style="color: #ffffff"><i class="ion ion-ios-mail" style="color: #ffffff"></i>Email us: <a href="#" style="color: #ffffff">info@petsfriend.co.in</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-4">
                                <div class="footer-widget widget-links">
                                    <h5 class="footer-widget-title" style="color:#000000">Products</h5>
                                    <ul>
                                        
                                        <li><a href="#" style="color: #ffffff">New products</a></li>
                                        
                                        <li><a href="#" style="color: #ffffff">Contact us</a></li>
                                        
                                    </ul>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-4">
                                <div class="footer-widget widget-links">
                                    <h5 class="footer-widget-title" style="color:#000000">Our Company</h5>
                                    <ul>
                                        
                                        <li><a href="#" style="color: #ffffff">About us</a></li>
                                        <li><a href="#" style="color: #ffffff">Secure payment</a></li>

                                    </ul>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-4">
                                <div class="footer-widget widget-links">
                                    <h5 class="footer-widget-title" style="color:#000000">Your Account</h5>
                                    <ul>
                                        <li><a href="login.aspx" style="color: #ffffff">Login</a></li>
                                       <li><a href="register.aspx" style="color: #ffffff">Register</a></li>
                                       
                                        
                                    </ul>
                                </div>
                            </div>

                            <div class="col-lg-3 col-12">
                                <div class="footer-widget widget-customerservice">
                                    <div class="info">
                                        <h5 class="footer-widget-title">CUSTOMER SERVICE</h5>
                                        <h5>SEND AN EMAIL</h5>
                                        <h5>HOTLINE: : <a href="#">+91-9897490068</a></h5>

                                    </div>
                                    <div class="payment">
                                        <h6>SECURE PAYMENT VIA</h6>
                                        <img src="images/icons/payment.png" alt="footer payment">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--// Footer Top Area -->

                <!-- Footer Bottom -->
                <div class="footer-bottomarea">
                    <div class="container">
                        <div class="footer-copyright">
                            <p class="copyright">Copyright &copy; <% Response.Write(DateTime.Now.Year); %>  All Rights Reserved</p>
                        </div>
                    </div>
                </div>
                <!--// Footer Bottom -->

            </footer>
            <!--// Footer -->
        </div>
        <!--// Wrapper -->

        <!-- Js Files -->
        <script src="js/vendor/modernizr-3.6.0.min.js"></script>
        <script src="js/vendor/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
    </form>
</body>
</html>
