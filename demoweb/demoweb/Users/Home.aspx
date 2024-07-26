<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Users_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 677px;
            position: relative;
            overflow: hidden;
            left: 0px;
            top: 0px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">
            <div class="slider">
                <img src="icons/5057337.jpg" id="slideImg" />
            </div>
            <div class="overlay">
                <div class="cuboid">
                    <h1>Sole For Every Soul!</h1>
                    <h3>The higher the better.It's more about an attitude.High heels empower women in a way.</h3>
                    <div >
                     <asp:Button class="button" href="Categories.aspx"  ID="Button1" runat="server" Text="Shop Now" OnClick="Button1_Click"/>
                    </div>
                </div>
            </div>
        </div>
       
</asp:Content>

