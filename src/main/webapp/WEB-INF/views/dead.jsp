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
.container {
	margin: 1rem;
	padding: 15px;
	box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
	background: #ffffff;
	background-color: #000000;
}

.form__title {
    font-family: 'Staatliches'; 
    font-size: 5em; 
    text-align: center;
    color: #ffffff;
    text-shadow: 2px 2px #808080; 
    margin: 0; 
}

* {
  box-sizing: border-box;
}

.row::after {
  content: "";
  clear: both;
  display: table;
}

[class*="col-"] {
  float: left;
  padding: 15px;
}

html {
  font-family: "Lucida Sans", sans-serif;
}

.header {
  background-color: #000000;
  color: #ffffff;
  padding: 15px;
}

.menu ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.menu li {
  padding: 8px;
  margin-bottom: 7px;
  background-color: #000000;
  color: #ffffff;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}

.menu li:hover {
  background-color: #808080;
}

/* For mobile phones: */
[class*="col-"] {
  width: 100%;
}

@media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
  /* For desktop: */
  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 33.33%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 66.66%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
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
	background-color: #000000;
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
		<h1 class="form__title"> <%=vo.getDeadname()%></h1>
	</div>
	<div class="col-3 col-s-3 menu">
    <ul>
      <li>내용: <%=vo.getContent()%></li>
      <li>사유: <%=vo.getLetter()%></li>
      <li>장소: <%=vo.getPlace()%></li>
    </ul>
  </div>
  <div class="col-6 col-s-9">
		<img src="${pageContext.request.contextPath}/img/<%=vo.getPicture()%>" width="400" height="400" border="10" />
	</div>
	<form action="addok" method="post">
		<table id="comment">
			<tr>
				<th>이름</th>
				<th>조문</th>
				<th>관계</th>
			</tr>
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
			<th>이름</th>
			<th>관계</th>
			<th>내용</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.name}</td>
				<td>${u.relation}</td>
				<td>${u.content}</td>
				<td>${u.regdate}</td>
			</tr>
		</c:forEach>
	</table>
	
	<br />

</body>
</html>