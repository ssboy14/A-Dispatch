<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.amro.model.DTO.Posts,java.util.Iterator,com.amro.model.DAO.LoadDAO,
    com.amro.model.DTO.Load,com.amro.model.DAO.PostDAO,com.amro.model.DTO.Shipper,com.amro.model.DAO.GetShipper" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Page</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
</head>
<body>

<jsp:include page="CarrierHomePage.jsp" />


	<table style="width: 100%">
		<tr>
			<th>Pickup Address</th>
			<th>DropOff Address</th>
			<th>Make</th>
			<th>Model</th>
			<th>Price</th>
		</tr>

		<%
		List<Posts> posts = PostDAO.getAllPosts();
		for (Posts post : posts) {
			Shipper shipper = GetShipper.getShipper(post.getShipperId());
				%>
		<tr>
			<td align="center" bgcolor="#79b6e3" colspan="5" style="color:white">Load ID. <dev style="color:blue"><%=post.getPostId()%></dev>
			 &nbsp;&nbsp;&nbsp;  <dev style="color:white">Customer Phone: <dev style="color:blue"><%=shipper.getPhone()%></dev></dev> <% %></td>
		</tr>
		<%
				List<Load> loads = LoadDAO.getLoad(post.getPostId());
	 			for(Load load : loads){
	 	%>
		<tr>
			<td><%=post.getPickupCity()+", "+post.getPickupState() %></td>
			<td><%=post.getDropoffCity()+", "+post.getDropoffState() %></td>
			<td><%=load.getMake() %></td>
			<td><%=load.getModel() %></td>
			<td>$<%=post.getPrice() %></td>
		</tr>

		<%
			}

				}
		%>
	</table>

</body>
</html>