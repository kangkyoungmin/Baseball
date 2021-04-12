<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>

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
<image align="center" alt = "NC" src="<%=request.getContextPath()%>/image/NC.png" width="100px" height="100px"/>
<a align = "right" data-tooltip-text = "D-AVG: day-average. 타율, PA: plate appearance. 타석, AB: at bat. 타수, R: run. 득점, H: hit. 안타, 
2B: double. 2루타, 3B: triple. 3루타, HR: home run 홈런, RBI: Run Batted In. 타점, SB: stolen base. 도루, 
CS: caught stealing. 도루실패, BB: base on balls. 볼넷, HBP: hit by pitch. 사구(몸에맞는공), SO: strikeout. 삼진, 
GDP: Grounded into double play. 병살타" >
타자기록</a>

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
	
	
	
	String sql = "select player_name, game_date, team_name, "
			+ "DAY_AVG,PA,AB,R,H,DOUBLE,TRIPLE,HR,RBI,SB,CS,BB,HBP,SO,GDP,SEASON_AVG "
			+ "from batter_gamedata bg "
			+ "inner join player p "
			+ "on p.player_id = bg.player_id "
			+ "inner join gameinfo g "
			+ "on g.game_id = bg.game_id "
			+ "inner join team t "
			+ "on t.team_id = bg.team_id "
			+ "where t.team_name like 'NC%'";
	
	ResultSet rs = null;

	rs = st.executeQuery(sql);
	%>
	<table  class = "result">
		<tr>
			<th>경기일자</th>
			<th>선수명</th>
			<th>팀</th>
			<th><a data-tooltip-text = "타율" >
			D-AVG</a></th>
			<th><a data-tooltip-text = "타석" >
			PA</a></th>
			<th><a data-tooltip-text = "타수" >
			AB</a></th>
			<th><a data-tooltip-text = "득점" >
			R</a></th>
			<th><a data-tooltip-text = "안타" >
			H</a></th>
			<th><a data-tooltip-text = "2루타" >
			2B</a></th>
			<th><a data-tooltip-text = "3루타" >
			3B</a></th>
			<th><a data-tooltip-text = "홈런" >
			HR</a></th>
			<th><a data-tooltip-text = "타점" >
			RBI</a></th>
			<th><a data-tooltip-text = "도루" >
			SB</a></th>
			<th><a data-tooltip-text = "도루실패" >
			CS</a></th>
			<th><a data-tooltip-text = "볼넷" >
			BB</a></th>
			<th><a data-tooltip-text = "사구" >
			HBP</a></th>
			<th><a data-tooltip-text = "삼진" >
			SO</a></th>
			<th><a data-tooltip-text = "병살타" >
			GDP</a></th>
			<th><a data-tooltip-text = "시즌 평균 타율" >
			S-AVG</a></th>
		</tr>
	<%
	while(rs.next()){
		%>
		<tr>
			<td><%=rs.getDate("game_date") %></td>
			<td><%=rs.getString("player_name") %></td>
			<td><%=rs.getString("team_name") %></td>
			<td><%=rs.getDouble("day_avg") %></td>
			<td><%=rs.getInt("PA") %></td>
			<td><%=rs.getInt("AB") %></td>
			<td><%=rs.getInt("R") %></td>
			<td><%=rs.getInt("H") %></td>
			<td><%=rs.getInt("DOUBLE") %></td>
			<td><%=rs.getInt("TRIPLE") %></td>
			<td><%=rs.getInt("HR") %></td>
			<td><%=rs.getInt("RBI") %></td>
			<td><%=rs.getInt("SB") %></td>
			<td><%=rs.getInt("CS") %></td>
			<td><%=rs.getInt("BB") %></td>
			<td><%=rs.getInt("HBP") %></td>
			<td><%=rs.getInt("SO") %></td>
			<td><%=rs.getInt("GDP") %></td>				
			<td><%=rs.getDouble("season_avg") %></td>
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