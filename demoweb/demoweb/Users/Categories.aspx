<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Users_Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 167px;
        }

        .auto-style3 {
            width: 100%;
            height: 396px;
            margin-bottom: 0;
        }

        .auto-style4 {
            text-align: center;
            height: 22px;
        }

        .Pic {
            background-image: url('../icons/Back.jpg ');
            background-repeat:no-repeat;
            height:100vh;
            background-size:cover;
        }
        .des {
                margin-top:20px;
                text-decoration:none;
                color:#b200ff;
             }
        
        .cus {
             font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
             font-size:30px;
            text-decoration:none;
        }
        .cus:hover{
            text-decoration:none;
            
        }
        .Tab:hover { background-color:mistyrose;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  Runat="Server">
    <div class="Pic" >
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" style="vertical-align: top">
            <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table class="auto-style1">
                        <div class="des">
                        <tr class="des"> 
                            <td class="center">
                            
                                <div class="Tab"><span><asp:LinkButton ID="LinkButton1" runat="server" CommandName="CategoryName" Text='<%# Eval("CategoryName") %>' class="cus" ForeColor="#CC33FF" ></asp:LinkButton></span></div>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("CategoryID") %>'  />
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("CategoryID") %>' Visible="false"  ></asp:Label>
                                
                            </td>
                        </tr>
                       
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
        <td>
            <div class="center">
            <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal"  OnItemCommand="DataList2_ItemCommand" RepeatColumns="5" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" >
                <ItemTemplate >
                    <table class="auto-style3">
                        <tr>
                            <td class="center">
                                <asp:Image ID="Image1" runat="server" Height="229px" ImageUrl='<%# Eval("ProductImg") %>' Width="208px" />
                                <br />
                                <asp:HiddenField ID="hdfProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductID") %>' Visible="false"></asp:Label>
                                <asp:HiddenField ID="hdfPrice" runat="server" Value='<%# Eval("ProductPrice") %>'/>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("ProductPrice") %>' Visible="false"></asp:Label>
                                <asp:HiddenField ID="HiddenField2" runat="server"  Value='<%# Eval("SizeID") %>' />
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("SizeID") %>' Visible="false"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="center">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="center">Price:<asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="center">Size:
                                <asp:Label ID="Label7" Text='<%# Eval("SizeName") %>' runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Cart" CssClass="btn btn-primary" >Add To Cart</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
            <asp:HiddenField ID="hdfCatID" runat="server" />
            <br />
            <br />
            <br />
        </td>
       
    </tr>
</table>
</div>

</asp:Content>

