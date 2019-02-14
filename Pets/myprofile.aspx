<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="Pets.myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Conttent -->
    <main class="page-content">

        <!-- My Account Page -->
        <div class="my-account-area ptb-30">
            <div class="container">
                <div class="row">

                    <!-- Register Form -->
                    <div class="col-lg-6 mt-30 mt-lg-0">
                        <div class="login-form-wrapper">
                            <div class="ho-form ho-form-boxed form" style="border: 1px solid #FFE11B">
                                <div class="ho-form-inner">
                                    <div class="single-input">
                                        <label for="register-form-name">First Name</label>
                                        <asp:TextBox runat="server" ID="txtfirstname" Style="border-color: #0B88EE" placeholder="Enter First name" />
                                    </div>
                                    <div class="single-input">
                                        <label for="register-form-email">Last Name</label>
                                        <asp:TextBox runat="server" ID="txtlastname" Style="border-color: #0B88EE" placeholder="Enter Last Name" />
                                    </div>
                                    <div class="single-input">
                                        <label for="register-form-password">Address</label>
                                        <asp:TextBox runat="server" ID="txtaddress" Style="border-color: #0B88EE" placeholder="Enter Address" TextMode="MultiLine" />
                                    </div>
                                    <div class="single-input">
                                        <label for="register-form-password">City</label>
                                        <asp:TextBox runat="server" ID="txtcity" Style="border-color: #0B88EE" placeholder="Enter City" />
                                    </div>
                                    <div class="single-input">
                                        <label for="register-form-password">Pincode</label>
                                        <asp:TextBox runat="server" ID="txtpincode" Style="border-color: #0B88EE" placeholder="Enter Pincode" />
                                    </div>
                                    <div class="single-input">
                                        <label for="register-form-password">Gender</label>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Enabled="False">
                                            <asp:ListItem>male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="single-input">
                                        <label for="register-form-password">Phone</label>
                                        <asp:TextBox runat="server" ID="txtphone" Style="border-color: #0B88EE" placeholder="Enter Phone" />
                                    </div>
                                    <div class="single-input">
                                        <label for="register-form-password">Email</label>
                                        <asp:TextBox runat="server" ID="txtemail" ReadOnly="True" Style="border-color: #0B88EE" placeholder="Enter Email" />
                                    </div>
                                    <div class="single-input">
                                        <asp:Button Text="Update" CssClass="ho-button" runat="server" Style="border-radius: 8px; width: 21%; background-color: #0B88EE; color: #ffffff" OnClick="OnClick" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--// Register Form -->
                </div>
            </div>
        </div>
        <!--// My Account Page -->
    </main>
    <!--// Page Conttent -->
</asp:Content>
