<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
<c:set var="path5" value="<%=request.getContextPath() %>" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>메인 페이지</title>
    <jsp:include page="/head.jsp" />
</head>
<body>
  	<jsp:include page="${path1 }/header.jsp" />
  	<div class="container" id="content">
  	<figure class="vs">
         <video src="${path5 }/data/po.mp4" autoplay muted class="vdo"></video>
     </figure>
     <div id="con1">
    	<div class="tile is-ancestor columns" style="padding-bottom:40px;">
      			<div class="tile is-3" style="box-sizing:border-box;">
			        <article class="tile is-child is-one-third notification" style="background-color:transparent; border:1px solid #eee; margin-right:10px!important;">
			          <p class="title">호미곶 일출</p>
			          <p class="subtitle">
			 			<span>관광</span>
						</p>
			          <figure class="image is-4by3">
			            <img src="${path5 }/data/temp_1580271570703100.jpg" alt="호미곶 일출">
			          </figure>
			          <div class="content" style="margin:10px;">
			          	<p class="item_com">호미곶 해맞이 광장은 새천년 한민족해맞이 축전 개최 장소로 약48,000㎡의 부지에 새천년기념관, 상생의 손, 성화대, 불씨함, 연오랑세오녀상, 햇빛채화기, 공연장, 주차장 등이 있으며, 광장 진입로에 조성된 유채꽃 단지에는 매년 4월~5월경에 만개하는 유채꽃밭의 노란물결이 장관을 이룬다. 상생의 손은 사람의 양손을 청동으로 만들어 바다와 육지에 서로 마주보는 형상으로 각각 설치하여 상생과 화합을 상징하고 있다.</p>
			          </div>
			          <a href="${path5 }/GetTourDetailCtrl.do?no=4" class="button is-primary">자세히 보기</a>
			        </article>
			      </div>
				
			      <div class="tile is-3" style="box-sizing:border-box;">
			        <article class="tile is-child is-one-third notification" style="background-color:transparent; border:1px solid #eee; margin-right:10px!important;">
			          <p class="title">내연산 12폭포 비경</p>
			          <p class="subtitle">
			 			<span>관광</span>
						</p>
			          <figure class="image is-4by3">
			            <img src="${path5 }/data/temp_1580272038710100.jpg" alt="내연산 12폭포 비경">
			          </figure>
			          <div class="content" style="margin:10px;">
			          	<p class="item_com">경북 포항시 북구 송라면의 동북쪽에 위치한 내연산(710m)은 12개의 폭포를 간직하고 있으며, 해발고도만 따지면 그다지 높은 산은 아니다. 하지만 해안 가까이에 솟아올라 있어 내륙의 엇비슷한 높이의 산보다는 휠씬 더 높고 우뚝해 보인다. 이 내연산 자락을 굽이굽이 감돌며 40리 가량 흘러내리는 골짜기가 바로 청하골이다. 내연산말고도 문수산(622m), 향로봉(930m), 삿갓봉(718m), 천령산(775m)등의 높직한 준봉들이 반달모양으로 둘러져 있어서 청하골은 여느 심산유곡 못지않게 깊고 그윽하다. 특히 이곳에는 폭포와 소(沼)가 많기도 하거니와 이곳처럼 다양한 형태의 폭포를 한자리에서 볼 수 있는 곳도 달리 찾기가 어렵다.</p>
			          </div>
			          <a href="${path5 }/GetTourDetailCtrl.do?no=8" class="button is-primary">자세히 보기</a>
			        </article>
			      </div>
			      <div class="tile is-3" style="box-sizing:border-box;">
			        <article class="tile is-child is-one-third notification" style="background-color:transparent; border:1px solid #eee; margin-right:10px!important;">
			          <p class="title">스틸아트페스티벌 2020</p>
			          <p class="subtitle">
			 			<span>행사</span>
						
					</p>
			          <figure class="image is-4by3">
			            <img src="${path5 }/data/temp_1591685343073100.jpg" alt="스틸아트페스티벌 2020">
			          </figure>
			          <div class="content" style="margin:10px;">
			          	<p class="item_com">사람과 철의 만남, 도시와 새로운 예술과의 만남 포항스틸아트페스티벌 포항스틸아트페스티벌은 연오랑세오녀 일월신화에서부터 파이넥스 공법으로 세계철강사를 다시 쓰고 있는 포스코의 성공신화에 이르기까지, 포항역사의 시공간에 걸친 철의 문화적 코드를 예술 및 문화활동과 융합한 Steel Art 축제입니다. Steel의 문화화를 통한 지역문화 콘텐츠 구축과 창조도시의 가치를 발굴하기 위해 매년 열립니다. 포항만의 문화와 철학을 담은 세계유일의 스틸축제, 시민들이 자유롭게 스틸작품을 접하고 즐기며 소유하는 생활 속의 축제가 바로 포항스틸아트페스티벌의 차별 지점이자 자랑입니다. 따라서, 이 축제는 사람을 불러 모으는 창조적 Steel Convention City의 기반을 조성하며 Steel을 매개로 지역문화와 예술, 과학과 첨단산업이 생태계를 이루는 Network를 구축하는데 방점을 찍고 있습니다.</p>
			          </div>
			          <a href="${path5 }/GetTourDetailCtrl.do?no=5" class="button is-primary">자세히 보기</a>
			        </article>
			      </div>
			      <div class="tile is-3" style="box-sizing:border-box;">
			        <article class="tile is-child is-one-third notification" style="background-color:transparent; border:1px solid #eee; margin-right:10px!important;">
			          <p class="title">구룡포 과메기</p>
			          <p class="subtitle">
			 			<span>음식</span>
						 </p>
			          <figure class="image is-4by3">
			            <img src="${path5 }/data/temp_1591680880112100.jpg" alt="구룡포 과메기">
			          </figure>
			          <div class="content" style="margin:10px;">
			          	<p class="item_com">청정해역에서 갓 잡은 신선한 꽁치를 섭씨 영하10℃의 냉동상태로 두었다가, 겨울철 바깥에 내다걸어 자연상태에서 냉동과 해동을 거듭하여 말린것으로, 옛날 궁중의 고단백 식품으로 불포화 지방산인 EPA와 DHA함량이 많으며 맛 또한 일품이다.

과메기는 말린 청어인 ‘관목청어(貫目靑魚)'에서 나온 말이다. 꼬챙이 같은 것으로 청어의 눈을 뚫어 말렸다는 뜻이다. 영일만에서는‘목'이란 말을 흔히 ‘메기' 또는 ‘미기'로 불렀다. 이 때문에 ‘관목'은‘관메기'로 불리다가 오랜 세월을 지나면서 ‘관'의 ㄴ받침이 탈락되고‘과메기'가 되었다.

동해에는 예로부터 청어잡이가 활발해 겨우내 잡힌 청어를 냉훈법이란 독특한 방법으로 얼렸다 녹였다 하면서 건조 시킨 것이 과메기이며 청어과메기의 건조장은 농가부엌의 살창이라는 것이었다. 농촌에서는 밥을 지을 때 솔가지를 많이 때는데 이 살창은 솔가지를 땔 때 빠져 나가게 하는 역할을 했다.

이 살창에 청어를 걸어두면 적당한 외풍으로 자연스럽게 얼었다 녹았다</p>
			          </div>
			          <a href="${path5 }/GetTourDetailCtrl.do?no=3" class="button is-primary">자세히 보기</a>
			        </article>
			      </div>
			</div>
      	</div>
					
		    	
				
			</div>
      	</div> 
	<jsp:include page="${path1 }/footer.jsp" />
	</div>
</body>
</html>