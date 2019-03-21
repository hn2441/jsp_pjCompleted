<%@page import="bean.BBSDTO"%>
<%@page import="bean.BBSDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>판매자 게시판</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<script type="text/javascript">
		<%
		BBSDAO dao = new BBSDAO();
		BBSDTO dto = new BBSDTO();
		
		String title = request.getParameter("title");
		String write = request.getParameter("write");
		int num = Integer.parseInt(request.getParameter("num"));
		request.setAttribute("num", num);
		%>
		
		//답글 등록시 값들 전달
		function input() {
			var	title = document.getElementById("title").getAttribute("value")
			var	write = document.getElementById("write").value;
			write = write.replace(/(?:\r\n|\r|\n)/g, "<br>"); //개행처리
			document.getElementById("write").value = write;
			var id2 = '<%=session.getAttribute("id2")%>';
			var num = ${num}
			
			
			location.href="bbsSave3.jsp?title=" + title + "&write=" + write + "&id2=" + id2 + "&num=" + num;
			
			alert('등록완료');
		}
		
		</script>
		
	</head>
	<body class="no-sidebar is-preload" style="color:black">
		<form action="BBS.jsp">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header" class="wrapper">

					<!-- Logo -->
						<div id="logo">
							<h1>판매자페이지</h1>
							<p>질문하고자하는 내용을 적어주세요.성실하게 답변해 드립니다.</p>
						</div>

					<!-- Nav: 사이트에서 주요한 네비게이션 역할을 하는 링크 그룹을 담을 때 사용 -->
                  
                  <nav id="nav">
                     <ul>
                        <li class="current"><a href="main.jsp">홈</a></li>
                        <li><a href="idCheck.jsp?p=m">마이페이지</a></li>
                        <li><a href="idCheck.jsp?p=c">찜 목록</a></li>
                        <li><a href="googleMap.jsp">찾아 오시는 길</a></li>
                        <li><a href="FAQ.html">고객 센터</a></li>
                        <li>|</li>
                    <%
                  /* 로그인한 세션 값 확인 */
                     if(session.getAttribute("id") == null) {
                  %>
                        <li><a href="loginPage.jsp">로그인</a></li>
                  <% 
                     } else {
                  %>
                        <li><a href="#"><%= session.getAttribute("id") %></a></li>
                        <li><a href="logout.jsp">로그아웃</a></li>
                  <%    
                     } /* end 로그인한 세션 값 확인 */
                  %>
                     </ul>
                  </nav>
            <div>
            </div>
            </section>

			<!-- Main -->
			<div id="main" class="wrapper style2">
					<div class="title">게시판</div> 
					<div class="container">
					<div style="text-align:center;">
						<table class = "bbs">
			<center>
			<input type= "text" name="title" value=<%=title %> size = "90" id="title" disabled><br>
			<textarea rows="15" cols="80" name="write" id="write">
			</textarea><br>
					<button type = "button" onclick="input();">등록</button>
					<button type = "button" onclick="location.href='BBS.jsp' ">취소</button>
			</center>
		</div>
		</div>
	</div>

</div>
</form>
	</body>
</html> 