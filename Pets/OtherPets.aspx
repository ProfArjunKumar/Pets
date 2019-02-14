<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="OtherPets.aspx.cs" Inherits="Pets.OtherPets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="my-account-area ptb-30">
        <div class="container">
            <div class="row">
                <!-- Register Form -->
                <div class="col-lg-12 mt-30 mt-lg-0">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_OnItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
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
                                    <td>Product name:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Price:
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Size:
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("size") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Colour:
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("color") %>'></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton4" Text="View" runat="server" CommandArgument='<%#Eval("id") %>'></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=35.237.174.166;Initial Catalog=Ecommerce;User ID=sa;Password=Maya@123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [addproduct] WHERE (([category] = @category) AND ([subcategory] = @subcategory))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="OTHER PETS" Name="category" Type="String" />
                            <asp:Parameter DefaultValue="Other Pets Food" Name="subcategory" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
