<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="Users_UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center><img width="100px" src="Icons/images.png" /></center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center><h3>Profile</h3></center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Full Name:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtFname" runat="server" placeholder="Full Name"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Enter Full Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Contact Number:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtConNo" runat="server" placeholder="Contact Number"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConNo" Display="Dynamic" ErrorMessage="Enter Contact No" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Email Id:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtEId" runat="server" placeholder="Email Id" TextMode="Email"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEId" Display="Dynamic" ErrorMessage="Enter EmailId" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEId" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-4">
                                    <label>City:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtCity" runat="server" Text="Solapur" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Landmark:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtLandmark" runat="server" placeholder="Valid Landmark" ></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLandmark" Display="Dynamic" ErrorMessage="Enter Landmark" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Pincode:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtPincode" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPincode" Display="Dynamic" ErrorMessage="Enter Pincode" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Full Address:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtAddress" runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Enetr Full Address" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <center>
                                <div class="col">
                                </div></center>
                            </div>
                            
                            <br>
                            <div class="row">
                                <center>
                                   <asp:Button CssClass="btn btn-info" ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"   />
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br /></center>
                            </div>
                            </div>
                  </div>
                </div>
            </div>
                <div>
                    <div>
                        <asp:Button CssClass="Form-Control" ID="Button1" runat="server" Text="Logout" OnClick="btnLogout_Click" />
                    </div>
                </div>
        </div>
    </div>
</asp:Content>

