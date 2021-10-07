<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KUSE</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">

<!--CDN 링크 -->

<style>
body {
	padding: 15px;
}

.top {
	display: flex;
	width: 65%;
}

h1 {
	width: auto;
	margin-right: 45px;
	margin-left: 50px;
	margin-top: 7px;
}

.fa-book {
	margin: 13px;
}

form {
	display:flex;
}

.search {
	background-color: rgb(200, 200, 200);
	width: 370px;
	height: 35px;
	margin: auto;
	border-radius: 5px;
}

.text {
	width: 310px;
	padding: 4px;
	border: none;
	border-radius: 5px;
	margin: 2px 5px;
	background-color: rgb(240, 240, 240);
}

input[type="submit"] {
	color: rgb(240, 240, 240);
}

.submit {
	border: none;
	font-size: 20px;
	padding-top: 4px;
}

button {
	background: none;
}

.option {
	display: flex;	
	margin: auto;
}

.opt {
	width: auto;
	margin: 20px 10px;
}

.result {
	padding-left: 20px;
	margin-bottom: 20px;
}

.list {
	width: 75%;
	border: 2px solid lightgrey;
	margin-left: 20px;
	padding: 10px;
}

.tw {
	display: inline-flex;
}

.l_title {
	width: fit-content;
	font-weight: bold;
	font-size: 25px;
	margin: 10px 20px;
}

.l_writer {
	width: fit-content;
}

.l_body, .l_url {
	margin: 15px 20px;
}

.line {
	border: 1px solid lightgrey;
}

.list_top {
	display: flex;
}

a {
	color: black;
	text-decoration: none;
}

</style>

</head>
<body>

	<div class="top">
		<h1>
			<a href="./"> <i class="fas fa-book"
				style="font-size: 45px; padding: 7px; color: teal;"></i>KUSE
			</a>
		</h1>

		<form action="search">
			<div class="search">
				<input type="text" class="text" name="keyword" value="${keyword}">
				<button type="submit" class="submit"
					onclick="location.href='/search?keyword=${encodedKeyword}'">
					<i class="fas fa-search"></i>
				</button>
			</div>
			
			<div class="option">
				<p style="font-weight: bold" class="opt">검색 개수</p>
				<select class="form-control form-control-sm" name="count" id="count" style="height:25px; margin-top:15px;">
					<option value="10">10</option>
					<option value="30">30</option>
					<option value="50">50</option>
					<option value="100">100</option>
				</select>
			</div>

		</form>

		<!-- <div class="option">
			<p style="font-weight: bold" class="opt">검색조건</p>
			<p class="opt">기간</p>
			<p class="opt">기관별</p>
			<p class="opt">주제별</p>
		</div> -->
	</div>


	<div class="list">
		<p style="margin-left:20px;"><b>${keyword}</b> 을/를검색한 결과 ${count}개입니다. 내용을 클릭하시면 해당 URL로 이동합니다.</p>
		<c:forEach items="${list}" var="emp">
			<c:if test="${emp.fileURL ne null}">
				<div onclick="location.href='${emp.fileURL}'"
					style="cursor: pointer;">
					<div class="list_top">
						<p class="l_title">${emp.title}</p>

						<p class="l_writer">${emp.writer}</p>
					</div>
					<p class="l_body">${emp.body}</p>
				</div>
				<div class="line"></div>
			</c:if>
		</c:forEach>
	</div>


</body>
</html>