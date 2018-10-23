<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="social.dao.UserDAO"%>
<%@ page import="social.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Minibook</title>
<link rel="stylesheet" type="text/css" href="../css/login.css">

</head>
<%
	String message = null;
	UserDAO user = new UserDAO();
	if (request.getParameter("login") != null) {
			
		User person = new User();
		person.setEmail(user.getUserByEmail(request.getParameter("Email")).getEmail());
		person.setPass(user.getUserByEmail(request.getParameter("Email")).getPass());
// 		System.out.println("data received..");
		String email = person.getEmail();
		String pass = person.getPass();
// 		System.out.println("variables set..");
// 		System.out.println(person.getEmail());
// 		System.out.println(person.getPass());
// 		System.out.println("variables being compared to..");
// 		System.out.println(request.getParameter("Email"));
// 		System.out.println(request.getParameter("Password"));
		
		
		if (request.getParameter("Email").equals(email) && request.getParameter("Password").equals(pass)) {
			
			session.setAttribute("user_id", user.getUserByEmail(request.getParameter("Email")).getUser_id());
			session.setAttribute("first_name",user.getUserByEmail(request.getParameter("Email")).getFirst_name());
			session.setAttribute("last_name",user.getUserByEmail(request.getParameter("Email")).getLast_name());
			session.setAttribute("email", user.getUserByEmail(request.getParameter("Email")).getEmail());
			session.setAttribute("pass", user.getUserByEmail(request.getParameter("Email")).getPass());
			session.setAttribute("about_me ",user.getUserByEmail(request.getParameter("Email")).getAboutMe());
			session.setAttribute("img", user.getUserByEmail(request.getParameter("Email")).getImg());

			// 		User person = new User();
			// 		person.setAboutMe(user.getUserByEmail(request.getParameter("Email")).getAboutMe());
			// 		person.setEmail(user.getUserByEmail(request.getParameter("Email")).getEmail());
			// 		person.setFirst_name(user.getUserByEmail(request.getParameter("Email")).getFirst_name());
			// 		person.setLast_name(user.getUserByEmail(request.getParameter("Email")).getLast_name());
			// 		person.setImg(user.getUserByEmail(request.getParameter("Email")).getImg());
			// 		person.setPass(user.getUserByEmail(request.getParameter("Email")).getPass());
			// 		person.setUser_id(user.getUserByEmail(request.getParameter("Email")).getUser_id());
			//		session.setAttribute("Person", person);
			response.sendRedirect("Wall.jsp");

		} else {
			message = "Email or Password are incorrect";
		}
		
	}
%>
<body>
<%
		
// 		user.getUserByEmail("bvasquez@gmail.com");
// 		User person = new User();
// 		person.setFirst_name(user.getUserByEmail("bvasquez@gmail.com").getFirst_name());
// 		person.setEmail(user.getUserByEmail(request.getParameter("Email")).getEmail());
// 		person.setFirst_name(user.getUserByEmail(request.getParameter("Email")).getFirst_name());
// 		person.setLast_name(user.getUserByEmail(request.getParameter("Email")).getLast_name());
// 		person.setImg(user.getUserByEmail(request.getParameter("Email")).getImg());
// 		person.setPass(user.getUserByEmail(request.getParameter("Email")).getPass());
// 		person.setUser_id(user.getUserByEmail(request.getParameter("Email")).getUser_id());
// 		System.out.println(person.getFirst_name());
// 		session.setAttribute("Person", person);
		
// 		Item item = new Item();
		
// 		item.setItemName(lines[0]);
// 		item.setItemDesc(lines[1]);
// 		item.setItemPrice(Double.parseDouble(lines[2]));
// 		item.setAvailableQuantity(Integer.parseInt(lines[3]));
%>
	<!-- 	<h1>FaceSpace</h1> -->
	<!-- 	<img src="" /> -->
	<!-- 	<form method="post"> -->
	<!-- 		<table> -->
	<!-- 			<tr> -->
	<!-- 				<td><input type="text" name="Email" placeholder="Email" /></td> -->
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td><input type="password" name="Password" -->
	<!-- 					placeholder="Password" /></td> -->
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td colspan="2"><input type="submit" name="login" value="Login" /></td> -->
	<!-- 			</tr> -->
	<!-- 		</table> -->
	<!-- 	</form> -->

	<div class="wrapper">
		<form class="form-login">
			<h2 class="form-heading">Login</h2>
			<%
				if (message != null) {
					out.print("<span style='color:red'>" + message + "</span>");
				}
			%>
			<input type="text" class="form-control" name="Email"
				placeholder="Email Address" /> <br /> <input type="password"
				class="form-control" name="Password" placeholder="Password" /> <br />
			<button class="btn btn-lg btn-primary btn-block" type="submit" name="login" value="Login">Login</button>
		</form>
	</div>
</body>
</html>