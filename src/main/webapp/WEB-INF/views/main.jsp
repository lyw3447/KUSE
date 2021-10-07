<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KUSE</title>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<!--CDN 링크 -->

<style>
.content {
	text-align: center;
	margin-top: 20%;
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
	display: inline-flex;
	margin: 5px;
}

.opt {
	width: auto;
	margin: 20px 10px;
}

select {
	margin: 17px;
	height: 25px;
}
</style>
</head>
<body>
	<div class="content">
		<h1>
			<i class="fas fa-book"
				style="font-size: 50px; padding: 7px; color: teal;"></i> KUBIC Data
			Search Engine
		</h1>

		<form action="search">
			<div class="search">
				<input type="text" class="text" name="keyword" value="${keyword}">
				<button type="submit" class="submit" onclick="location.href='/search?keyword=${encodedKeyword}&count=${count}'">
					<i class="fas fa-search"></i>
				</button>
			</div>
			
			<div class="option">
				<p style="font-weight: bold" class="opt">검색 개수</p>
				<select class="form-control form-control-sm" name="count" id="count">
					<option value="10">10</option>
					<option value="30">30</option>
					<option value="50">50</option>
					<option value="100">100</option>
				</select>
				
			<!-- <div class="option">
				<p style="font-weight: bold" class="opt">검색조건</p>
				<p class="opt">기간</p>
				<p class="opt">기관별</p>
				<p class="opt">주제별</p>
			 -->
			</div>
		</form>
	</div>


</body>
</html>