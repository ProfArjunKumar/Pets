<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="Pets.forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Conttent -->
    <main class="page-content">
        <!-- My Account Page -->
        <div class="my-account-area ptb-30">
            <div class="container">
                <div class="row">

                    <!-- Login Form -->
                    <div class="col-lg-6">
                        <div class="login-form-wrapper">
                            <div class="ho-form ho-form-boxed form" style="border: 1px solid #FFE11B">
                                <div class="ho-form-inner">
                                    <div class="single-input">
                                        <label for="login-form-email">Email address *</label>
                                        <asp:TextBox runat="server" ID="txtemail" Style="border-color: #0B88EE" />
                                    </div>
                                    <div class="single-input">
                                        <asp:Button Text="Submit" ID="BtnLogin" CssClass="ho-button ho-button-dark mr-3" Style="border-radius: 8px; width: 21%; background-color: #0B88EE; color: #ffffff" runat="server" OnClick="BtnLogin_OnClick" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--// Login Form -->
                </div>
            </div>
        </div>
        <!--// My Account Page -->
    </main>
    <!--// Page Conttent -->
</asp:Content>
