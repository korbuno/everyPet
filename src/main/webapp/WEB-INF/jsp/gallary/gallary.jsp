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
	href="${pageContext.request.contextPath}/lib/my/gallary.css">
</head>
<body>
	<!-- header -->
	<c:import url="/WEB-INF/jsp/include/header.jsp" />

	<div class="btn-row">
		<button class="btn btn-default" type="button" data-toggle="collapse" href="#writeForm">글쓰기</button>
	</div>
	<div class="form-group" id="writeForm" aria-expanded="false">
		<textarea rows="5" class="desc" placeholder="나누고자 하는 이야기를 올려보세요."></textarea>
		<div class="write-btn-row">
			<div class="write">작성</div>
			<div class="write" onclick="closeWriteForm();">취소</div>
		</div>
	</div>
	<div class="timeline">
		<div class="timeline-items">
			<div class="row">
				<div class="item">
					<div class="item-content">
						<div class="item-icon">
							<div class="icon fa fa-clock-o"></div>
						</div>
						<div class="content">
							<p class="paragraph">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry.</p>
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/img/mainSlide7.jpg">
						</div>
					</div>
					<div class="author">
						<p class="paragraph">
							By Mahmoud Zohdi <br> Jul 7
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="item">
					<div class="item-content">
						<div class="item-icon">
							<div class="icon fa fa-clock-o"></div>
						</div>
						<div class="content">
							<p class="paragraph">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry.</p>
						</div>
					</div>
					<div class="author">
						<p class="paragraph">
							By Mahmoud Zohdi <br> Jul 7
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="item">
					<div class="item-content">
						<div class="item-icon">
							<div class="icon fa fa-clock-o"></div>
						</div>
						<div class="content">
							<p class="paragraph">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry. Lorem Ipsum is simply dummy
								text of the printing and typesetting industry. Lorem Ipsum is
								simply dummy text of the printing and typesetting industry.</p>
						</div>
					</div>
					<div class="author">
						<p class="paragraph">
							By Mahmoud Zohdi <br> Jul 7
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="item">
					<div class="item-content">
						<div class="item-icon">
							<div class="icon fa fa-clock-o"></div>
						</div>
						<div class="content">
							<p class="paragraph">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry.</p>
						</div>
					</div>
					<div class="author">
						<p class="paragraph">
							By Mahmoud Zohdi <br> Jul 7
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="item">
					<div class="item-content">
						<div class="item-icon">
							<div class="icon fa fa-clock-o"></div>
						</div>
						<div class="content">
							<p class="paragraph">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry.</p>
						</div>
					</div>
					<div class="author">
						<p class="paragraph">
							By Mahmoud Zohdi <br> Jul 7
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="item">
					<div class="item-content">
						<div class="item-icon">
							<div class="icon fa fa-clock-o"></div>
						</div>
						<div class="content">
							<p class="paragraph">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry. Lorem Ipsum is simply dummy
								text of the printing and typesetting industry.</p>
						</div>
					</div>
					<div class="author">
						<p class="paragraph">
							By Mahmoud Zohdi <br> Jul 7
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="item">
					<div class="item-content">
						<div class="item-icon">
							<div class="icon fa fa-clock-o"></div>
						</div>
						<div class="content">
							<p class="paragraph">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry.</p>
						</div>
					</div>
					<div class="author">
						<p class="paragraph">
							By Mahmoud Zohdi <br> Jul 7
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="item">
					<div class="item-content">
						<div class="item-icon">
							<div class="icon fa fa-clock-o"></div>
						</div>
						<div class="content">
							<p class="paragraph">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry.</p>
						</div>
					</div>
					<div class="author">
						<p class="paragraph">
							By Mahmoud Zohdi <br> Jul 7
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/lib/jquery/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
	<script>
		function openWriteForm() {
			var form = $("div.write-form");
			form.css("display", "flex");
		}
		function closeWriteForm() {
			var form = $("div.write-form");
			form.css("display", "none");
		}
	</script>
</body>
</html>