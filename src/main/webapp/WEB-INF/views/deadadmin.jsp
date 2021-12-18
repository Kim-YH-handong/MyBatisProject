<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.app.app.vo.DeadVO, com.app.app.vo.CommentVO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dead List(admin)</title>
<style>
.center {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	padding: 10px;
}

.form_button {
	width: 100%;
	padding: 0.5rem 1rem;
	font-weight: bold;
	font-size: 1.1rem;
	color: #ffffff;
	border: none;
	border-radius: 12px;
	outline: none;
	cursor: pointer;
	background: #000000;
	color: #FFFFFF;
	margin: 5px;
}
.form_button:hover {
	background: #565656;
}

table {
	display: block;
	width: 100%;
	padding: 0.75rem;
	box-sizing: border-box;
	border-radius: 10px;
	border: 1px solid #dddddd;
	outline: none;
	background: #eeeeee;
	transition: background 0.2s, border-color 0.2s;
	margin: 5px;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #444444;
	padding: 15px;
	text-align: center;
}

body { -
	-color-primary: #000000; -
	-color-secondary: #252c6a; -
	-color-error: #cc3333; -
	-color-success: #4bb544; -
	-border-radius: 4px;
	margin: 0;
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 18px;
	background: url(${pageContext.request.contextPath}/resources/img/background.jpg);
	background-size: cover;
}

.container {
	margin: 1rem;
	padding: 2rem;
	box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
	background: #ffffff;
}

#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하시겠습니까?");
		if (a)
			location.href = "deleteok/" + id;
	}
</script>
</head>
<body>
<div class="container">
	<table id="code">
		<tr class="form_input">
			<th>Code</th>
			<th>Name</th>
			<th>Content</th>
			<th>Letter</th>
			<th>Place</th>
		</tr>
		<c:forEach items="${code}" var="u">
			<tr class="form_input">
				<td>${u.code}</td>
				<td>${u.deadname}</td>
				<td>${u.content}</td>
				<td>${u.letter}</td>
				<td>${u.place}</td>
				<td>
					<form method="post" action="deadOk">
						<input type="hidden" name="code" value="${u.code}">
						<button type="submit" class="form_button">이동하기</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>