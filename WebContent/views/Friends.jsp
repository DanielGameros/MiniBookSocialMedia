<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="social.dao.FriendsDAO"%>
<%@ page import="social.model.Friends"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Friends</title>
<link rel="stylesheet" type="text/css" href="../css/Wall.css">
</head>
<%
	Integer userID = (Integer) session.getAttribute("user_id");
	// 	System.out.println(session.getAttribute("img"));

	String img = (String) session.getAttribute("img");
	String name = session.getAttribute("first_name") + " " + session.getAttribute("last_name");

	FriendsDAO friendsDAO = new FriendsDAO();
	System.out.println(friendsDAO.getAllUserFriends(userID));
	String value = "initial value";
	System.out.println(friendsDAO.getAllNonFriends(userID));
	List<Friends> userFriends = new ArrayList<Friends>();
	userFriends.addAll(friendsDAO.getAllNonFriends(userID));
	
//test code
// 	for (Friends friend  : friendsDAO.getAllNonFriends(userID)) {
// 	    System.out.println(friend);
// 	}

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
				<table>
					<tr>
						<td>
							<form>
								<input type="radio" name="FriendsButtons" value="MyFriends">My
								Friends <input type="radio" name="FriendsButtons"
									value="FindFriends"> Find Friends
								<button class="" type="submit"
									name="Search" value="Search">Search</button>
							</form>

						</td>
						<!-- 						<td><button class="btn-search" type="submit" name="Search">Search</button></td> -->
					</tr>
				</table>
			</td>
		</tr>
		</table>
		
			<!-- 			<td> -->
			<!-- 				<table class="table-bottom"> -->
			<!-- 					<tr> -->
			<%-- 						<td><img src="../images/<%=session.getAttribute("img")%>" alt="Avatar" class="avatar-post"></td> --%>
			<%-- 						<td><h3><%=name%></h3></td> --%>
			<!-- 					</tr> -->
			<!-- 					<tr> -->
			<!-- 						<td><h3>Currently Traveling</h3></td> -->
			<!-- 					</tr> -->
			<!-- 					<tr> -->
			<!-- 						<td><a href="EditPost.jsp"><button class="btn-colors" type="submit">Edit Post</button></a></td> -->
			<!-- 						<td><button class="btn-colors" type="submit">Delete Post</button></td> -->
			<!-- 					</tr> -->
			<!-- 				</table> -->
			<!-- 			</td> -->
			
				<%
					if (request.getParameter("Search") != null) {
						value = request.getParameter("FriendsButtons");
					}
				%>
				
				<%if(value.equals("MyFriends")) { %>
				
				<table>
<tr>
					<%
 						//get info of current friends to display
					%>
					<tr>
						<td>
						
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
									<button class="btn btn-lg btn-primary btn-block" type="submit"
										name="FriendRequest" value="FriendRequest">Friend Request</button>
								</form>
								</td>
						</tr>
						</table>
					
					</tr>
					
					<%
						}
					%>
				
				</table>
				
				<%if(value.equals("FindFriends")){ %>
				
				<table>
			<tr>
					<%
						int i = (userFriends.size()) - 1;
						while(i >=0){
						//for (int row=1; row<=5; row++) {
						System.out.println(userFriends.get(i));
						String friendImg = userFriends.get(i).getUser_accepted().getImg();
						String friendName = userFriends.get(i).getUser_accepted().getFirst_name() + " " + 
											userFriends.get(i).getUser_accepted().getLast_name();
						String friendAboutMe = userFriends.get(i).getUser_accepted().getAboutMe();
						
					%>
					<tr>
						<td>
						
						<table class="table-display">
							<tr>
							 	<td><img src="../images/<%=friendImg%>"
									alt="Avatar" class="avatar">
								 </td>
								<td><h3><%=friendName%></h3></td>
					</tr>
					<tr>
						<td><h3><%=friendAboutMe%></h3></td>
					</tr>
						
						<tr>
								<td>
								<form>
									<button class="btn btn-lg btn-primary btn-block" type="submit"
										name="FriendRequest" value="FriendRequest">Friend Request</button>
								</form>
								</td>
						</tr>
						</table>
					
					</tr>
					<%
						i--;}
					%>
					<%
						}
					%>
<%-- <%-- 					<% --%>
<!-- // 						if (value.equals("MyFriends")) { -->

<!-- // 							} -->
<!-- // 							if (value.equals("FindFriends")) { -->

<!-- // 							} -->
<!-- // 						} -->
<%-- <%-- 					%> --%> 
				
				</table>
<!-- 			</td> -->
<!-- 			<td><h3>Lance Tance</h3></td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td><h3>Lost in Space</h3></td> -->
<!-- 		</tr> -->
<!-- 	</table> -->


</body>
</html>