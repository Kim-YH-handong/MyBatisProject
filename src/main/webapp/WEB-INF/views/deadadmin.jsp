<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.app.app.vo.DeadVO, com.app.app.vo.CommentVO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admindead</title>
<style>
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
	<table id="code">
		<tr>
			<th>Code</th>
			<th>Name</th>
			<th>Content</th>
			<th>Letter</th>
			<th>Place</th>
		</tr>
		<c:forEach items="${code}" var="u">
			<tr>
				<td>${u.code}</td>
				<td>${u.deadname}</td>
				<td>${u.content}</td>
				<td>${u.letter}</td>
				<td>${u.place}</td>
				<td>
					<form method="post" action="deadOk">
						<input type="hidden" name="code" value="${u.code}">
						<button type="submit">이동하기</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>