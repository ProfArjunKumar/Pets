<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="userorder.aspx.cs" Inherits="Pets.userorder" %>

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
                <div class="col-lg-6 mt-30 mt-lg-0">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="ProName" HeaderText="ProName" SortExpression="ProName" />
                            <asp:BoundField DataField="Qnty" HeaderText="Qnty" SortExpression="Qnty" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="TPrice" HeaderText="TPrice" SortExpression="TPrice" />
                            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqldatasource %>" SelectCommand="SELECT * FROM [Orders] WHERE ([email] = @email)">
                        <SelectParameters>
                            <asp:SessionParameter Name="email" SessionField="user" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
