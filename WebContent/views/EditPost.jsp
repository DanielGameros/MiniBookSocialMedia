<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="social.dao.FriendsDAO"%>
<%@ page import="social.dao.PostDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Post</title>
<link rel="stylesheet" type="text/css" href="../css/Wall.css">
</head>
<%
	Integer userID = (Integer)session.getAttribute("user_id");
// 	System.out.println(session.getAttribute("img"));

	String img=(String)session.getAttribute("img");
	String name = session.getAttribute("first_name") +" "+ session.getAttribute("last_name");
	
	
	PostDAO postBot = new PostDAO();
	String postData ="Initial text";
	if (request.getParameter("EditPost") != null) {
		postData = request.getParameter("postData");
		
	}
	
%>
<body>
<ul>
		<li style="float: left"><a href="Wall.jsp">MiniBook</a></li>
		<li><a href="logout.jsp">Logout</a></li>
		<li><a href="Notifications.jsp">Notifications</a></li>
		<li><a href="Friends.jsp">Friends</a></li>
		<li><a href="Wall.jsp">Wall</a></li>
	</ul>
	
	<!-- PAGE CONTENT -->
	<table>
		<tr>
			<td>
				<table class="table-display">
					<tr>
						<td><img src="../images/<%=session.getAttribute("img")%>" alt="Avatar" class="avatar"></td>
					</tr>
					<tr>
						<td><h3><%=name%></h3></td>
					</tr>
				</table>
			</td>
			<td>
				<table class="table-posts">
					<tr>
						<td>
							<form>
								<textarea name=postData placeholder="Write a post" rows="2" cols="15"></textarea>
							</form>

						</td>
						<td><button class="btn-post" type="submit" name="EditPost" value="EditPost">Edit Post</button></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
			</td>
		</tr>
	</table>

</body>
</html>