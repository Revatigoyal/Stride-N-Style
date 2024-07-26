<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="AddtoCart.aspx.cs" Inherits="Users_AddtoCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    /* .Pic {
            background-image: url('../icons/Back.jpg ');
            background-repeat:no-repeat;
            height:100vh;
            background-size:cover;
        }*/
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
    <div class="row-mt-3" >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" OnRowCommand="GridView1_RowCommand" >
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:TemplateField HeaderText="ProductImg" SortExpression="ProductImg">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductImg") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="244px" ImageUrl='<%# Eval("ProductImg") %>' Width="217px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SizeName" HeaderText="SizeName" SortExpression="SizeName"/>
            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="Quantity" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" ReadOnly="True" SortExpression="Amount" />
            <asp:ButtonField CommandName="del"  Text="Remove" ControlStyle-CssClass="btn btn-danger btn-sm" />
        </Columns>
    </asp:GridView>
    <br /><br />
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    <br><br>
    <h3>
        Total Amount:<asp:Label ID="lblTotalAmount" runat="server" Text="Label"></asp:Label>
    </h3>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="btnComplete"  CssClass="btn btn-success" href="CompleteOrder.aspx" runat="server" OnClick="btnComplete_Click" Text="Place Order" />
    </p>
    </div>
   </div>
</asp:Content>

