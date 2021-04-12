<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/includeHTML.js"></script>
<title>Ranking</title>
<link rel="stylesheet" href="css/style2.css">
<link rel="stylesheet" href="css/style_rank2.css">
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
<div id="rank1">
	<h3 style="text-align:center; font-size:30px;"> 
		<span>PLAYER</span>
		" RANKING"
	</h4>
	<div class="tabmenu">
	<input type="radio" name="tab" id="tab1" checked = "checked">
	<label for="tab1" style="margin-left:10px;width:31%;">타자</label>
	<input type="radio" name="tab" id="tab2">
	<label for="tab2" style="width:31%;">투수</label>
	<input type="radio" name="tab" id="tab3">
	<label for="tab3" style="width:31%;">주간랭킹</label>
	<div id="cont1">
	<table id="rank_top" class="tb1"><tr id="category">
		<colgroup style="text-align:center;">
			<col width="7%">
			<col width="24%">
			<col width="7%">
			<col width="24%">
			<col width="7%">
			<col width="24%">
		</colgroup>
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>타율</th>
				<th>&nbsp;</th>
				<th>홈런</th>
				<th>&nbsp;</th>
				<th>타점</th>
			</tr>
		</thead>
		<tbody>
			<tr class="line01">
				<td class="rank_no1">1위</td>
				<td>
					<span class="player-img_hit">
						<img id="hit" src="./image/player_img_hit1.jpg" alt="양의지"><br>
					</span>
					<span class="name">양의지(NC)</span><br>
					<span class="record">0.354</span>
					</td>
				<td class="rank_no1">1위</td>
				<td>
					<span class="player-img_hit">
						<img id="hit" src="./image/player_img_hit2.jpg" alt="박병호"><br>
					</span>
					<span class="name">박병호(키움)</span><br>
					<span class="record">33</span>	
				</td>			
				<td class="rank_no1">1위</td>
				<td>
					<span class="player-img_hit">
						<img id="hit" src="./image/player_img_hit3.jpg" alt="샌즈"><br>
					</span>
					<span class="name">샌즈(키움)</span><br>
					<span class="record">113</span>	
				</td>
			</tr>
			<tr>
				<td class="rank_">2위</td>
				<td>
					<span class="name">페르난데스(두산)</span><br>
					<span class="record">0.344</span>
				</td>
				<td class="rank_">2위</td>
				<td>
					<span class="name">로맥(SK)</span><br>
					<span class="record">29</span>
				</td>
				<td class="rank_">2위</td>
				<td>
					<span class="name">김하성(키움)</span><br>
					<span class="record">104</span>
				</td>
			</tr>
			<tr>
				<td class="rank_">3위</td>
				<td>
					<span class="name">박민우(두산)</span><br>
					<span class="record">0.344</span>
				</td>
				<td class="rank_">3위</td>
				<td>
					<span class="name">최정(SK)</span><br>
					<span class="record">29</span>
				</td>
				<td class="rank_">3위</td>
				<td>
					<span class="name">로하스(KT)</span><br>
					<span class="record">104</span>
				</td>	
			</tr>				
			</tbody>
		</table>
	</div>
	<div id="cont2">
	<table id="rank_top" class="tb1"><tr id="category">
		<colgroup style="text-align:center;">
			<col width="7%">
			<col width="24%">
			<col width="7%">
			<col width="24%">
			<col width="7%">
			<col width="24%">
		</colgroup>
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>평균자책점</th>
				<th>&nbsp;</th>
				<th>승리</th>
				<th>&nbsp;</th>
				<th>탈삼진</th>
			</tr>
		</thead>
		<tbody>
			<tr class="line01">
				<td class="rank_no1">1위</td>
				<td>
					<span class="player-img_hit">
						<img id="hit" src="./image/player_img_pit.jpg" alt="요키시"><br>
					</span>
					<span class="name">요키시(키움)</span><br>
					<span class="record">2.14</span>
					</td>
				<td class="rank_no1">1위</td>
				<td>
					<span class="player-img_hit">
						<img id="hit" src="./image/player_img_pit3.jpg" alt="알칸타라"><br>
					</span>
					<span class="name">알칸타라(두산)</span><br>
					<span class="record">20</span>	
				</td>			
				<td class="rank_no1">1위</td>
				<td>
					<span class="player-img_hit">
						<img id="hit" src="./image/player_img_pit2.jpg" alt="스트레일리"><br>
					</span>
					<span class="name">스트레일리(두산)</span><br>
					<span class="record">205</span>	
				</td>
			</tr>
			<tr>
				<td class="rank_">2위</td>
				<td>
					<span class="name">브룩스(KIA)</span><br>
					<span class="record">2.50</span>
				</td>
				<td class="rank_">2위</td>
				<td>
					<span class="name">루친스키(NC)</span><br>
					<span class="record">19</span>
				</td>
				<td class="rank_">2위</td>
				<td>
					<span class="name">뷰캐넌(삼성)</span><br>
					<span class="record">190</span>
				</td>
			</tr>
			<tr>
				<td class="rank_">3위</td>
				<td>
					<span class="name">스트레일리(롯데)</span><br>
					<span class="record">2.50</span>
				</td>
				<td class="rank_">3위</td>
				<td>
					<span class="name">켈리(LG)</span><br>
					<span class="record">15</span>
				</td>
				<td class="rank_">3위</td>
				<td>
					<span class="name">루친스키(NC)</span><br>
					<span class="record">167</span>
				</td>	
			</tr>				
			</tbody>
		</table>
	</div>
	
	<div id="cont3">
	<table id="rank_top" class="tb1"><tr id="category">
		<colgroup style="text-align:center;">
			<col width="7%">
			<col width="24%">
			<col width="7%">
			<col width="24%">
			<col width="7%">
			<col width="24%">
		</colgroup>
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>타율</th>
				<th>&nbsp;</th>
				<th>홈런</th>
				<th>&nbsp;</th>
				<th>안타</th>
			</tr>
		</thead>
		<tbody>
			<tr class="line01">
				<td class="rank_no1">1위</td>
				<td>
					<span class="player-img_hit">
						<img id="hit" src="./image/player_img_hit1.jpg" alt="양의지"><br>
					</span>
					<span class="name">양의지(NC)</span><br>
					<span class="record">0.354</span>
					</td>
				<td class="rank_no1">1위</td>
				<td>
					<span class="player-img_hit">
						<img id="hit" src="./image/player_img_hit2.jpg" alt="박병호"><br>
					</span>
					<span class="name">박병호(키움)</span><br>
					<span class="record">33</span>	
				</td>			
				<td class="rank_no1">1위</td>
				<td>
					<span class="player-img_hit">
						<img id="hit" src="./image/player_img_hit3.jpg" alt="샌즈"><br>
					</span>
					<span class="name">샌즈(키움)</span><br>
					<span class="record">113</span>	
				</td>
			</tr>			
			</tbody>
		</table>
	</div>
</div>
</div>
<!-- <button type="button" onclick="location.href='./ranking.do'">Team Ranking</button> -->

<footer include-html="footer.html"></footer>
</body>
<script>
    includeHTML();
</script>
</html>