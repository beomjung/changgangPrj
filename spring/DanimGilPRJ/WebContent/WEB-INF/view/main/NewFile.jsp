
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>하이힐링원 통계프로그램</title>
<link href="/lumino/css/bootstrap.min.css" rel="stylesheet">
<link href="/lumino/css/font-awesome.min.css" rel="stylesheet">
<link href="/lumino/css/datepicker3.css" rel="stylesheet">
<link href="/lumino/css/styles.css" rel="stylesheet">

<!--Custom Font-->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!-- 홍두표 - 나눔스퀘어 폰트 불러오기 -->
<style>
@import
	url(https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css)
	;
body {
	text-decoration: none;
	text-decoration-line: none;
	text-decoration-thickness: initial;
	text-decoration-style: initial;
	text-decoration-color: initial;
	font-family: 'NanumSquare';
	font-size: 20px;
	font-weight: 500;
}
</style>
<!-- 홍두표 - 나눔스퀘어 폰트 불러오기 -->
</head>
<body>
	<!--/.sidebar Sart-->
	
	<!--/.sidebar End-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">프로그램 결과 입력</li>
			</ol>
		</div>
		<!--/.row-->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">프로그램 결과 입력</h1>
			</div>
		</div>
		<!--/.row-->
		<!--홍석민이 만들고 있음  -->
		<div class="row">
			<!-- 고르기 버튼 시작-->
		
			<!-- 고르기 버튼 끝 -->
			<div class="col-md-12">
				<div class="panel panel-default chat">
					<div class="panel-heading"
						style="display: flex; height: auto !important; flex-flow: row-reverse;">
						<!-- <p
							style="margin: 0; padding: 0 1rem; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">서비스환경
							만족도</p> -->
						<div
							style="padding: 0 1rem; flex-basis: auto; white-space: nowrap; align-self: center;">
							<input type="button" class="btn btn-success btn-sm" value="추가"
								onclick="add_div()"> <input type="button"
								class="btn btn-default btn-sm" value="전송" onclick="action()">
						</div>
						<div
							style="flex: auto; padding: 0 1rem; flex-basis: auto; white-space: nowrap; display: inline-flex; overflow: hidden;">
							<h4 style="float: left; margin-right: 10px;">기관명</h4>
							<div
								style="width: 120px; float: left; margin-right: 30px; flex: auto; padding: 0 1rem; flex-basis: auto; white-space: nowrap; max-width: 300px;">
								<input class="form-control" name='form-agency' placeholder="기관명">
							</div>
							<h4 style="float: left; margin-right: 10px;">실시일자</h4>
							<div style="width: 160px; float: left; margin-right: 30px;">
								<input class="form-control" type="date" name='form-date'>
							</div>
							<h4 style="float: left; margin-right: 10px;">참여프로그램</h4>
							<div style="width: 120px; float: left;">
								<select class="form-control" name="form-ptcProgram"
									style="height: 46px;">
									<option>당일형</option>
									<option>1박2일형</option>
									<option>2박3일형</option>
								</select>
							</div>
						</div>
					</div>
					<div class="panel-body" style="overflow-x: scroll; height: auto;">
						<!--  -->
						<div style="width: 2380px; height: 70px">
							<div
								style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">성별</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">연령</h4>
							</div>
							<div
								style="width: 90px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">거주지</h4>
							</div>
							<div
								style="width: 120px; float: left; margin-right: 10px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">직업</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center;">
								<h4 style="font-weight: 600">
									숙소<br>(문항1)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center;">
								<h4 style="font-weight: 600">
									숙소<br>(문항2)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									식당<br>(문항3)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									식당<br>(문항4)
								</h4>
							</div>
							<div
								style="width: 105px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">프로그램 장소(문항5)</h4>
							</div>
							<div
								style="width: 105px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">프로그램 장소(문항6)</h4>
							</div>
							<div
								style="width: 105px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">프로그램 장소(문항7)</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									야외<br>(문항8)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									야외<br>(문항9)
								</h4>
							</div>
							<div
								style="width: 70px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									야외<br>(문항10)
								</h4>
							</div>
							<div
								style="width: 140px; float: left; margin-right: 20px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">기타의견</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									운영<br>(문항1)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									운영<br>(문항2)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									운영<br>(문항3)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									식사<br>(문항4)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									식사<br>(문항5)
								</h4>
							</div>
							<div
								style="width: 60px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">
									식사<br>(문항6)
								</h4>
							</div>
							<div
								style="width: 140px; float: left; margin-right: 20px; text-align: center; -webkit-text-emphasis-style: open;">
								<h4 style="font-weight: 600">기타의견</h4>
							</div>
							<div
								style="width: 90px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">잠재적 관광수요(문항8)</h4>
							</div>
							<div
								style="width: 90px; float: left; margin-right: 20px; text-align: center">
								<h4 style="font-weight: 600">잠재적 관광수요(문항9)</h4>
							</div>
						</div>
						<%
							for (int i = 0; i < 20; i++) {
						%>
						<div id="insertForm">
							<div style="width: 2380px; height: 60px" name="form-main">
								<!--  -->
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-sex' placeholder="성별">
								</div>
								<!--  -->
								<div style="width: 60px; float: left; margin-right: 10px;">
									<input class="form-control" name='form-age' placeholder="연령">
								</div>
								<div style="width: 90px; float: left; margin-right: 10px;">
									<select class="form-control" name='form-residence'
										style="height: 46px;">
										<option>서울</option>
										<option>부산</option>
										<option>대구</option>
										<option>인천</option>
										<option>광주</option>
										<option>대전</option>
										<option>울산</option>
										<option>세종</option>
										<option>경기</option>
										<option>강원</option>
										<option>충북</option>
										<option>충남</option>
										<option>전북</option>
										<option>전남</option>
										<option>경북</option>
										<option>경남</option>
										<option>제주</option>
									</select>
								</div>
								<!--  -->
								<div style="width: 120px; float: left; margin-right: 10px;">
									<select class="form-control" name='form-job'
										style="height: 46px;">
										<option>학생</option>
										<option>자영업</option>
										<option>서비스직</option>
										<option>판매영업직</option>
										<option>기능/생산직</option>
										<option>단순노무직</option>
										<option>고위공직</option>
										<option>임직원</option>
										<option>전문직</option>
										<option>일반사무직</option>
										<option>농림어업축산직</option>
										<option>주부</option>
										<option>무직</option>
										<option>기타</option>
									</select>
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score1' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score2' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score3' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score4' placeholder="점수">
								</div>
								<div
									style="width: 60px; float: left; margin-right: 43px; margin-left: 22px;">
									<input class="form-control" name='form-score5' placeholder="점수">
								</div>
								<div
									style="width: 60px; float: left; margin-right: 43px; margin-left: 22px;">
									<input class="form-control" name='form-score6' placeholder="점수">
								</div>
								<div
									style="width: 60px; float: left; margin-right: 44px; margin-left: 22px;">
									<input class="form-control" name='form-score7' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score8' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score9' placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score10'
										placeholder="점수">
								</div>
								<div
									style="width: 140px; float: left; margin-right: 10px; margin-left: 10px">
									<input class="form-control" name='form-opinion1'
										placeholder="기타의견">
								</div>
								<div
									style="width: 60px; float: left; margin-right: 25px; margin-left: 5px">
									<input class="form-control" name='form-score11'
										placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score12'
										placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score13'
										placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score14'
										placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score15'
										placeholder="점수">
								</div>
								<div style="width: 60px; float: left; margin-right: 20px;">
									<input class="form-control" name='form-score16'
										placeholder="점수">
								</div>
								<div
									style="width: 140px; float: left; margin-right: 10px; margin-left: 10px">
									<input class="form-control" name='form-opinion2'
										placeholder="기타의견">
								</div>
								<div
									style="width: 60px; float: left; margin-right: 35px; margin-left: 15px">
									<input class="form-control" name='form-score17'
										placeholder="점수">
								</div>
								<div
									style="width: 60px; float: left; margin-right: 35px; margin-left: 15px">
									<input class="form-control" name='form-score18'
										placeholder="점수">
								</div>
							</div>
						</div>
						<%
							}
						%>
						<div id="field"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/lumino/js/jquery-1.11.1.min.js"></script>
	<script src="/lumino/js/bootstrap.min.js"></script>
	<script src="/lumino/js/chart.min.js"></script>
	<script src="/lumino/js/chart-data.js"></script>
	<script src="/lumino/js/easypiechart.js"></script>
	<script src="/lumino/js/easypiechart-data.js"></script>
	<script src="/lumino/js/bootstrap-datepicker.js"></script>
	<script src="/lumino/js/custom.js"></script>
	<script type="text/javascript">
		function action() {
			var param = {};
			let agency = document.getElementsByName('form-agency')[0].value;
			let date = document.getElementsByName('form-date')[0].value;
			let ptcProgram = document.getElementsByName('form-ptcProgram')[0].value;
			let formArr = document.getElementsByName('form-main');
			//유효성 검사
			if (agency.trim() == '') {
				alert('기관을 입력해주세요.');
				return false;
			} else if (date.trim() == '') {
				alert('실시일자를 입력해주세요.');
				return false;
			} else if (ptcProgram.trim() == '') {
				alert('참여프로그램을 입력해주세요.');
				return false;
			}
			for (let i = 0; i < formArr.length; i++) {
				let sex = document.getElementsByName('form-sex')[i].value;
				let age = document.getElementsByName('form-age')[i].value;
				let residence = document.getElementsByName('form-residence')[i].value;
				let job = document.getElementsByName('form-job')[i].value;
				let score1 = document.getElementsByName('form-score1')[i].value;
				let score2 = document.getElementsByName('form-score2')[i].value;
				let score3 = document.getElementsByName('form-score3')[i].value;
				let score4 = document.getElementsByName('form-score4')[i].value;
				let score5 = document.getElementsByName('form-score5')[i].value;
				let score6 = document.getElementsByName('form-score6')[i].value;
				let score7 = document.getElementsByName('form-score7')[i].value;
				let score8 = document.getElementsByName('form-score8')[i].value;
				let score9 = document.getElementsByName('form-score9')[i].value;
				let score10 = document.getElementsByName('form-score10')[i].value;
				let score11 = document.getElementsByName('form-score11')[i].value;
				let score12 = document.getElementsByName('form-score12')[i].value;
				let score13 = document.getElementsByName('form-score13')[i].value;
				let score14 = document.getElementsByName('form-score14')[i].value;
				let score15 = document.getElementsByName('form-score15')[i].value;
				let score16 = document.getElementsByName('form-score16')[i].value;
				let score17 = document.getElementsByName('form-score17')[i].value;
				let score18 = document.getElementsByName('form-score18')[i].value;
				let opinion1 = document.getElementsByName('form-opinion1')[i].value;
				let opinion2 = document.getElementsByName('form-opinion2')[i].value;
				if (sex.trim() == '' && age.trim() == '') {
				} else {
					if (sex.trim() == '') {
						alert('성별을 입력해주세요.');
						console.log(i);
						return document.getElementsByName('form-sex')[i]
								.focus();
					} else if (age.trim() == '') {
						alert('연령을 입력해주세요.');
						return document.getElementsByName('form-age')[i]
								.focus();
					} else if (residence.trim() == '') {
						alert('거주지를 입력해주세요.');
						return document.getElementsByName('form-residence')[i]
								.focus();
					} else if (job.trim() == '') {
						alert('직업을 입력해주세요.');
						return document.getElementsByName('form-job')[i]
								.focus();
					} else if (score1.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score1')[i]
								.focus();
					} else if (score2.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score2')[i]
								.focus();
					} else if (score3.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score3')[i]
								.focus();
					} else if (score4.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score4')[i]
								.focus();
					} else if (score5.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score5')[i]
								.focus();
					} else if (score6.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score6')[i]
								.focus();
					} else if (score7.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score7')[i]
								.focus();
					} else if (score8.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score8')[i]
								.focus();
					} else if (score9.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score9')[i]
								.focus();
					} else if (score10.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score10')[i]
								.focus();
					} else if (score11.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score11')[i]
								.focus();
					} else if (score12.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score12')[i]
								.focus();
					} else if (score13.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score13')[i]
								.focus();
					} else if (score14.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score14')[i]
								.focus();
					} else if (score15.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score15')[i]
								.focus();
					} else if (score16.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score16')[i]
								.focus();
					} else if (score17.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score17')[i]
								.focus();
					} else if (score18.trim() == '') {
						alert('점수를 입력해주세요.');
						return document.getElementsByName('form-score18')[i]
								.focus();
					}
				}
				let scoreList = [ score1, score2, score3, score4, score5,
						score6, score7, score8, score9, score10, opinion1,
						score11, score12, score13, score14, score15, score16,
						opinion2, score17, score18 ];
				if (sex == "") {
					break;
				} else {
					param['serviceDtoList[' + i + '].agency'] = agency;
					param['serviceDtoList[' + i + '].date'] = date;
					param['serviceDtoList[' + i + '].ptcProgram'] = ptcProgram;
					param['serviceDtoList[' + i + '].sex'] = sex;
					param['serviceDtoList[' + i + '].age'] = age;
					param['serviceDtoList[' + i + '].residence'] = residence;
					param['serviceDtoList[' + i + '].job'] = job;
					for (let j = 0; j < scoreList.length; j++) {
						if (scoreList[j] == "") {
							param['serviceDtoList[' + i + '].scoreList[' + j
									+ ']'] = "0";
						} else {
							param['serviceDtoList[' + i + '].scoreList[' + j
									+ ']'] = scoreList[j];
						}
					}
				}
			}
			console.table(param);
			$.ajax({
				url : "/insertForm/serviceInsertForm/insertData.do",
				data : param,
				success : function(result) {
					swal({
		 				title : "전송 성공 !!",
		 				text : "확인 버튼을 눌러주세요.",
		 				icon : "success"
		 			}).then(function() {
		 				window.location.reload();
		 			});
				},
				error : function(e) {
					console.log(e);
				}
			})
		}
	</script>
</body>
</html>
