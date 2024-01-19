<%-- 
    Document   : index
    Created on : Dec 18, 2023, 3:03:28 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" com.mycompany.ecomwebsite.connection.DbCon"%>
<%@page import=" com.mycompany.ecomwebsite.model.*"%>
<%@page import=" com.mycompany.ecomwebsite.model.dao.*"%>

<%@page import="java.util.*"%>
<% 
   User auth =(User)request.getSession().getAttribute("auth");
   if(auth!=null){
   request.setAttribute("auth",auth);
    }
    ProductDao pd  = new ProductDao(DbCon.getConnection());
    List<Product> dates = pd.getAllProducts();
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list != null){
        
        request.setAttribute("cart_list",cart_list);
        
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page index</title>
        
        
        <%@include file= "includes/header.jsp" %>
    </head>
    <body>
        
        <main>
                        <section class="heroSection">
                            <div class="heroData heroGrid">
                                <div class="heroGridItem1">
                                    <h1>Discover The Beauty Of <strong>Fruit</strong> </h1>
                                    <p> MOROCCAN date fruit</p>
                                    <img  class=" dateTreeHero" src="includes/images//pngegg (2).png  " >
                                    <a href="#segmentProducts">
                                        <button class="btn-Hero" type="button" href="#segmentProducts" > Discover !</button></a>
                                </div>
                                <div class="heroGridItem2">
                                    <img class="frtDate_image" src="includes/images/bowLLLLLLLLLLLLLpng.png" alt="">
                                </div>
                            </div>
                        </section>
                <!-- #region  Products Section-->
                <h2 class="productsHeading " id="segmentProducts" >Products</h2>
                <section class="productSection productsGrid productsContainer" >
                            <% if(!dates.isEmpty()){
                        for(Product p : dates){ %>

                           <article class="singleProduct product">

                        <img class="product-img"  src="Product-Images/<%= p.getImage()%>" alt="" style = "width: 300px">

                        <div class="productInfo">
                            <h2><%= p.getName() %></h2>
                            <p class="price">Price : <%= p.getPrice()%> MAD</p>

                             <%if(auth==null){%> 
                             <a href="login.jsp">
                             <button class="card-btn" type="submit" >Add to Wishlist</button></a> 
                             <% }else{%>
                             <a href="add-to-cart?id=<%= p.getId()%>">
                             <button class="card-btn" type="submit" >Add to Wishlist</button></a> 
                             
                             <% }%> 


                        </div>
                    </article>
                         <%}
                        }

                        %>
                </section>
                <!-- #endregion Product Section    --> 
        </main>
        <%@include file= "../includes/footer.jsp" %>
    </body>
</html>
