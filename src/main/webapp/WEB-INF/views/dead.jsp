<%@ page language="java" contentType="text/html; charset=UTF-8" session="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import ="com.app.app.vo.DeadVO, com.app.app.vo.CommentVO" %>
<%
	DeadVO vo = (DeadVO)session.getAttribute("dead") ;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dead</title>
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

	<h1> Welcome To Hell!!!</h1>
	<table id="dead">
		<tr>
			<th>Picture</th>
			<th>Name</th>
			<th>Content</th>
			<th>Letter</th>
			<th>Place</th>
		</tr>
		<tr>
			<td><%=vo.getPicture()%></td>
			<td><%=vo.getDeadname()%></td>
			<td><%=vo.getContent()%></td>
			<td><%=vo.getLetter()%></td>
			<td><%=vo.getPlace()%></td>
		</tr>
	</table>
	<form action="addok" method="post">
		<table id="comment">
			<tr>
				<th><input type="text" name="name" /></th>
				<th><input type="text" name="content" /></th>
				<th>
					<select name="relation">
						<option value="family">가족</option>
						<option value="friend">친구</option>
						<option value="relative">친척</option>
					</select>
				</th>
				<th><button type='submit'>SUBMIT</button></th>
			</tr>
		</table>
	</form>
	<table id="list">
		<tr>
			<th>NAME</th>
			<th>RELATION</th>
			<th>CONTENT</th>
			<th>DATE</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.name}</td>
				<td>${u.relation}</td>
				<td>${u.content}</td>
				<td>${u.regdate}</td>
				<td><a href="editform/${u.seq}">글수정</a></td>
				<td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	
	<br />

</body>
</html>