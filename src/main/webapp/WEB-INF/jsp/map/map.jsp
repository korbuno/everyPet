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
	href="${pageContext.request.contextPath}/lib/my/customSearchInput.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/lib/my/map.css">
</head>
<body>
	<!-- header -->
	<c:import url="/WEB-INF/jsp/include/header.jsp" />

	<div class="row" id="select_type">
		<div class="col-md-12" style="text-align: center;">
			<div class="btn-group" data-toggle="buttons">
				<label class="btn btn-success" data-name="reqDataHosptl"
					data-code="1"> <input type="checkbox" autocomplete="off">동물병원<span
					class="fa fa-check "></span>
				</label> <label class="btn btn-primary" data-name="reqDataMedicene"
					data-code="2"> <input type="checkbox" autocomplete="off">동물약국<span
					class="fa fa-check"></span>
				</label> <label class="btn btn-info" data-name="reqDataCenter" data-code="3">
					<input type="checkbox" autocomplete="off">보호센터<span
					class="fa fa-check"></span>
				</label> <label class="btn btn-danger" data-name="reqDataRescue"
					data-code="4"> <input type="checkbox" autocomplete="off">구조치료<span
					class="fa fa-check"></span>
				</label>
			</div>
		</div>
	</div>

	<div class="row" id="search_bar">
		<div class="col-md-12" style="text-align: center;">
			<div id="custom-search-input">
				<div class="input-group col-md-12" style="text-align: center;">
					<input type="text" class="form-control input-lg"
						placeholder="검색어를 입력하세요" /> <span class="input-group-btn">
						<button class="btn btn-info btn-lg" type="button">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>


	<div class="row" style="text-align: center; padding: 3%;">
		<div id="map" class="col-md-12" style="height: 40em;"></div>
	</div>

	<script
		src="${pageContext.request.contextPath}/lib/jquery/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/waitme/waitMe.min.js"></script>
	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=60b26c32d1cd4992b41cf22433f0ec1e&libraries=clusterer"></script>
	<script>
var getParameters = function (paramName) {
    // 리턴값을 위한 변수 선언
    var returnValue;

    // 현재 URL 가져오기
    var url = location.href;

    // get 파라미터 값을 가져올 수 있는 ? 를 기점으로 slice 한 후 split 으로 나눔
    var parameters = (url.slice(url.indexOf('?') + 1, url.length)).split('&');

    // 나누어진 값의 비교를 통해 paramName 으로 요청된 데이터의 값만 return
    for (var i = 0; i < parameters.length; i++) {
        var varName = parameters[i].split('=')[0];
        if (varName.toUpperCase() == paramName.toUpperCase()) {
            returnValue = parameters[i].split('=')[1];
            return decodeURIComponent(returnValue);
        }
    }
};
function setMapData(map, url) {
	$('body').waitMe({
		effect : 'win8',
		text : '데이터 로딩중입니다.',
		bg : 'rgba(255,255,255,0.7)',
		color : '#000'
	});
	$.ajax({
		url : `${pageContext.request.contextPath}`
				+ url,
		data : {
			"code" : code,
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(key, val) {
				var marker = new daum.maps.Marker({
					map : map,
					position : new daum.maps.LatLng(val["lat"], val["lng"]),
					image : new daum.maps.MarkerImage(
							"http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png",
							new daum.maps.Size(24, 35))
				});
				
				var content = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            '            '+val['name']+  
	            '            <div class="close" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">'+val['addr']+'</div>' + 
	            '                <div class="jibun ellipsis">'+val['state']+'</div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';
	            
	            var overlay = new daum.maps.CustomOverlay({
	                content: content,
	                position: marker.getPosition()       
	            });
	            
	         	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	            daum.maps.event.addListener(marker, 'click', function() {
	            	overlay.setMap(map);
	            	$("div.close").on("click", function() {
	            		overlay.setMap(null);
	            	});
	            });
				
			    switch(code) {
			    case 1:
			    	hosptlMarkerArr.push(marker);
			    	break;
			    case 2:
			    	mediceneMarkerArr.push(marker);
			    	break;
			    case 3:
			    	centerMarkerArr.push(marker);
			    	break;
			    case 4:
			    	rescueMarkerArr.push(marker);
			    	break;
			    }
			});
			$('body').waitMe('hide');
		}
	});
}

function hideMapData(code) {
	switch(code) {
	case 1:
		for(let val of hosptlMarkerArr) {
			val.setMap(null);
		}
		break;
	case 2:
		for(let val of mediceneMarkerArr) {
			val.setMap(null);
		}
		break;
	case 3:
		for(let val of centerMarkerArr) {
			val.setMap(null);
		}
		break;
	case 4:
		for(let val of rescueMarkerArr) {
			val.setMap(null);
		}
		break;
	}
}
var code = parseInt(getParameters('code').trim());
var hosptlMarkerArr = [], mediceneMarkerArr = [], centerMarkerArr = [], rescueMarkerArr = [];
	if (navigator.geolocation) { // GPS를 지원하면
		navigator.geolocation.getCurrentPosition(function(position) {
			$("div.btn-group > label.btn:nth-child("+code+")").addClass("active");
			var nowPos = new daum.maps.LatLng(position.coords.latitude,
					position.coords.longitude);
			// 지도 옵션
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center : nowPos, //지도의 중심좌표.
				level : 5,
				scrollwheel : false
			};
			var map = new daum.maps.Map($('div#map')[0], options); //지도 생성 및 객체 리턴
			// 컨트롤러
			map.addControl(new daum.maps.MapTypeControl(),
					daum.maps.ControlPosition.TOPRIGHT);
			map.addControl(new daum.maps.ZoomControl(),
					daum.maps.ControlPosition.RIGHT);
			switch(code) {
			case 1:				
				console.log(code);
				setMapData(map, "/map/reqDataHosptl.do");
				break;
			case 2:
				setMapData(map, "/map/reqDataMedicene.do");
				break;
			case 3:
				setMapData(map, "/map/reqDataCenter.do");
				break;
			case 4:
				setMapData(map, "/map/reqDataRescue.do");
				break;
			}

			$("#select_type > div.col-md-12 > div > label.btn").on(
					"click",
					function(e) { 
						
						if (!$(this).hasClass("active")) {
							setMapData(map, "/map/"+$(this).data("name")+".do", $(this).data("code"));
						} else {
							hideMapData($(this).data("code"));
						}
					}
			);
		}, function(error) {
			console.error(error);
		}, {
			enableHighAccuracy : false,
			maximumAge : 0,
			timeout : Infinity
		});
	} else {
		alert('GPS를 지원하지 않습니다');
	}
</script>
</body>
</html>