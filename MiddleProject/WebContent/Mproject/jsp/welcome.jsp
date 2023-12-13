<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page isELIgnored="true" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1">
<meta name="format-detection" content="telephone=no">
<title>대전전시관</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/base.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/fullpage.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/layout.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/swiper.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/content.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/board.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/detail.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/tourism.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/coupon.css">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Mproject/css/main.css?ver=1.2">
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/Mproject/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Mproject/js/slide.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Mproject/js/scroll.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Mproject/js/main.js"></script>
<script src="<%=request.getContextPath()%>/Mproject/js/tourism.js"  type="text/javascript"></script>
<%

	
	String inputId = (String)session.getAttribute("LOGINID");

%>

<script>
	//로그아웃
	$(function(){
		
		$('#logout').on('click',function(){
			
			
			$.ajax({
				
				url:"<%=request.getContextPath()%>/logoutMember.do",
				type:'post',
				success: function(res) {
					alert("로그아웃 완료!")
					 location.href = "<%=request.getContextPath()%>/Mproject/jsp/welcome.jsp";
				},
				error:function(xhr){
					  alert("상태: " + xhr.status);
				}
			
			});//ajax
			
		
			
		});//온클릭	

	});//$function




</script>
</head>

<body class="main">
	<ul id="skip_navi">
		<li><a href="#content">본문 바로가기</a></li>
		<li><a href="#gnb">메인메뉴 바로가기</a></li>
	</ul>

	<div id="wrap">
		<!-- S. header -->
		<header id="header"  class="mob on"> <!-- !!!!!!!!!! -->
			<div class="inner wrap">
				<h1 class="logo">
					<a href="index.html" title="">NORI Daejeon</a>
				</h1>
				<a href="#" class="btn_menu" data-util="menu">메뉴 열기</a>
				<nav id="gnb">
					<ul class="gnb">
						<li><a href="tourisme.html" >관광정보</a></li>
						<li><a href="food.html" >맛집정보</a></li>
						<li><a href="event.html" >이벤트</a></li>
						<li><a href="celebration.html" >행사안내</a></li>
						<li><a href="community.html" >커뮤니티</a>
							<ul>
								<li><a href="/html/notice.html" class="board_notice">공지사항</a></li>
								<li><a href="/html/qa.html" class="board_Dgallery">Q&A</a></li>
							</ul>
						</li>
					</ul>
				</nav>
				<div class="util_member">
<%

	
	if(inputId!=null){
		
	

%>
<a href="#"><%=inputId %>님</a>
	<a href="#" id="logout">로그아웃</a>
<%
	}else{
		
	
%>
<a href="<%=request.getContextPath()%>/Mproject/jsp/login.jsp">로그인</a>
<a href="<%=request.getContextPath()%>/Mproject/jsp/login.jsp">회원가입</a>
<%
	}

