<%@page import=" com.mycompany.ecomwebsite.model.*"%>
<%@page import=" com.mycompany.ecomwebsite.model.dao.*"%>
<%@page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" com.mycompany.ecomwebsite.connection.DbCon"%>
<% 
  User auth = (User) request.getSession().getAttribute("auth");
	List<Order> orders = null;
	if (auth != null) {
	    request.setAttribute("auth", auth);
	    orders = new OrderDao(DbCon.getConnection()).userOrders(auth.getId());
	}else{
		//response.sendRedirect("login.jsp");
	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}	
%>

<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        
         <%@include file ="includes/header.jsp" %>
    </head>
    <body>
     <div class="container">
		<div class="card-header my-3">All Orders</div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Name</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
			
			<%
			if(orders != null){
				for(Order o:orders){%>
					<tr>
						<td><%=o.getDate() %></td>
						<td><%=o.getName() %></td>
						<td><%=o.getQunatity() %></td>
						<td><%=o.getPrice() %></td>
						<td><a class="btn btn-sm btn-danger" href="cancel-order?id=<%=o.getOrderId()%>">Cancel Order</a></td>
					</tr>
				<%}
			}
			%>
			
			</tbody>
		</table>
	</div>   
     <%@include file ="includes/footer.jsp" %>   
    </body>
</html>