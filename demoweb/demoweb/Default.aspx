<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial scale=1" />
    <meta http-equiv="X-UA-compatible"content="IE-edge" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    
    <link href="custom.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap" rel="stylesheet">
</head>
<body onload="slider()">
    <form id="form1" runat="server">
        <div class="Navigation">
       <div class="header">
       <div class="navbar navbar-expand-md navbar-lg bg-light ">
              <div class="collapse navbar-collapse" ">
                    <a class="navbar-brand" href="#">
                        <span> <img src="Icons/high-heel.png" alt="GoyalShop" height="50" /></span><b class="des"> Goyal&Sons</b>
                    </a>
                  <div class="collapse navbar-collapse d-flex justify-content-end">
                    <a class="nav-link" href="#"><i class="fa-solid fa-bag-shopping" style="font-size: 25px;  color: black"></i></a>
                   <a class="nav-link" href="Register.aspx"><i class="fa-solid fa-user" style="font-size: 25px; color: black"></i></a>
                  </div>
                 </div>
             </div>
        </div>
        <div class="navbar navbar-expand-md navbar-dark  bg-dark">
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav " id="check-class">
                    <li class="nav-item"><a class="nav-link" href="Home.aspx">Home</a></li>
                    <li class="nav-item dropdown">
                        <a href="#" class=" nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Product<b class="caret"></b></a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropDown">
                            <li class="dropdown-header">Men</li>
                            <li class="dropdown-item">Flipflops</li>
                            <li class="dropdown-item">Slippers</li>
                            <li class="dropdown-item">Shoes</li>
                            <li class="dropdown-item">Sandals</li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li class="dropdown-header">Women</li>
                            <li class="dropdown-item">Slippers</li>
                            <li class="dropdown-item">shoes</li>
                            <li class="dropdown-item">Sandals</li>
                        </ul>
                    </li>
                    <li class="nav-item "><a class="nav-link" href="Login.aspx">Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="SignUp.aspx">SignUp</a></li>

                </ul>

                <a href="#" class="mobicon" onclick="slideshow()"><i class="fa-solid fa-bars" style="font-size: 25px; color: white"></i></a>
            </div>
            <div class="collapse navbar-collapse d-flex justify-content-end">
                <ul class="navbar-nav ">
                    <li><a style="background-color:deeppink;border-radius:5px" class="nav-link" href="#"><i class="fa-solid fa-search" style="font-size: 15px; color:white"></i></a></li>
                    <li><form class="form-inline my-2 my-md-0">
                        <asp:TextBox ID="TextBox2" CssClass="form-control" Text="Search" TextMode="Search" runat="server"></asp:TextBox>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
        </div>
        <div class="banner">
            <div class="slider">
                <img src="icons/5057337.jpg" id="slideImg" />
            </div>
            <div class="overlay">
                <div class="cuboid">
                    <h1>Sole For Every Soul!</h1>
                    <h3>The higher the better.It's more about an attitude.High heels empower women in a way.</h3>
                    <div >
                       <asp:Button class="button" ID="Button1" runat="server" Text="Shop Now" />
                    </div>
                </div>
            </div>
        </div>
        <!--Categories Card-->
        <h2 class="title">Categories</h2>
        <div class="Categories">
            
            <div class="cate1">
                <div class="gender">
                    <img src="icons/men.jfif"/>
                    <div class="specific">
                    <h2>Men</h2>  
                    </div>
                </div>
                 <div class="gender">
                    <img src="icons/women.jfif"/>
                    <div class="specific">
                    <h2>Women</h2>  
                    </div>         
                </div>
            </div>
        </div >
        <!--Categories Card ends here -->

         <!--Featured small-container-->
  <div class="small-container" >
             <h2 class="title">Featured Products</h2>
      <div class="row">
                 <div class="col-4">
                   <img src="../icons/shop1.jfif"/>
                     <h4>Red Printed Shoes</h4>
                     <p>255Rs</p>
                     <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Add To Cart" />
                 </div>
                 <div class="col-4">
                     <img src="icons/shop3.jfif"/>
                     <h4>Red Printed Shoes</h4>
                     <p>255Rs</p>
                      <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" Text="Add To Cart" />
                 </div>
                <div class="col-4">
                     <img src="../icons/shop4.jfif"/>
                     <h4>Red Printed Shoes</h4>
                     <p>255Rs</p>
                     <asp:Button ID="Button4" CssClass="btn btn-primary" runat="server" Text="Add To Cart" />
                 </div>
          </div>
      </div>
        <!--Pricing card ends here-->

          <!--footer content starts here-->
           <footer>
              <div class="main-content"> 
                  <div class="left box">
                      <h2>About Us</h2>
                      <div class="content">
                          <p></p>
                          <div class="social">
                              <a href="#"><span class="fab fa-facebook-f"></span></a>
                              <a href="#"><span class="fab fa-instagram"></span></a>
                              <a href="#"><span class="fab fa-twitter"></span></a>

                          </div>
                      </div>
                  </div>
                  <div class="Middle box">
                      <h2>Address</h2>
                      <div class="content">
                          <div class="place">
                              <span class="fas fa-map-marker-alt"></span>
                              <span class="text">24, Navi Peth ,Solapur.</span>
                          </div>
                          <div class="phone">
                              <span class="fas fa-phone-alt"></span>
                              <span class="text">+91-9850983072</span>
                          </div>
                          <div class="email">
                              <span class="fas fa-envelope"></span>
                              <span class="text">goyalyb@gmail.com</span>
                          </div>
                      </div>
                 </div>
                 <div class="right box">
                     <h2>Contact Us</h2>
                     <div class="content">
                         <form action="#">
                             <div class="email">
                                 <div class="text">Email *</div>
                                 <asp:TextBox class="des1" ID="TextBox1" TextMode="Email" runat="server" Width="193px"></asp:TextBox>
                             </div>
                             <div class="msg">
                                 <div class="text">Message *</div>
                                <asp:TextBox class="des2" ID="TextBox3" runat="server" Width="193px" TextMode="MultiLine"  ></asp:TextBox>
                             </div>
                             <div class="btn">
                                 <asp:Button class="btndes" ID="btnSend" Width="193px" runat="server" Text="Send"/>
                             </div>
                         </form>
                     </div>
                 </div>
             </div>      
        </footer>
        <!--footer content ends-->
        <script>
            var slideImg = document.getElementById("slideImg");
            var image = new Array(
                "icons/3940545.jpg" ,
                "icons/contactimg.jpg.jpg",
                "icons/1252142.jpg",
                "icons/5057337.jpg",
                "icons/2229236.jpg"
            );
            var len = image.length;
            var i = 0;
            function slider(){
                if (i > len - 1) {
                    i = 0;
                }
                slideImg.src = image[i];
                i++;
                setTimeout('slider()',3000);
            }
      </script>
    </form>
</body>
</html>
