<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notifications</title>
<link rel="stylesheet" type="text/css" href="../css/Wall.css">
</head>
<%
	Integer userID = (Integer) session.getAttribute("user_id");
	//	System.out.println(session.getAttribute("img"));

	String img = (String) session.getAttribute("img");
	String name = session.getAttribute("first_name") + " " + session.getAttribute("last_name");
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
						<td><img src="../images/<%=session.getAttribute("img")%>"
							alt="Avatar" class="avatar"></td>
					</tr>
					<tr>
						<td><h3><%=name%></h3></td>
					</tr>
				</table>
			</td>
			<td>
		</tr>
	</table>
	<table class="table-display">
		<tr>
			<td>
				<h3>Placeholder Image</h3>
			</td>
			<td><h3>Placeholder friend</h3></td>
		</tr>
		<tr>
			<td><h3>Placeholder about me</h3></td>
		</tr>

		<tr>
			<td>
				<form>
					<button class="btn-colors" type="submit" name="Notifications"
						value="Accept">Accept Friend</button>
				</form>
			</td>
			<td>
				<form>
					<button class="btn-colors" type="submit" name="Notifications"
						value="Decline">Decline</button>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>