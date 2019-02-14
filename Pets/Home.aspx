<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pets.products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{
            overflow: auto;
            color:#000000;
            border-bottom:none;
            
        }
        td{
            border-top:none;
            box-shadow: 0 0 10px rgba(128,128,128,1);
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" CssClass="table" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_OnItemCommand" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <div>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                                    <asp:Image ID="Image2" runat="server" CssClass="align-items-center" ImageUrl='<%# Eval("image") %>' TabIndex="4" Height="200px" Width="200px" />
                                                </asp:LinkButton>
                                    </div>
                                    <div>
                                            Product name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                    </div>
                                    <div>
                                            Price:
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                    </div>
                                    <div>
                                            Size:
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                    </div>
                                    <div>
                                            Colour:
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
                            <asp:DataList ID="DataList2" runat="server" DataKeyField="id" CssClass="table" DataSourceID="SqlDataSource2" OnItemCommand="DataList2_ItemCommand" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                   <div>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="200px" Width="200px" />
                                                </asp:LinkButton>
                                   </div>
                                    <div>
                                    Product name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                    </div>
                                    <div>
                                        Price:
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                    </div>    
                                    <div>
                                        Size:
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                    </div>    
                                    <div>
                                         Colour:
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("color") %>'></asp:Label>
                                      </div>
                                    <div class="ho-button ho-button-dark">
                                        <asp:LinkButton ID="LinkButton4" Text="View" style="color:#ffffff" runat="server" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
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
                            <asp:DataList ID="DataList3" runat="server" DataKeyField="id" CssClass="table" DataSourceID="SqlDataSource3" OnItemCommand="DataList3_ItemCommand" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <div>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="200px" Width="200px" />
                                                </asp:LinkButton>
                                    </div>
                                            <div>
                                                Product name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                            </div>
                                            <div>
                                                Price:
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                            </div>
                                            <div>
                                                Size:
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                            </div>
                                            <div>
                                                Colour:
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("color") %>'></asp:Label>
                                    </div>
                                    <div class="ho-button ho-button-dark">
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
                            <asp:DataList ID="DataList4" runat="server" DataKeyField="id" CssClass="table" DataSourceID="SqlDataSource4" OnItemCommand="DataList4_ItemCommand" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <div>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="200px" Width="200px" />
                                                </asp:LinkButton>
                                            </div>
                                        <div>
                                            Product name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                            </div>
                                            <div>
                                                Price:
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                            </div>
                                            <div>
                                                Size:
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                            </div>
                                            <div>
                                                Colour:
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("color") %>'></asp:Label>
                                    </div>
                                    <div class="ho-button ho-button-dark">
                                        <asp:LinkButton ID="LinkButton4" Text="View" style="color: #ffffff" runat="server" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
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

</asp:Content>
