<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sec" uri="http://www.springframework.org/security/tags" %>


<html>
<head>
	<meta charset="UTF-8">
	<title>Ham</title>
	
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
	
	<link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>
	
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>

	<!-- Best -->
	<section class="container-md mt-4 mb-5">
<!-- 		<div class="mb-5 w-50 d-flex">
			<img class="img-fluid" src="/resources/img/배너1.png"
				alt="배너이미지">
			<img class="img-fluid" src="/resources/img/배너2.png"
				alt="배너이미지">
		</div> -->
		<div id="carouselExampleControls" class="carousel slide mb-5" data-bs-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="/resources/img/배너12.png" class="d-block w-100 img-fluid" alt="...">
			    </div>

			    <div class="carousel-item">
			      <img src="/resources/img/배너34.png" class="d-block w-100 img-fluid" alt="...">
			    </div>
			  </div>
			</div>
		
		<div class="row g-1">
			<div class="d-flex align-items-center mb-4">
				<img class="me-2 mb-0" src="/resources/img/Rectangle_18.svg" alt="이미지">
				<span class="my-text fw-bold h4 m-0">Best</span>
			</div>
			<div class="row row-cols-2 row-cols-md-2 row-cols-lg-4 g-1 mt-0">
				<div class="col pe-3 pb-2">
					<div class="card" onclick="location.href='/shop/shopping_view.do?seq=${list[0].ja_seq }&rate=${list[0].rate}'">
						<img src="/resources/img/job/${list[0].ja_pic}"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title m-0">${list[0].fd_name }</h5>
							<p class="card-text m-0" style="color: #DB4444;">
							<fmt:formatNumber type="number" maxFractionDigits="3" value="${list[0].ja_salary}" />
							￥</p>
							<div class="m-0 d-flex">
								<c:forEach begin="1" end="${(list[0].rate).substring(0,1)}" varStatus="vs">
									<img src="/resources/img/Vector.svg"
									<c:if test="${vs.last }">
									class="me-1"
									</c:if>
									>
								</c:forEach>
								<span class="small">(${list[0].rate }点)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col pe-lg-3 pe-md-0 pb-2">
					<div class="card" onclick="location.href='/shop/shopping_view.do?seq=${list[1].ja_seq }&rate=${list[1].rate}'">
						<img src="/resources/img/job/${list[1].ja_pic}"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title m-0">${list[1].fd_name }</h5>
							<p class="card-text m-0" style="color: #DB4444;">
							<fmt:formatNumber type="number" maxFractionDigits="3" value="${list[1].ja_salary}" />
							￥</p>
							<div class="m-0 d-flex">
								<c:forEach begin="1" end="${(list[1].rate).substring(0,1)}" varStatus="vs">
									<img src="/resources/img/Vector.svg"
									<c:if test="${vs.last }">
									class="me-1"
									</c:if>
									>
								</c:forEach>
								<span class="small">(${list[1].rate }点)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col pe-3 pb-2">
					<div class="card" onclick="location.href='/shop/shopping_view.do?seq=${list[2].ja_seq }&rate=${list[2].rate}'">
						<img src="/resources/img/job/${list[2].ja_pic}"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title m-0">${list[2].fd_name }</h5>
							<p class="card-text m-0" style="color: #DB4444;">
							<fmt:formatNumber type="number" maxFractionDigits="3" value="${list[2].ja_salary}" />
							￥</p>
							<div class="m-0 d-flex">
								<c:forEach begin="1" end="${(list[2].rate).substring(0,1)}" varStatus="vs">
									<img src="/resources/img/Vector.svg"
									<c:if test="${vs.last }">
									class="me-1"
									</c:if>
									>
								</c:forEach>
								 <span class="small">(${list[2].rate }点)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col pe-lg-0 pe-md-0 pb-2">
					<div class="card" onclick="location.href='/shop/shopping_view.do?seq=${list[3].ja_seq }&rate=${list[3].rate}'">
						<img src="/resources/img/job/${list[3].ja_pic}"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title m-0">${list[3].fd_name }</h5>
							<p class="card-text m-0" style="color: #DB4444;">
							<fmt:formatNumber type="number" maxFractionDigits="3" value="${list[3].ja_salary}" />
							￥</p>
							<div class="m-0 d-flex">
								<c:forEach begin="1" end="${(list[3].rate).substring(0,1)}" varStatus="vs">
									<img src="/resources/img/Vector.svg"
									<c:if test="${vs.last }">
									class="me-1"
									</c:if>
									>
								</c:forEach>
								 <span
									class="small">(${list[3].rate}点)</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center w-100 mt-4 mb-4">
			<button class="btn w-25" onclick="location.href='/shop/shopping_list.do?f_seq=&page='">全体を見る</button>
		</div>
	</section>

	<!-- 기술스택 -->
	<section class="container-md mt-5">
		<div class="row g-1">
			<div class="d-flex align-items-center g-1">
				<img class="me-2 mb-0" src="/resources/img/Rectangle_18.svg" alt="이미지">
				<span class="my-text fw-bold h4 m-0">Skill</span>
			</div>
			<div class="row row-cols-7 g-1 mt-0">
				<div class="d-flex align-items-center mb-2 mt-0">
					<div class="skill-box me-4" onclick="location.href='/shop/shopping_list.do?f_seq=1&page=1';">
						<img src="/resources/img/skill/Category-Computer-no.png">
						<p class="fs-6 fw-bold m-0">개발</p>
					</div>
					<div class="skill-box me-4" onclick="location.href='/shop/shopping_list.do?f_seq=2&page=1';">
						<img src="/resources/img/skill/Category-Computer-no.png">
						<p class="fs-6 fw-bold m-0">경영·비즈니스</p>
					</div>
					<div class="skill-box me-4" onclick="location.href='/shop/shopping_list.do?f_seq=3&page=1';">
						<img src="/resources/img/skill/Category-Camera-no.png">
						<p class="fs-6 fw-bold m-0">마케팅·광고</p>
					</div>
					<div class="skill-box me-4" onclick="location.href='/shop/shopping_list.do?f_seq=4&page=1';">
						<img src="/resources/img/skill/Category-CellPhone-no.png">
						<p class="fs-6 fw-bold m-0">디자인</p>
					</div>
					<div
						class="skill-box d-sm-none d-md-flex d-lg-flex me-lg-4 me-md-0" onclick="location.href='/shop/shopping_list.do?f_seq=5&page=1';">
						<img src="/resources/img/skill/Category-Computer-no.png">
						<p class="fs-6 fw-bold m-0">영업</p>
					</div>
					<div class="skill-box me-4 d-sm-none d-md-none d-lg-flex" onclick="location.href='/shop/shopping_list.do?f_seq=6&page=1';">
						<img src="/resources/img/skill/Category-Camera-no.png">
						<p class="fs-6 fw-bold m-0">고객서비스·리테일</p>
					</div>
					<div class="skill-box d-sm-none d-md-none d-lg-flex" onclick="location.href='/shop/shopping_list.do?f_seq=7&page=1';">
						<img src="/resources/img/skill/Category-CellPhone-no.png">
						<p class="fs-6 fw-bold m-0">미디어</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- New -->
	<section class="container-md mt-5 mb-5">
		<div class="row d-flex g-1">
			<div class="d-flex align-items-center mb-4 g-1">
				<img class="me-2 mb-0" src="/resources/img/Rectangle_18.svg" alt="이미지">
				<span class="my-text fw-bold h4 m-0">New</span>
			</div>
			<div class="row g-1">
				<div class="col-6 my-img-box-left" onclick="location.href='/shop/shopping_list.do?f_seq=&page='"></div>
				<div class="col-6">
					<div class="my-img-box-right-top" onclick="location.href='/shop/shopping_list.do?f_seq=&page='"></div>
					<div class="my-img-box-right-bottom" onclick="location.href='/shop/shopping_list.do?f_seq=&page='"></div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
  $(document).ready(function () {
    $('.skill-box').mouseover(function () {

      // 클릭한 요소에 active 클래스를 추가하고 img 태그의 src 값을 "-no"에서 "-yes"로 변경
      $(this).addClass('active').find('img').attr('src', function (i, val) {
        return val.replace('-no', '-yes');
      }).siblings('p').addClass('text-white'); // text-white 클래스도 추가합니다.
    });
    
    $('.skill-box').mouseout(function() {
        // 기존에 active 클래스를 가진 요소들의 active 클래스를 제거하고 img 태그의 src 값을 "-yes"에서 "-no"로 변경
        $('.skill-box.active').removeClass('active').find('img').attr('src', function (i, val) {
          return val.replace('-yes', '-no');
        }).siblings('p').removeClass('text-white'); // text-white 클래스도 제거합니다.
    });
  });
  
</script>
</body>
</html>
