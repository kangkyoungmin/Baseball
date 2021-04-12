<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
  
<script type="text/javascript" src="js/includeHTML.js"></script>
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


<title>result</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/tablestyle2.css" type = "text/css">
<link rel="stylesheet" href="css/tooltipstyle.css" type = "text/css">
</head>
<body>

<header>
<%
       String uid = null;
       if(session.getAttribute("userid")!=null){
    	   uid = (String)session.getAttribute("userid");
       }
%>
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
	<h2 align="center" style="position:absolute; margin-left:850px; margin-top:100px;">선수기록조회</h2>
	
<form>
<div style="position:absolute; margin-left:200px;margin-top:120px;">
<label><input id ="batter" type = "radio" name="radio" value ="타자" checked>타자</label>
<label><input id ="pitcher" type = "radio" name="radio" value = "투수">투수</label>
</div>
<table class = "select" id="select" style="border:solid 1px #FFF;">
	<tr>
		<td data-tooltip-text = "연도는 2018년 ~ 2021년 중에 선택합니다." >연도: </td>
		<td>
			<select id="yearSelect" onchange = "yearchange(); nodata();" >
				<option selected value="">-연도-
				<option value="2021">2021</option>
				<option value="2020">2020</option>
				<option value="2019">2019</option>
				<option value="2020">2018</option>
		</td>
		<td data-tooltip-text = "시즌은 정규시즌과 포스트시즌으로 구성됩니다.">시즌: </td>
		<td> 
			<select id="seasonSelect" onchange = "seasonchange(); nodata();" >
				<option selected value="">-시즌-
				<option value="regular">정규</option>
				<option value="post">포스트</option>
			
		</td>
		<td class = "f" align = "right" data-tooltip-text = "팀은 두산, 키움, SK 등 총 10개 팀으로 구성됩니다.">team: </td>
		<td ><select id="teamSelect" onchange = "posteamchange(); nodata();" >
			<option selected value="">-팀-
			<option value = "두산">두산 베어스</option>
			<option value = "키움">키움 히어로즈</option>
			<option value = "SK">SK 와이번스</option>
			<option value = "LG">LG 트윈스</option>
			<option value = "NC">NC 다이노스</option>
			<option value = "KT">KT 위즈</option>
			<option value = "삼성">삼성 라이온즈</option>
			<option value = "한화">한화 이글스</option>
			<option value = "롯데">롯데 자이언츠</option>
			<option value = "KIA">KIA 타이거즈</option>
			</select ></td>
			
		<td><input id = "reset" type="reset" value = "초기화"></td>
		
				
		
	</tr>	
</table>
<br>
</form>
<br>

<p align = "center" id="seasonselect"></p>

<p align = "center" id="yearresult"></p>

<br><br>
<p align = "center" id="resulttable"></p>

<script type="text/javascript" src="js/result.js"></script >

<footer include-html="footer.html"></footer>

</body>
<script>
	includeHTML();	
</script>
</html>
