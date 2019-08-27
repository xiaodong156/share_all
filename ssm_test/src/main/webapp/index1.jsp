<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
.b{
    width: 800px;
	height: 600px;	
	position: relative;
	padding-top: 5px;
}
.d1{
    width: 55px;
	height: 500px;	
	display: inline-block;
	position: relative;
	top: -400px;
}
.b1{
    width: 50px;
	height: 30px;
	position: relative;
	padding-top: 5px;
	
}
.b2{
    width: 50px;
	height: 30px;
	padding-top: 5px;
	position: relative;
}
.d2{
    width: 500px;
	height: 500px;
	padding-right: 50px;
	padding-top: 5px;
	display: inline-block;
	position: relative;
}
.i{
    width: 100%;
	height: 100%;
	
}
</style>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function on1(){
	$(".i").attr('src','typeindex.action');
}
function on2(){
	$(".i").attr('src','index.action');
}

</script>

</head>
<body>
<div class="b">
<div class="d1">
<button class="b1" onclick="on1()">type</button>
<button class="b2" onclick="on2()">book</button>
</div>
<div class="d2">
<iframe src="typeindex.action" class="i"></iframe>
</div>
</div>
</body>
</html>