<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Ranking</title>
<link rel="stylesheet" href="./table/table.css">
<link rel="stylesheet" href="./css/style2.css">
<script src="js/includeHTML.js"></script>
<script type="text/javascript">
	function loginalert(){
		<%PrintWriter write = response.getWriter();
			if(session.getAttribute("userid")==null){
				 write.println("<script>");
		         write.println("alert('로그인이 필요합니다')");
		         write.println("location.href = 'login.html'");
		         write.println("</script>");
			}
		%>
	}
</script>
<style>
#schedule{
		margin:0 auto;
		text-align:center;
}

table{
	width:70%;
	text-align:center;
	margin:0 auto;
	background: white;
	border-collapse:collapse
}

table tr,td,th{
	border: 1px solid #444444;
}
th,td{
	font-family: sans-serif;
	font-weight:bold;
}

section .schedule_table{
	 text-align:center;
	 margin-right:220px;
	 display: flex;
	 align-items: center;
 	 justify-content: center;
}
#location{
	width:20%;
	height:30px;
	background-color:black;
	color:white;
}
#image{
	width:20%;
	height:100px;
	height:300;
}

#gameresult{
	width:20%;
	height:30px;
}
</style>

</head>
<body>
		<%
       String uid = null;
       if(session.getAttribute("userid")!=null){
    	   uid = (String)session.getAttribute("userid");
       }
	%>
	<header>
		<div class="container">
		  <%
		      if(uid==null){ 
		  %>
			<ul class="sidemenu">
				<li><a href="index.html">Home</a></li>
				<li><a href="signup.html">회원가입</a></li>
				<li><a href="login.html">로그인</a></li>
			</ul>
			<% } else{ %>
			  <ul class="sidemenu">
				<li><a href="main.jsp">Home</a></li>
				<li><%=uid %></li>
			</ul>
			
			<% } %>
		</div>
	</header>
    <nav include-html="nav5.html"></nav>
	<div id="rank2" style="margin-right:150px;">
	<h3>
		<span style="font-size:25px;font-weight:bold">TEAM</span>
		"RANKING"
	</h3>
	<table id="TeamRank" class="tb1" summary="TEAM RANKING(순위,팀명,승,패,무,승률)" style="text-align:center;">
		<colgroup>
			<col width="11%">
			<col width="12%">
			<col width="11%">
			<col width="8%">
			<col width="8%">
			<col width="7%">
			<col width="15%">
			<col width="15%">
			<col width="15%">
			<col width="13%">
		</colgroup>
		<thead style="background-color:#D8D8D8;">
			<tr>
				<th>순위</th>
				<th>팀명</th>
				<th>승</th>
				<th>무</th>
				<th>패</th>
				<th>승률</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="data" items="${list}">
				<tr>
					<th>${data[0].rank}</th>
					<td>${data[0].team}</td>
					<td>${data[0].victory}</td>
					<td>${data[0].draw}</td>
					<td>${data[0].defeat}</td>
					<td>${data[0].vic_st}</td>
				</tr>
		</c:forEach>

		</tbody>
				
	</table>
	</div>
    <footer include-html="footer.html" style="margin-top:100px;"></footer>

</body>
<script>
    includeHTML();
</script>
</html>