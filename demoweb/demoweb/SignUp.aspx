<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up page</title>
     <link href="custom.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="center-page">
                <h2>Sign Up</h2>
                 <label class="col-xs-11">Username:</label>
                        <div class="col-xs-11">
                        <asp:TextBox ID="TxtUname" runat="server" Class="form-control" placeholder="Enter Your Name" ></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName" ControlToValidate="TxtUname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>

                 <label class="col-xs-11">Password:</label>
                        <div class="col-xs-11">
                        <asp:TextBox ID="TxtPass" runat="server" Class="form-control" placeholder="Enter Your Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TxtPass" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        </div>
                 <label class="col-xs-11">Confirm Password:</label>
                        <div class="col-xs-11">
                        <asp:TextBox ID="TxtconPass" runat="server" Class="form-control" placeholder="Enter Your Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPass" ControlToValidate="TxtconPass" Display="Dynamic" ErrorMessage="Password mismatched" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>

                        </div>
                 <label class="col-xs-11">Enter your Full Name:</label>
                        <div class="col-xs-11">
                        <asp:TextBox ID="TxtFname" runat="server" Class="form-control" placeholder="Enter Your Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="TxtFname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        </div>
                 <label class="col-xs-11">Security Question:</label>
                        <div class="col-xs-11">
                        <asp:TextBox ID="txtSecQue" runat="server" Class="form-control" placeholder="Enter Your Security Question"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Email id" ControlToValidate="txtSecQue" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                           
                        </div>
                      
                <label class="col-xs-11">Security Answer:</label>
                        <div class="col-xs-11">
                        <asp:TextBox ID="txtSecAns" runat="server" Class="form-control" placeholder="Enter Your Security Answer"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Email id" ControlToValidate="txtSecAns" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                           
                        </div>
                   <br />
             
                 <div class="col-xs-11">
                        <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="SignUp" OnClick="txtsignup_Click1"  />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                  </div>
                 <div class="col-xs-11">
                     <asp:Label ID="Label1" runat="server" ></asp:Label>
                  </div>
             </div>
        </div>
    </form>
</body>
</html>
