<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/style.css">
<script src="js/includeHTML.js"></script>
<script type="text/javascript">
	function loginalert(){
	 	alert("로그인이 필요합니다");
}
</script>
<title>검색결과</title>

</head>
<body>
	<header include-html="header.html"></header>
	<nav include-html="nav5.html"></nav>result.html
    <section include-html="record01.html"></section>
    <article include-html="footer.html"></article>
    <footer include-html="footer.html"></footer>

</body>
<script>
    includeHTML();
</script>
</html>