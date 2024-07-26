<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="CompleteOrder.aspx.cs" Inherits="Users_CompleteOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .Pic {
            background-image: url('../icons/Back.jpg');
            background-repeat:no-repeat;
            height:100vh;
            background-size:cover;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Pic" >
        <br><br><br>
    <div class="container" >
      <div class="form-horizontal">
            <h2>Order Details</h2>
            <hr />
        <div class="form-group">
            <asp:Label ID="CustName" CssClass="col-md-2 control-label" runat="server" Text="Customer Name"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtCustName" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="txtCustName" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="DelAdd" CssClass="col-md-2 control-label" runat="server" Text="Delivery Address"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtDelAdd" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Address" ControlToValidate="txtDelAdd" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
        </div>
           <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Pin Code"></asp:Label>
               <div class="col-md-3">
                    <asp:TextBox ID="txtPinCode" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtPinCode"></asp:RequiredFieldValidator>
               </div>
        </div>
        <div class="form-group">
            <asp:Label ID="ContactNo" CssClass="col-md-2 control-label" runat="server" Text="Contact No"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtConNo" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Contact No" ControlToValidate="txtConNo" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
        </div>
          <br />
       </div>
        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <div CssClass="table">
        </div>
    </div>
    </div>

</asp:Content>

