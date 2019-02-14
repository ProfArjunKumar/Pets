<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addedusers.aspx.cs" Inherits="Pets.addedusers" %>

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
                <div class="col-lg-6 mt-30 mt-lg-0">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                            <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" SortExpression="phonenumber" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqldatasource %>" SelectCommand="SELECT [id], [firstname], [lastname], [address], [city], [pincode], [gender], [phonenumber], [email] FROM [register]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
