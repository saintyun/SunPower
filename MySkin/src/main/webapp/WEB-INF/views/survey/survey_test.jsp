<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='cpath' value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>간편 피부타입테스트</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../resources/styles/bootstrap4/bootstrap.min.css">
<link href="../resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" href="../resources/plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css" href="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/single_styles.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/single_responsive.css">
<script	src="https://unpkg.com/@popperjs/core@2.9.1/dist/umd/popper.min.js"	charset="utf-8"></script>
<script src="https://unpkg.com/jquery"></script>
<script	src="https://unpkg.com/knockout@3.5.1/build/output/knockout-latest.js"></script>
<script src="https://unpkg.com/survey-knockout@1.8.58/survey.ko.min.js"></script>
<script	src="https://unpkg.com/survey-jquery@1.8.58/survey.jquery.min.js"></script>
<link href="https://unpkg.com/survey-core@1.8.58/modern.min.css" type="text/css" rel="stylesheet" />

</head>

<body>
<div class="super_container">
	<!-- Header -->
	<header class="header trans_300">
		<!-- Main Navigation -->
		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="index.html"><img src="../resources/logo/image02.png" width="150" height="60" ></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="index.html">home</a></li>
							</ul>
							<ul class="navbar_user">
								<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
								<li class="checkout">
									<a href="#">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
										<span id="checkout_items" class="checkout_items">2</span>
									</a>
								</li>
							</ul>
							<div class="hamburger_container">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Hamburger Menu -->
	<div class="hamburger_menu">
		<div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
		<div class="hamburger_menu_content text-right">
			<ul class="menu_top_nav">
				<li class="menu_item has-children">
					<a href="#">
						내 계정
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="menu_selection">
						<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>로그인</a></li>
						<li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>회원가입</a></li>
						<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>로그아웃</a></li>
						<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>구매한 상품</a></li>
					</ul>
				</li>
				<li class="menu_item"><a href="survey/survey">피부타입 재검사</a></li>
				<li class="menu_item"><a href="board/board_list">피부게시판</a></li>
				<li class="menu_item"><a href="product/product_list">상품목록</a></li>
			</ul>
		</div>
	</div>
	
	<div class="contact_container" style="width:auto; margin-top:50px;">
		<div class="container">
			<!-- breadcrumbs = 상단여백, 줄 넣기 -->
			<div class="breadcrumbs" style="margin-bottom: 10px;"></div>
			<main class="h-full overflow-y-auto">
				<div class="container px-6 mx-auto grid">
					<div id="surveyElement" style="display: inline-block; width: 100%;"></div>
					<div id="surveyResult"></div>
				</div>
			</main>
		</div>
	</div>

	<!-- Footer -->
	<footer>
		<div style="width:auto; margin-top:60px">
				<div style="text-align:center; margin:">Copyright 2021. 태양광발전소 all rights reserved.</div>
		</div>
	</footer>
