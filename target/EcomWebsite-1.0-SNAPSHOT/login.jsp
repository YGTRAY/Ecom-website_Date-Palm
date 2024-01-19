<%-- 
    Document   : login
    Created on : Dec 18, 2023, 3:05:18 AM
    Author     : hp
--%>

<%@page import=" com.mycompany.ecomwebsite.connection.DbCon"%>
<%@page import=" com.mycompany.ecomwebsite.model.*"%>
<%@page import=" com.mycompany.ecomwebsite.model.dao.*"%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
        User auth =(User)request.getSession().getAttribute("auth");
        if(auth!=null){
        request.setAttribute("auth",auth);
        response.sendRedirect("index.jsp");
    }
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list != null){
        
        request.setAttribute("cart_list",cart_list);
        
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <title>JSP Page</title>
        <link rel="stylesheet" href="includes/login.css">
        
        
        
        <%@include file= "includes/header.jsp" %>
        
       
        
    </head>
    <body>
        
        <section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                    <img src="includes/images/logoBrand2.png"
                    style="width: 250px;" alt="logo">
                </div>

                <form action="user-login" method="post">
                    <p>Please login to your account</p>

                <div class="form-group">
                 <span id ="checkLogin"></span>
                <input type="email" name="login-email" class="form-control" placeholder="Enter email" required>
                </div>
                <div class="form-group">
                    <input type="password" name="login-password" class="form-control" placeholder="Password" required>
                </div>


                  <div class="text-center pt-1 mb-5 pb-1">
                    <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">Log
                      in</button>
                  </div>
                  <div class="d-flex align-items-center justify-content-center pb-4">
                      <p class="mb-0 me-2">Don't have an account?</p>
                    <a href = "signup.jsp "
                       <button type="submit"  class="btn btn-outline-danger">Create new account</button></a>
                  </div>

                </form>

              </div>
            </div>
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">Bienvenue Chez DATE STORE</h4>
                <p class="small mb-0">Votre Destination Ultime Pour Des Expériences Gustatives Uniques À Travers Le Monde Des Dattes De Qualité Supérieure. Fondée Avec Amour Et Passion Par Des Connaisseurs De Dates, DATES Est Née De La Volonté De Partager Le Délice Incomparable Des Dates De Première Qualité Avec Le Monde Entier. Notre Voyage A Commencé Par Une Fascination Profonde Pour La Diversité Des Saveurs</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
        
    <%@include file= "../includes/footer.jsp" %>
    </body>
</html>
