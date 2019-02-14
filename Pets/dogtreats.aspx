<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="dogtreats.aspx.cs" Inherits="Pets.dogtreats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{
            overflow: auto;
            color:#000000;
            }
        td{
            
            box-shadow: 0 0 10px rgba(128,128,128,1);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="my-account-area ptb-30">
        <div class="container">
            <div class="row">
                <!-- Register Form -->
                <div class="col-lg-12 mt-30 mt-lg-0">
                    <div class="table-responsive-md">
                    <asp:DataList ID="DataList1" runat="server" CssClass="table" DataKeyField="id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_OnItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
                        <ItemTemplate>
                           
                                    <div>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>'>
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="200px" Width="250px" />
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
                                        <asp:LinkButton ID="LinkButton4" style="color:#ffffff" Text="View" runat="server" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
                                    </div>
                                
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=35.237.174.166;Initial Catalog=Ecommerce;User ID=sa;Password=Maya@123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [addproduct] WHERE (([category] = @category) AND ([subcategory] = @subcategory))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="DOG" Name="category" Type="String" />
                            <asp:Parameter DefaultValue="Dog Treats" Name="subcategory" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
                </div>
        </div>
    </div>
</asp:Content>
