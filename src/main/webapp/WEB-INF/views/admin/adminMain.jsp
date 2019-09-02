<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css 시작 -->
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/admin/frist.css">
<!-- css 끝 -->

<!-- js 시작 -->

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="resources/js/admin/frist.js"></script>

<!-- js 끝 -->
</head>
<body>
<!-- 헤더 부름 -->

<c:import url="../admin/adminheader.jsp"/>
<!-- 헤더 끝 -->

<!-- 세션 영역 추가 하면 됨 -->
<section class="semanue">
	<!-- 이안에 작성 해야 합니다. -->
	<div class="warp">
		<div class="content_top_wrap">
			<div class="content_top">
				<!-- 시작점 -->
				<div class="present_summary_wrap">
				<!-- 판매 현황 -->
				<div class="sale_summary_wrap">
                    <div class="present_summary_bx">
                        <div class="title">
                            <span>판매 현황</span>
                            <span><img src="resources/img/admin/Refresh.png"></span>
                            <span class="summary_mini_title">최근 1개월</span>
                        </div>
                        <div class="items">
                            <div id="sale_summary_new_order">
                                <div class="items_tit">결제완료</div>
                                <div class="items_count">
                                    <span>0</span>
                                    <span>건</span>
                                </div>
                            </div>
                            <div id="sale_summary_product_prepare">
                                <div class="items_tit">도시락</div>
                                <div class="items_count">
                                    <span>0</span>
                                    <span> 건</span>
                                </div>
                            </div>
                            <div id="sale_summary_delivery_prepare">
                                <div class="items_tit">샐러드</div>
                                <div class="items_count">
                                    <span>0</span>
                                    <span>건</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			<!--판매 현황 끝 -->
			
			<!-- 상품 현황 -->
			<div class="product_summary_wrap">
                    <div class="present_summary_bx">
                        <div class="title">
                            <span>상품 현황</span>
                           	<span><img src="resources/img/admin/Refresh.png"></span>
                            <span class="summary_mini_title">최근 1년</span>
                        </div>
                        <div class="items">
                            <div id="product_summary_onsale">
                                <div class="items_tit">판매중 상품</div>
                                <div class="items_count">
                                    <span>1</span>
                                    <span> 건</span>
                                </div>
                            </div>
                            <div id="product_summary_out_of_stock">
                                <div class="items_tit">품절상품</div>
                                <div class="items_count">
                                    <span>1</span>
                                    <span> 건</span>
                                </div>
                            </div>
                            <div id="product_summary_stock_under_ten">
                                <div class="items_tit">할인 상품</div>
                                <div class="items_count">
                                    <span>0</span>
                                    <span> 건</span>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
	<!-- 상품현황 끝 -->
	<!-- 취소 반품 -->
	 <div class="claim_summary_wrap">
                    <div class="present_summary_bx">
                        <div class="title">
                            <span>취소/반품 현황</span>
                        	<span><img src="resources/img/admin/Refresh.png"></span>
                            <span class="summary_mini_title">최근 3개월</span>
                           
                        </div>
                        <div class="items">
                            <div id="claim_summary_cancel_request_count">
                                <div class="items_tit">취소주문</div>
                                <div class="items_count">
                                    <span>0</span>
                                    <span>건</span>
                                </div>
                            </div>
                            <div id="claim_summary_return_request_count">
                                <div class="items_tit">반품주문</div>
                                <div class="items_count">
                                    <span>0</span>
                                    <span>건</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
	<!-- 취소 반품 끝 -->
	<!-- 상품 문의 -->
	 <div class="qs_summary_wrap">
                    <div class="present_summary_bx">
                        <div class="title">
								<span class="ps_title">상품문의</span>
                                <span class="ps_blind">더보기</span>
                                <span class="summary_mini_title">최근 1년</span>
                        </div>
                         <div class="product_inquiry_content_wrap">
                            <div class="items">
                            	<ul class="summaryul">
                                	<li class="summaryli">
                                		<span class="ps_li le">미답변 문의</span>
                                		<span class="ps_li ri">0</span>
                                	<li>
									<li>                                	
                                		<span class="ps_li le">전체문의 내역</span>
										<span class="ps_li ri">0</span>
									<li>
								</ul>	
                            </div>
                        </div>
                    </div>
                </div>
	<!-- 상품문의 끝 -->
			</div>
		</div>
	</div>
</div>
<!-- 아래 부분 -->
<div class="botwrap">
	 <div class="content_bot_wrap">
	 	<!-- 회사 매출 -->
	 	<div class="com profit">
	 	<h3>회사 수입</h3>
	 		<ul class="botul">
	 			<li>
	 				<span>금일 수입</span>
	 				<span class="sprofit">1000</span>
	 			</li>
	 			<li>
	 				<span>월 수입</span>
	 				<span class="sprofit">1000000</span>
	 			</li>
	 			<li>
	 				<span>금년 수입</span>
	 				<span class="sprofit">10000000</span>
	 			</li>
	 			
	 		</ul>
	 	</div>
	 	<!-- 회사 매출 끝 -->
	 	
	 	<!-- 공지사항 -->
	 	<div class="com notice">
	 		<h3>공지 사항</h3>
	 		<div class="notice_content_wrap">
	 			<table class="notice_table">
	 				<tbody class="notice_nobody_table">
	 				<c:forEach var ="i" begin="0" end="5">
	 					<tr>
	 						<td class="notice_left"><span class="notice_title">[SNS마켓 성장지원 프로젝트] 제 2의 스타일난다를 찾습니다!</span></td>
	 						<td class="notice_right"><span class="notice_date">2019-09-21</span></td>
	 					</tr>	
	 					</c:forEach>		
	 				</tbody>
	 			</table>
	 		</div>
	 		
	 	</div>
	 	<!-- 공지사항 끝 -->
	 	
	 	
	 	
	</div> 
</div>
</section>


</body>
</html>