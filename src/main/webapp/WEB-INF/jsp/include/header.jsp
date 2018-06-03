<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row" id="header">
	<nav class="navbar navbar-static-top col-md-12">
		<div class="container-fluid">
			<div class="row">
				<div class="navbar-header col-xs-4 col-md-4 col-sm-4">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"> <i
								class="fas fa-bars fa-4x"></i>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a
									href="${pageContext.request.contextPath}/main/main.do">메인</a></li>
								<li><a
									href="${pageContext.request.contextPath}/map/map.do?code=1">동물병원
										위치</a></li>
								<li><a
									href="${pageContext.request.contextPath}/map/map.do?code=2">동물약국
										위치</a></li>
								<li><a
									href="${pageContext.request.contextPath}/map/map.do?code=3">보호센터
										위치</a></li>
								<li><a
									href="${pageContext.request.contextPath}/map/map.do?code=4">구조기관
										위치</a></li>
								<li><a href="#">반려동물 지식인</a></li>
								<li><a href="${pageContext.request.contextPath}/gallary/gallary.do">반려동물 갤러리</a></li>
								<li><a href="#">분양 게시판</a></li>
								<li><a href="#">자유 게시판</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="col-xs-4 col-md-4 col-sm-4" id="logo">
					<p class="navbar-text">모두의 펫</p>
				</div>
				<div class="col-xs-4 col-md-4 col-sm-4" id="member">
					<p class="navbar-text navbar-right">
						<a href="#" data-toggle="modal" data-target="#login-modal"> <i
							class="fas fa-user-circle fa-4x"></i>
						</a>
					</p>
				</div>
			</div>
		</div>
	</nav>
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog">
			<div class="loginmodal-container">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h1>로그인</h1>
				<br>
				<form>
					<input type="text" name="user" placeholder="아이디"> <input
						type="password" name="pass" placeholder="비밀번호"> <input
						type="submit" name="login" class="login loginmodal-submit"
						value="Login">
				</form>
				<div class="login-help">
					<a href="#" class="close" data-dismiss="modal" data-toggle="modal"
						data-target="#signup-modal">회원가입</a>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="signup-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog">
			<div class="signupmodal-container">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h1>회원가입</h1>
				<br>
				<form>
					<input type="text" name="user" placeholder="아이디">
					<p>아이디는 영문 혹은 숫자만 사용가능합니다.</p>
					<input type="password" name="pass" placeholder="비밀번호"> <input
						type="text" name="name" placeholder="이름"> <input
						type="submit" name="login" class="login loginmodal-submit"
						value="가입하기">
				</form>
			</div>
		</div>
	</div>
</div>

