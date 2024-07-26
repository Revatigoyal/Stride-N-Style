<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Size.aspx.cs" Inherits="Admin_Size" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:HiddenField ID="hdfID" runat="server" />
  <div class="row">
     <div class="col-md-6">
         <div class="card mt-3 ">
              <div class="card-header">
                  Product Size
              </div>
              <br>
              <div class="card-body">
                  <div class="form-group">
                      <label > Enter Sizes :</label>
                      <asp:TextBox ID="txtSizeName" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtSizeName" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </div>
                  <br>
                  <div class="form-group">
                      <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                      <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-info" Enabled="false" OnClick="btnUpdate_Click" />
                      <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-warning" CausesValidation="false" OnClick="btnClear_Click" />
                      <asp:Label ID="lblmsg" runat="server"></asp:Label>
                  </div>
              </div>
         </div>
    </div>
 </div>
    <br><br>
<div class="row-mt-3">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" OnRowCommand="GridView1_RowCommand" >
        <Columns>
            <asp:BoundField DataField="SizeID" HeaderText="ID" />
            <asp:BoundField DataField="SizeName" HeaderText="Size Name" />
            <asp:ButtonField CommandName="Ed" Text="Edit" >
            <ControlStyle CssClass="btn btn-info btn-sm" />
            </asp:ButtonField>
            <asp:ButtonField CommandName="Del" Text="Delete" >
            <ControlStyle CssClass="btn btn-danger btn-sm" />
            </asp:ButtonField>
        </Columns>
    </asp:GridView>
</div>
</asp:Content>