%>


					<a href="">마이페이지</a>
				</div>
				
			</div>
		</header>
		<!-- //E. header -->

		<!-- S. visual -->
		<section class="area_visual">
			<div class="swiper-container">
				<button class="swiper-button-prev"></button>
				<button class="swiper-button-next"></button>
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="slide-inner slide-bg-image" style="background-image: url(<%=request.getContextPath()%>/Mproject/images/m02.jpg);">
							<div class="container">
								<div class="slogan">
									<p data-swiper-parallax="300" class="slide-title">볼수록 빠져드는 대전여행 이야기</p>
									<i data-swiper-parallax="400" class="slide-text">반짝반짝 빛나는 이 도시를 조금은 사랑하게 될지도<br></i>
									<a href="celebration.html" data-swiper-parallax="500" class="btn" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">행사안내보기</a>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-active" data-swiper-slide-index="0" style="width: 1903px;">
						<div class="slide-inner slide-bg-image" style="background-image: url(<%=request.getContextPath()%>/Mproject/images/m01.jpg); transform: translate3d(0px, 0px, 0px); transition: all 0ms ease 0s;">
							<div class="container">
								<div class="slogan">
									<p data-swiper-parallax="300" class="slide-title" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;"><img src="/images/main/visual_tx.svg" alt="대한민국 독도 세종에서 만나다"></p>
									<i data-swiper-parallax="400" class="slide-text" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">특별한 대전 바로여기</i>
								</div>
								<a href="celebration.html" data-swiper-parallax="500" class="btn" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">이벤트 보기</a>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
			<div class="scroll">
				<span><i>Scroll</i></span>
			</div>
			<a href="contents/02_preview/sub02.html#content" class="btn_cicle">
				<i class="fa fa-calendar"></i>나만의 일정등록
			</a>
		</section>
		<!-- //E. visual -->

		<section id="container">
			<!-- 본문 -->
			<div id="content">
				<article class="area_info">
					<div class="wrap">
						<div class="dokdo_sect" data-aos="fade-up">
							<h3>대전 어디갈까?</h3>
							<p>
								대전 관광지를 소개합니다.<br> 
							</p>
						</div>
												<div class="viewinfo_sect" data-aos="fade-up" data-aos-delay="300">
							<h3>관람안내</h3>
							<div>
								<i></i> <strong>044-999-6393</strong> <a href="">관람 문의하기</a>
							</div>
							<ul class="list_bullet">
								<li><strong>관람시간</strong>
									<p>
										화요일-토요일 9:00 ~ 17:00 <br>(점심시간 12:00~13:00, 입장마감 16:30) <span>※ 관람시간은 학교 사정에 따라 변경될 수 있습니다.</span>
									</p>
								</li>
								<li><strong>휴관안내</strong>
									<p>일요일, 월요일 및 공휴일</p>
								</li>
								<li><strong>위치</strong>
									<p>세종특별자치시 새롬서로 68 새롬고등학교 1층</p>
								</li>
							</ul>
						</div>
					</div>
				</article>
				<!-- //E. area_info -->

				<article class="area_notice" data-aos="fade-up">
					<div class="notice_inn">
						<div class="left_sect">
							<h3>행사안내</h3>
							<p>대전의 다양한 이벤트를 만나보세요</p>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
						</div>
						<div class="swiper mySwiper right_sect">
							<div class="swiper-wrapper swiper_50">
								<div class="swiper-slide mr10">
									<a href="#">
										<span class="img"><img src="<%=request.getContextPath()%>/Mproject/images/e_img01.jpg" alt=""></span>
										<i class="tag_news">news</i>
										<strong> 2023학년도 대전전시관 상반기 대전체험교실 안내 </strong>
										<p>2023학년도 상반기 대전체험교실을 다음과 같이 실시합니다.&nbsp; □ 행사안내 ◦ (기.....</p>
									</a>
								</div>
								<div class="swiper-slide">
									<a href="#">
										<span class="img"><img src="<%=request.getContextPath()%>/Mproject/images/e_img02.jpg" alt=""></span>
										<i class="tag_news">news</i>
										<strong> 2023학년도 대전전시관 대전생물 사진 전시회 개최 </strong>
										<p>2023학년도 대전전시관 대전생물 사진 전시회를 개최합니다.&nbsp; 기&nbsp; &nbs.....</p>
									</a>
								</div>
							</div>
						</div>
						<div class="swiper-pagination"></div>
					</div>
				</article>
				<!-- //E. area_notice -->

				<article class="area_banner" data-aos="fade-up">
					<div class="banner wrap">
						<a href="contents/03_guide/sub01.html#3Page">
							<h3>체험존 안내</h3>
							<p>
								대전체험관은 대한민국 동쪽 끝, <br> 우리의 대전를 만나는 체험 공간입니다.
							</p>
							<img src="images/main/icon_experience.svg" alt="">
						</a>
						<a href="contents/03_guide/sub01.html#4Page">
							<h3>영상관 안내</h3>
							<p>
								가상현실(VR)과 같은 최신 기법을 활용하여 <br> 실감형 콘텐츠 등을 적용한 대전 영상관입니다.
							</p>
							<img src="images/main/icon_theater.svg" alt="">
						</a>
					</div>
				</article>
				<!-- //E. area_banner -->
			</div>
			<!-- //E. content -->
		</section>
		<!-- //E. container -->

		
		<!-- footer -->
		<footer id="footer">
		 <a href="#" class="org qacircle mainqa"> <i class="fa fa-pencil"></i> Q&A</a>
			<div id="dokdo_bg" class="dokdo_area">
				<div id="dokdo_inn" class="wrap">

					<p>“ 아름다운 대전 ”</p>
					<div class="circle1"></div>
					<div class="circle1_1"></div>
					<div class="circle2"></div>
					<div class="circle2_1"></div>
					<i class="tx1">성심당</i>

				</div>
			</div>
			<div class="footer_inn">
				<div class="wrap">
					<address>
						<p class="copyright">© 2023 All rights reserved .</p>
					</address>
					
				</div>
			</div>
		</footer>
</body>
</html>