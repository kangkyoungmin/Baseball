<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>main page</title>
<link rel="stylesheet" href="css/style2.css">
<script type="text/javascript">

	 
$(document).ready(function(){
	 $('#logout').click(function (){
    $.ajax({
        type : "POST", 
        url : "logout.jsp",
        dataType : "html",
        success : function(logout){
            alert("로그아웃되었습니다.");
        }
		 
	 });
         
    });
});
</script>

<style>
#schedule{
		margin:0 auto;
		text-align:center;
}

table{
	width:50%;
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
				<li><a id = logout href="main.jsp">로그아웃</a></li>
			</ul>
			
			<% } %>
		</div>
	</header>
    <nav include-html="nav5.html"></nav>
    <section>
    <img id="img1" alt="baseball" src="./image/baseball.png" style="margin-top:20px;">
   
    </section>
    <footer include-html="footer.html"></footer>
<script src="js/includeHTML.js"></script>
</body>

<script>
    includeHTML();
</script>

</html>