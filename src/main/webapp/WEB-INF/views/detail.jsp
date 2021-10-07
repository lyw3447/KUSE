<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KUSE</title>
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
	margin-right: 40px;
}

.fa-book {
	margin: 15px;
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
	padding: 40px;
}

.opt {
	width: auto;
	margin: 20px 10px;
}

.result {
	padding-left: 20px;
}
</style>
</head>
<body>
<div class="top">
		<h1>
			<i class="fas fa-book"
				style="font-size: 45px; padding: 7px; color: teal;"></i>KUSE
		</h1>

		<div class="search">
			<input type="text" class="text" name="text">
			<button type="submit" class="submit">
				<i class="fas fa-search"></i>
			</button>
		</div>

		<div class="option">
			<p style="font-weight: bold" class="opt">검색조건</p>
			<p class="opt">기간</p>
			<p class="opt">기관별</p>
			<p class="opt">주제별</p>
		</div>
	</div>

</body>
</html>