<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Schedule</title>
<link rel="stylesheet" href="css/style2.css">
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
				<li><a href="index.html">Home</a></li>
				<li><%=uid %></li>
			</ul>
			
			<% } %>
		</div>
	</header>
    <nav include-html="nav5.html"></nav>
    <section>
    <div class="center" style="margin-left:880px;">
    	<input type="image" alt="" src="./image/left_.JPG" onclick="left();">
    	<span id='currentdate' style="display:inline-block; width:120px; font-size:16px; font-weight:bold;"></span>
    	<input type="image" alt="" src="./image/right_.JPG" onclick="right();">       
    </div>
    <div class="schedule_table" id="schedule_table2">
    </div>
    </section>
    
    <footer include-html="footer.html" style="margin-top:100px;"></footer>
</body>

<script>
    includeHTML();
</script>
<script src="js/timeSchedule2.js"></script>
</html>