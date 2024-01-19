<%-- 
    Document   : header
    Created on : Dec 18, 2023, 3:10:52 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.googleapis.com%22%3E/
                    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
                    <link href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+P+One&display=swap" rel="stylesheet">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
                    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
                    <script src="https://kit.fontawesome.com/11a38f9675.js" crossorigin="anonymous"></script>
                    <link href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@0,400;0,500;0,600;1,400;1,500;1,900&display=swap" rel="stylesheet">
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                    <link rel="stylesheet" href="includes/global.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
        <!-- LOGO -->
            <div class="headerLogo">
                <a href="index.jsp">
                    <img src="includes/images/logoBrand2.png" alt="logoBrand2">
                </a>
            </div>
        
        <!-- Navigation  -->
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#segmentProducts">Products</a></li>
                    <li><a href="#segmentAboutUs">About us</a></li>
                    <li><a href="#segmentAboutUs">Contact</a></li>
                    
                </ul>
            </nav>
            <% 
            if(auth!=null){%>
            <!--  Logout Button and Cart -->
            
            <div class="cart-container">
              <a href="cart.jsp">
                    <i class="fa-solid fa-cart-shopping cart">
                    <span class="cart-bubble">${cart_list.size()}</span>
                    </i>
              </a>
               
            </div>
            
            <div class="userName ">  
                <i class="fa-solid fa-user"></i>
                <span><%= auth.getFname()%></span>
                <span><%= auth.getLname()%></span>
                <div class="signIn">
                    <a href="log-out" >
                    <button>Log out</button>
                    </a>
                </div> 
            </div>
            
                <%}else{%>
                
            <!--  SignIn Button and Cart -->
            <div class="signIn">
                <a href="login.jsp" >
                    <button>Sign In</button>
                </a>
            </div>
            <!--  SignIn Button and Cart -->
            <div class="signUp">
                <a href="signup.jsp" >
                <button>Sign Up</button>
                </a>
            </div>
            <div></div>
                
                <%}
            %>
            
            


    </header>
    </body>
</html>
