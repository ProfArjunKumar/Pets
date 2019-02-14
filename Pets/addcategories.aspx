<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addcategories.aspx.cs" Inherits="Pets.addcategories" %>

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
td > a{
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
                                    <asp:TextBox runat="server" ID="txtcategory" Style="border-color: #0B88EE" placeholder="Enter Category" />
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="categories" HeaderText="categories" SortExpression="categories" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqldatasource %>" SelectCommand="SELECT * FROM [addcategories]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
