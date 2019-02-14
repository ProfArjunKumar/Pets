<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="Pets.addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #FFE11B;
            text-align: left;
            padding: 8px;
            color: #000000;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }

        td > a {
            border: 1px solid red;
            background-color: red;
            border-radius: 5px;
            padding: 10px 10px;
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="my-account-area ptb-30">
        <div class="container">
            <div class="row">
                <!-- Register Form -->
                <div class="col-lg-6 mt-30 mt-lg-0">
                    <div class="login-form-wrapper">
                        <div class="ho-form ho-form-boxed form" style="border: 1px solid #FFE11B">
                            <div class="ho-form-inner">
                                <div class="single-input">
                                    <label for="register-form-name">Category Name</label>
                                    <asp:DropDownList ID="DropDownList1" AutoPostBack="True" OnTextChanged="DropDownList1_OnTextChanged" Style="border-color: #0B88EE" runat="server"></asp:DropDownList>
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">Sub Categories Name</label>
                                    <asp:DropDownList ID="DropDownList2" Style="border-color: #0B88EE" runat="server"></asp:DropDownList>
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">Product Name</label>
                                    <asp:TextBox runat="server" ID="txtproductname" Style="border-color: #0B88EE" placeholder="Enter Product name" />
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">Description</label>
                                    <asp:TextBox runat="server" ID="txtdescription" Style="border-color: #0B88EE" placeholder="Enter description" TextMode="MultiLine" />
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">Price</label>
                                    <asp:TextBox runat="server" ID="txtprice" Style="border-color: #0B88EE" placeholder="Enter price" />
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">Quantity</label>
                                    <asp:TextBox runat="server" ID="txtQuantity" Style="border-color: #0B88EE" placeholder="Enter quantity" />
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">Image</label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">Size</label>
                                    <asp:TextBox runat="server" ID="txtsize" Style="border-color: #0B88EE" placeholder="Enter size" />
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">Color</label>
                                    <asp:TextBox runat="server" ID="txtcolor" Style="border-color: #0B88EE" placeholder="Enter color" />
                                </div>
                                <div class="single-input">
                                    <asp:Button Text="Add" CssClass="ho-button" runat="server" Style="border-radius: 8px; width: 21%; background-color: #0B88EE; color: #ffffff" OnClick="OnClick" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--// Register Form -->
            </div>
        </div>
    </div>
    <br />
    <br />
    <div class="my-account-area ptb-30">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 mt-30 mt-lg-0">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                            <asp:BoundField DataField="subcategory" HeaderText="subcategory" SortExpression="subcategory" />
                            <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                            <asp:TemplateField HeaderText="image" SortExpression="image">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("image") %>' Height="50px" Width="50px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqldatasource %>" SelectCommand="SELECT * FROM [addproduct]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
