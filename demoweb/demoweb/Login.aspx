 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="custom.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="center-page">
                 <h3>Login Form</h3>
                 <hr />
                    <label class="col-xs-11">Username:</label>
                        <div class="col-xs-11">
                        <asp:TextBox ID="TxtUname" runat="server" Class="form-control" placeholder="Enter Your Username" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Username" ControlToValidate="TxtUname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
             
                    <label class="col-xs-11">Password:</label>
                        <div class="col-xs-11">
                        <asp:TextBox ID="txtPass" runat="server" Class="form-control" placeholder="Enter Your Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Password" ControlToValidate="TxtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     <div class="form-group">
                     <div class="col-md-2"></div>
                     <div class="col-md-6">
                        
                        <asp:Label ID="Label1" CssClass="control-label" runat="server" ></asp:Label>
                          
                     </div>
                     </div>    
                <div class="form-group">
                 <div class="col-md-2"></div>
                 <div class="col-md-6">
                    <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login&raquo;" OnClick="btnLogin_Click1" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">SignUp</asp:HyperLink>
                 </div>
                </div>       
          </div>
        </div>
    </form>
</body>
</html>
