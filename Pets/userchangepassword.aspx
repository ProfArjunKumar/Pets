<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="userchangepassword.aspx.cs" Inherits="Pets.userchangepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <label for="register-form-name">Old Password</label>
                                    <asp:TextBox runat="server" ID="txtoldpassword" Style="border-color: #0B88EE" placeholder="Enter Category" TextMode="Password" />
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">New Password</label>
                                    <asp:TextBox runat="server" ID="txtnewpassword" Style="border-color: #0B88EE" placeholder="Enter Category" TextMode="Password" />
                                </div>
                                <div class="single-input">
                                    <label for="register-form-name">Confirm password</label>
                                    <asp:TextBox runat="server" ID="txtconfirmpassword" Style="border-color: #0B88EE" placeholder="Enter Category" TextMode="Password" />
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
</asp:Content>
