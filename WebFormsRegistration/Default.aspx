<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsRegistration._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="py-3"></div>
    <div class="py-2 text-center" style="background-color: #2988b5;">
        <h4 class="m-0 text-light font-weight-normal">LOGIN</h4>
    </div>
    <div class="py-3"></div>
    <div class="d-flex flex-row justify-content-center">
        <div class="border rounded border-secondary p-4 bg-light">
            <p>Please enter the case sensitive password from your official invitation.</p>
            <div class="form-group">
                <div>
                    <asp:Label Font-Bold="true" runat="server">Password:</asp:Label>                    
                </div>
                <asp:TextBox ID="txtPassword" CssClass="form-control mw-100" TextMode="Password" BorderColor="#dedede" runat="server"></asp:TextBox>
            </div>
            <div class="text-right">
                <asp:Button ID="btnLogin" OnClick="btnLogin_Click" BackColor="#1b5875" CssClass="btn text-light" Text="Login" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
