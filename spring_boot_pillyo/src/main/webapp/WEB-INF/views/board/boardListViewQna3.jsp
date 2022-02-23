<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://code.jquery.com/jquery-latest.min.js"></script>


		<link href="<c:url value='/css/board/board.css'/>" rel="stylesheet" type="text/css">	

		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>


<title>Insert title here</title>

</head>



<body>

<div id="wrap">
			
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
			<div id="navMargin"></div>
			
			<section id="section">
			
			

	<div class="boardBody">
	
	<div class="ctgMenuBox">
		<div class="ctgMenuItem"><a href="<c:url value='/listAllBoard'/>">알약요 소식</a></div>
		<div class="ctgMenuItem"><a href="<c:url value='/listAllBoardQna'/>">자주 묻는 질문</a></div>
		</div>
	<div class="ctgMenuItemtotal">
		<div class="ctgMenuItemSub">
		<a href="<c:url value='/listAllBoardQna2'/>">주문/결제</a></div>
		<div class="ctgMenuItemSub">
		<a href="<c:url value='/listAllBoardQna3'/>">교환/반품</a></div>
		<div class="ctgMenuItemSub">
		<a href="<c:url value='/listAllBoardQna4'/>">제품</a></div>
		<div class="ctgMenuItemSub">
		<a href="<c:url value='/listAllBoardQna5'/>">회원</a>
	</div>	
	</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th style="width:90px;">분류</th>
					<th style="width:470px;">제목</th>
					<!-- <th style="background-color: #eeeeee; text-align: center; width:100px;">작성자</th> -->
					<th style="width:100px;">작성일</th>
 				</tr>
			</thead>
			<tbody>
			<c:forEach items="${boardListQna}" var="board">
			   <tr>
					<td>
						<c:if test="${board.boardCtgNo eq '3'}">교환/반품</c:if>
					</td> 
					<!-- each는 반복 리스트에서 board가 없어질때 까지 반복 한다는 뜻  -->
					<td><a href="<c:url value='/boardDetailView/${board.boardNo}'/>">${board.boardTitle }</a></td>
			<%-- 		<td>${board.userId}</td>  --%>
					<td>${board.boardWriteDate}</td> 
					
				</tr>
		   </c:forEach>
			</tbody>
		</table>
		
		<a href="<c:url value = '/boardForm'/>"><button>글쓰기</button></a>
		
	
		</div>
		<br><br><br><br><br><br><br><br><br><br>
		

	</section>
	        
			<!-- BOTTOM  -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
		
      </div> <!-- wrap -->
			
</body>
</html>