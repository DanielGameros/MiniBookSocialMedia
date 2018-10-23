<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="social.dao.FriendsDAO"%>
<%@ page import="social.dao.PostDAO"%>
<%@ page import="social.model.Post"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wall</title>
<link rel="stylesheet" type="text/css" href="../css/Wall.css">
</head>
<%
	Integer userID = (Integer)session.getAttribute("user_id");
// 	System.out.println(session.getAttribute("img"));

	String img=(String)session.getAttribute("img");
	String name = session.getAttribute("first_name") +" "+ session.getAttribute("last_name");
	
	FriendsDAO friendsDAO = new FriendsDAO();
	System.out.println(friendsDAO.getAllUserFriends(userID));
	
//  PostDAO w = new PostDAO();
//  Post p = new Post("yayyyyy", 1);
////  w.postOnWall(p);
//  w.deletePostOnWall(1);

// 	PostDAO postBot = new PostDAO();
// 	Post p = new Post("Hello World",1);
// 	postBot.postOnWall(p);
	
%>
<body>

	<!-- NAV BAR -->
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
								<textarea placeholder="Write a post" rows="2" cols="15"></textarea>
							</form>

						</td>
						<td><button class="btn-post" type="submit">Post</button></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table class="table-bottom">
					<tr>
						<td><img src="../images/<%=session.getAttribute("img")%>" alt="Avatar" class="avatar-post"></td>
						<td><h3><%=name%></h3></td>
					</tr>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td><a href="EditPost.jsp"><button class="btn-colors" type="submit">Edit Post</button></a></td>
						<td><button class="btn-colors" type="submit">Delete Post</button></td>
					</tr>
				</table>
			</td>
			<td>
				<table class="table-bottom">
					<tr>
						<td><h3>IMG</h3></td>
						<td><h3>Lance Tance</h3></td>
					</tr>
					<tr>
						<td><h3>Lost in Space</h3></td>
					</tr>
				</table>
			</td>


		</tr>
	</table>

</body>
</html>