<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.searchBoard th{
width:200px;
}


</style>
</head>
<body>

<c:import url="../adminheader.jsp"/>

<div style="margin-left:250px">
<h1>주문 통합 리스트</h1>


<div style="border:1px solid black; width: 100%;height: 300px; ">
<div style="" id="dropdown">
 <table style='border-width:1px; border-collapse:collapse;' border="1" class="searchBoard"> 
<tr>
<th> 검색어 </th>
<td>
  <select id="searchForm">
  <option value="allSearch">통합검색</option>
  <option value="Paynum">상품번호</option>
  <option value="PayName">상품명</option>
  <option value="hhhh">주문자아이디</option>
  <option value="audi">주문자번호</option>
</select>
</td>

<td>
<input type="text" value="222" style="">	
</td>
</tr>

<tr>
<td>


</td>	
</tr>
<tr>
<td>
<input type="text" >
</td>
</tr>
</table>
		
</div>



</div>
<div style="border:1px solid black; width: 100% ;height: 500px; margin-top:30px">


</div>


</div>






</body>
</html>