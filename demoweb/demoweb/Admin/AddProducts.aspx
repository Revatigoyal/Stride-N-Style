<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="Admin_AddProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">
      <div class="form-horizontal">
            <h2>Add Products</h2>
            <hr />
        <div class="form-group">
            <asp:Label ID="lblProName" CssClass="col-md-2 control-label" runat="server" Text="Product Name"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtProName" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Upload Image"></asp:Label>
            <div class="col-md-3">
            <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
           </div>
        </div>
        <div class="form-group">
            <asp:Label ID="LblCategory" CssClass="col-md-2 control-label" runat="server" Text="Product Category"></asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="DdlCategory" runat="server"  DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lblSize" CssClass="col-md-2 control-label" runat="server" Text="Product Size"></asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="DdlSize"  runat="server" DataTextField="SizeName" DataValueField="SizeID"></asp:DropDownList>
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lblPrice" CssClass="col-md-2 control-label" runat="server" Text="Product Price"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtProductPrice" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
          <br>
          <div class="form-group">
              <div class="col-md-6">
                  <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Add Product" OnClick="btnAdd_Click"  />
                  <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
              </div>
           </div>
     </div>
  </div>
</asp:Content>

