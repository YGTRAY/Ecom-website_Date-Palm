<%-- 
    Document   : signup
    Created on : Dec 18, 2023, 6:01:57 AM
    Author     : hp
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" com.mycompany.ecomwebsite.model.*"%>
<% 
        User auth =(User)request.getSession().getAttribute("auth");
        if(auth!=null){
        request.setAttribute("auth",auth);
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
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

                <form action="signup-user" method="post">
                    <p><b>Sign Up :</b></p>

                  
			<div class="form-group">
                            <input type="text" name="register-fname" class="form-control" placeholder="Enter your First name" required>
			</div>
                      
                        <div class="form-group">
                            <input type="text" name="register-lname" class="form-control" placeholder="Enter your Last name" required>
			</div>
                      
                        <div class="form-group">
			<input type="email" name="register-email" class="form-control" placeholder="Enter email" required>
			</div>
                      
                        <div class="form-group">
			<input type="password" name="register-password" class="form-control" placeholder="Password" required>
			</div>
					

                  <div class="text-center pt-1 mb-5 pb-1">
                    <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">Register</button>
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