</div>




	<div class="container">
		
	<div>
	<!-- JavaScript -->
	<script>
			Survey
		    .StylesManager
		    .applyTheme("modern");
			
		var json = {
		    "title": "간단 피부타입 테스트", "showProgressBar": "top", "goNextPageAutomatic": true, "showNavigationButtons": true,
		    "pages": [
		        {
		            "questions": [
		                {
		                    "type": "radiogroup",
		                    "name": "question1",
		                    "title": "모공크기",
							"isRequired": true,
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "매우 잘 보여요."
		                        }, {
		                            "value": 0,
		                            "text": "바늘 끝부분 크기 정도로 보여요."
		                        }, {
		                            "value": -1,
		                            "text": "잘 안보여요."
		                        }
		                    ]
		                }
		            ]
		        }, {
		            "questions": [
		                {
		                    "type": "radiogroup",
		                    "name": "question2",
		                    "title": "여드름",
							"isRequired": true,
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "여드름과 여드름 흉터가 많이 있어요.(과거포함)"
		                        }, {
		                            "value": 0,
		                            "text": "여드름과 여드름 흉터가 약간 있어요.(과거포함)"
		                        }, {
		                            "value": -1,
		                            "text": "거의 없어요."
		                        }
		                    ]
		                }
		            ]
		        }, {
		            "questions": [
		                {
		                    "type": "radiogroup",
		                    "name": "question3",
		                    "title": "기름기",
							"isRequired": true,
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "머리를 감으면 하루가 지나면 기름이 지고 평소 T존이 번들거려요."
		                        }, {
		                            "value": 0,
		                            "text": "머리를 감으면 이틀까지는 괜찮아요."
		                        }, {
		                            "value": -1,
		                            "text": "머리를 감고 시간이 지나도 기름지지 않고 평소 T존도 깨끗해요."
		                        }
		                    ]
		                }
		            ]
		        }, {
		            "questions": [
		                {
		                    "type": "radiogroup",
		                    "name": "question4",
		                    "title": "나이",
							"isRequired": true,
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "15세 미만"
		                        }, {
		                            "value": 0,
		                            "text": "15 ~ 24세"
		                        }, {
		                            "value": -1,
		                            "text": "25세 이상"
		                        }
		                    ]
		                }
		            ]
		        }, {
		            "questions": [
		                {
		                    "type": "radiogroup",
		                    "name": "question5",
		                    "title": "각질",
							"isRequired": true,
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "건조한 계절에 보습을 안해도 각질이 생기지 않아요."
		                        }, {
		                            "value": 0,
		                            "text": "건조한 계절에 보습을 해줘야 각질이 생기지 않아요."
		                        }, {
		                            "value": -1,
		                            "text": "여름에도 보습을 해줘야 각질이 생기지 않아요."
		                        }
		                    ]
		                }
		            ]
		        }, {
		            "questions": [
		                {
		                    "type": "radiogroup",
		                    "name": "question6",
		                    "title": "아토피 or 가려움",
							"isRequired": true,
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "아토피도 없고 따로 피부관리를 안해도 가려움증이 없어요."
		                        }, {
		                            "value": 0,
		                            "text": "아토피는 없지만 피부관리를 안하면 가려움증이 있어요."
		                        }, {
		                            "value": -1,
		                            "text": "아토피도 없고 가려움증도 없어요."
		                        }
		                    ]
		                }
		            ]
		        }
		    ],
		    completedHtml: "<p> 테스트 완료 </p>"
		};
		
		window.survey = new Survey.Model(json);
		
		var x = parseInt(0);
		var y = parseInt(0);
		var len = survey.pages.length;
		var result = "";
		
		survey
		    .onComplete
		    .add(function (sender) {
		        document
		            .querySelector('#surveyResult')
		            // .textContent = "Result JSON:\n" + JSON.stringify(sender.data, null, 3);
		        
				for(var i = 0; i < len; i++) {
					var name = "question" + (i+1);
					console.log(name);
					if(i < 3) {
						x += parseInt(survey.data[name]);
						console.log(x);
					} else {
						y += parseInt(survey.data[name]);
						console.log(y);
					}
				}
				
				if((x>-2 && x<2) && (y>-2 && y<2)) {
          			result = "중성피부";	
          		} else if(x<=0 && y>=0) {
          			result = "아기피부";
          		} else if(x<=0 && y<=0) {
          			result = "건성피부";
          		} else if(x>=0 && y>=0) {
          			result = "지성피부";
          		} else if(x>=0 && y<=0) {
          			result = "복합성피부";
          		}
				
				var url = "survey_test_result?result=" + result + "&mb_id=${members.mb_id}";
				location.href = url;
		    });
		$("#surveyElement").Survey({model: survey});
	</script>
<script src="../resources/js/jquery-3.2.1.min.js"></script>
<script src="../resources/styles/bootstrap4/popper.js"></script>
<script src="../resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="../resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="../resources/plugins/easing/easing.js"></script>
<script src="../resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="../resources/js/single_custom.js"></script>
</body>
</html>