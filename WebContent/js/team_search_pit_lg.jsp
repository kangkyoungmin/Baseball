<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/tablestyle.css" type = "text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/tooltipstyle.css" type = "text/css">


<meta charset="UTF-8">
<title>batter</title>

</head>
<body>

<h4 align="center">검색결과</h4>
<image align="center" alt = "LG" src="<%=request.getContextPath()%>/image/LG.png" width="100px" height="100px"/>


<br>
<%

try{
	
	
	String driver = "oracle.jdbc.OracleDriver";
	//1. Driver클래스를 로딩
		Class.forName(driver);
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "admin";
		String pw = "aArudals147852";
	
	Connection con = null;
	con = DriverManager.getConnection(url, user, pw);
	Statement st = null;
	st = con.createStatement();
	
	String sql = "select player_name, game_date, team_name ,STARTING, "
			+ "DAY_ERA,TBF,IP,H,HR,BB,HBP,SO,R,ER,SEASON_ERA "
			+ "from pitcher_gamedata pg "
			+ "inner join player p "
			+ "on p.player_id = pg.player_id "
			+ "inner join gameinfo g "
			+ "on g.game_id = pg.game_id "
			+ "inner join team t "
			+ "on t.team_id = pg.team_id "
			+ "where t.team_name like 'LG%'";
	
	ResultSet rs = null;

	rs = st.executeQuery(sql);
	%>
	<table class = "result">
		<tr>
			<th>경기일자</th>
			<th>선수명</th>
			<th>팀</th>
			<th>선발여부</th>
			<th><a data-tooltip-text = "평균 자책점" >
			D-ERA</a></th>
			<th><a data-tooltip-text = "상대 타자수" >
			TBF</a></th>
			<th><a data-tooltip-text = "이닝" >
			IP</a></th>
			<th><a data-tooltip-text = "피안타" >
			H</a></th>
			<th><a data-tooltip-text = "피홈런" >
			HR</a></th>
			<th><a data-tooltip-text = "볼넷" >
			BB</a></th>
			<th><a data-tooltip-text = "사구" >
			HBP</a></th>
			<th><a data-tooltip-text = "삼진" >
			SO</a></th>
			<th><a data-tooltip-text = "실점" >
			R</a></th>
			<th><a data-tooltip-text = "자책점" >
			ER</a></th>
			<th><a data-tooltip-text = "시즌 평균 자책점" >
			S_ERA</a></th>
		</tr>
	<%
	while(rs.next()){
		%>
		<tr>
			<td><%=rs.getDate("game_date") %></td>
			<td><%=rs.getString("player_name") %></td>
			<td><%=rs.getString("team_name") %></td>
			<td><%=rs.getString("starting") %></td>
			<td><%=rs.getDouble("day_era") %></td>
			<td><%=rs.getInt("TBF") %></td>
			<td><%=rs.getDouble("IP") %></td>
			<td><%=rs.getInt("H") %></td>
			<td><%=rs.getInt("HR") %></td>
			<td><%=rs.getInt("BB") %></td>
			<td><%=rs.getInt("HBP") %></td>
			<td><%=rs.getInt("SO") %></td>
			<td><%=rs.getInt("R") %></td>
			<td><%=rs.getInt("ER") %></td>
			<td><%=rs.getDouble("season_era") %></td>
			
		</tr>
		
	<%
	}
	con.close();
	st.close();
	}catch(Exception e){
		System.out.println(e);
}
%>
	</table>
</body>
</html>