<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="usercart.aspx.cs" Inherits="Pets.usercart" %>

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
                <div class="col-lg-12 mt-30 mt-lg-0">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True"  OnRowDeleting="GridView1_OnRowDeleting">
                        <Columns>
                            <asp:BoundField DataField="S.no" HeaderText="S.no">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image runat="server" ID="imgg" ImageUrl='<%#Eval("image") %>' Height="40px" Width="35px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:BoundField HeaderText="Image" DataField="Image" />--%>
                            <asp:BoundField HeaderText="Product Name" DataField="productname" />
                            <asp:BoundField HeaderText="Price" DataField="price" />
                            <asp:BoundField HeaderText="Quantity" DataField="Quantity" />
                            <asp:BoundField HeaderText="Totalprice (Including Tax)" DataField="Totalprice" />
                            <asp:BoundField HeaderText="Size" DataField="size" />
                            <asp:BoundField HeaderText="Colour" DataField="color" />
                            <asp:CommandField DeleteText="Remove"   ShowDeleteButton="True" />
                        </Columns>
                        <HeaderStyle Height="50px" />
                    </asp:GridView>
                </div>
                <br />
                <asp:Label ID="lblmsg" Visible="false" runat="server"></asp:Label>
                <br />
                <asp:Button ID="Button2" runat="server" class="ho-button ho-button-sm mr-3" style="width:15%" Text="Continue Shopping" PostBackUrl="Home.aspx" />
                <asp:Button ID="Button3" runat="server" class="ho-button ho-button-sm mr-3" style="width:12%" Text="Check Out" OnClick="Button3_OnClick" />

            </div>
        </div>
    </div>
    </div>
</asp:Content>
