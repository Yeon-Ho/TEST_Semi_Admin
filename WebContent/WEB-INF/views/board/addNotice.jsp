<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <link rel="stylesheet" type="text/css"  href="/resources/css/board/board.css" >     -->
<%-- <c:import url="/WEB-INF/views/layout/header.jsp"></c:import> --%>
<c:import url="/WEB-INF/views/web_layout/header2.jsp" />
<c:import url="/WEB-INF/views/web_layout/body_nav.jsp" />
<section class="wrapper">
<div class="board">

<div class="board_top">
<!-- 	<h1 style="padding-bottom: 20px;">게시판 작성</h1> -->
</div>

<form action="/m/add/notice" method="post">
<c:set var="item" value="${user }" />

	<table class="table table-bordered" style="text-align: center">
<%-- <tr><th>아이디</th><td><c:out value="${item.userId }" /></td></tr> --%>
<%-- <tr><th>닉네임</th><td><c:out value="${item.userNick }" /></td></tr> --%>
<tr><th>제목</th><td><input type="text" name="title" style="width:100%"/></td></tr>
<tr><th colspan="2">공지</th></tr>
<tr><td colspan="2"><textarea id="content" name="content" cols="98" rows="10"></textarea></td></tr>
</table>
<div  style="float: right;">
	<button type="submit" class="btn btn-primary btn-lg" >작성</button>
	<button class="btn btn-primary btn-lg" onclick="javascript:history.go(-1)">취소</button>
</div>
</form>

</div>
</section>
<%-- <c:import url="/WEB-INF/views/layout/footer.jsp"></c:import> --%>
<c:import url="/WEB-INF/views/web_layout/footer.jsp" />