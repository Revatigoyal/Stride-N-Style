<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Users_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
         .Pic {
            background-image: url('../icons/Back.jpg ');
            background-repeat:no-repeat;
            height:100vh;
            background-size:cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="201px" ImageUrl='<%# Eval("ProductPath") %>' Width="201px" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Enabled='<%# Eval("ProductName") %>' Text="Label"></asp:Label>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
    </table>

</asp:Content>

