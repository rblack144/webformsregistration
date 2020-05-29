<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Complete.aspx.cs" Inherits="WebFormsRegistration.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="py-3"></div>
    <div class="py-2 text-center" style="background-color: #2988b5;">
        <h4 class="m-0 text-light font-weight-normal">COMPLETE</h4>
    </div>
    <div class="py-3"></div>
    <div class="d-flex flex-column justify-content-center mx-5 px-5">
        <div class="mx-5 px-5">
            <div class="d-flex flex-row mx-4">
                <span class="badge text-light p-2" style="background-color: #1b5875;">1</span>
                <div class="d-inline-flex flex-fill my-auto" style="height: 5px; background-color: #1b5875;"></div>
                <span class="badge text-light p-2" style="background-color: #1b5875;">2</span>
                <div class="d-inline-flex flex-fill my-auto" style="height: 5px;  background-color: #1b5875;"></div>
                <span class="badge text-light p-2" style="background-color: #1b5875;">3</span>
            </div>
            <div class="d-flex flex-row justify-content-between">
                <p class="small text-center ml-3" style="color: #1b5875;">SELECT</p>
                <p class="small text-center" style="color: #1b5875;">SUBMIT INFO</p>
                <p class="small text-center" style="color: #1b5875;">COMPLETE</p>
            </div>
        </div>
        <div class="py-3"></div>
        <div class="border rounded border-secondary p-4 bg-light">
            <h3 style="color: #555555;">Thank you for registering!</h3>
            <br />
            <p style="color: #555555;">You should receive a confirmation email momentarily containing additional details.</p>
        </div>
    </div>
</asp:Content>
