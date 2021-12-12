<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.app.app.dao.CommentDAO, com.app.app.vo.CommentVO" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<form:form commandName="commentVO" method="post" action="../editok">
		<form:hidden path="seq" />
		<table id="edit">
			<tr><td>이름</td><td><form:input path="name"/></td></tr>
			<tr><td>관계</td>
			<td>
			<select name="relation">
				<option value="family">가족</option>
				<option value="friend">친구</option>
				<option value="relative">친척</option>
			</select>
			</td>
			</tr>
			<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
		</table>
		<button type="button" onclick="location.href='../list'">취소하기</button>
		<button type="submit">수정하기</button>
</form:form>

</body>
</html>