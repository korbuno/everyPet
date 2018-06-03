<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/jsp/include/include.jsp" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.2/css/swiper.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/lib/my/main.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.2/js/swiper.min.js"></script>
</head>
<body>
	<!-- header -->
	<c:import url="/WEB-INF/jsp/include/header.jsp" />

	<div id="body1">
		<!-- body - 1 -->
		<div class="row" id="imgslider">
			<div class="body col-md-12 col-xs-12 col-sm-12">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/img/mainSlide1.jpg" />
						</div>
						<div class="swiper-slide">
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/img/mainSlide2.jpg" />
						</div>
						<div class="swiper-slide">
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/img/mainSlide3.jpg" />
						</div>
						<div class="swiper-slide">
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/img/mainSlide4.jpg" />
						</div>
						<div class="swiper-slide">
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/img/mainSlide5.jpg" />
						</div>
						<div class="swiper-slide">
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/img/mainSlide6.jpg" />
						</div>
						<div class="swiper-slide">
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/img/mainSlide7.jpg" />
						</div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</div>
	</div>

	<!-- body-2 -->
	<div id="body2">
		<div class="row" id="menu_container_first_line">
			<div class="row col-md-12 col-xs-12 col-sm-12">
				<div class="col-md-3 col-xs-3 col-sm-3">
					<i class="fas fa-map-marker-alt fa-3x"></i>
					<p>동물병원</p>
				</div>
				<div class="col-md-3 col-xs-3 col-sm-3">
					<i class="fas fa-medkit fa-3x"></i>
					<p>동물약국</p>
				</div>
				<div class="col-md-3 col-xs-3 col-sm-3">
					<i class="fas fa-home fa-3x"></i>
					<p>보호센터</p>
				</div>
				<div class="col-md-3 col-xs-3 col-sm-3">
					<i class="fas fa-plus-square fa-3x"></i>
					<p>구조치료</p>
				</div>
			</div>
		</div>
		<div class="row" id="menu_container_second_line">
			<div class="row col-md-12 col-xs-12 col-sm-12">
				<div class="col-md-3 col-xs-3 col-sm-3">
					<i class="far fa-question-circle fa-3x"></i>
					<p>지식인</p>
				</div>
				<div class="col-md-3 col-xs-3 col-sm-3">
					<i class="fas fa-camera fa-3x"></i>
					<p>갤러리</p>
				</div>
				<div class="col-md-3 col-xs-3 col-sm-3">
					<i class="fas fa-heart fa-3x"></i>
					<p>분양</p>
				</div>
				<div class="col-md-3 col-xs-3 col-sm-3">
					<i class="fas fa-comments fa-3x"></i>
					<p>게시판</p>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<script
		src="${pageContext.request.contextPath}/lib/jquery/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/waitme/waitMe.min.js"></script>
	<script>
		$(document).ready(function() {
			//initialize swiper when document ready
			var mySwiper = new Swiper('.swiper-container', {
				// Optional parameters
				// 			direction : 'horizontal',
				// 				autoHeight : true,
				roundLengths : true,
				autoplay : {
					delay : 5000,
				},
				pagination : {
					el : '.swiper-pagination',
				},
				loop : true
			})
		});
	</script>
</body>
</html>