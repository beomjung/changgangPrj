<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>직원 등록하기</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16"
          href="../resource/assets/images/favicon.png">
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"> -->
    <link href="../resource/css/style.css" rel="stylesheet">
    <style>
        .birth {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .bir-yy + .bir-mm {
            padding-left: 10px;
        }

        .bir-mm + .bir-dd {
            padding-left: 10px;
        }

        .bir-yy, .bir-mm, .bir-dd {
            display: table-cell;
            width: 10%;
            vertical-align: middle;
        }

        .bir-box {
            display: block;
            position: relative;
            width: 100%;
            height: 50px;
            border: solid 1px #dadada;
            background: #fff;
            box-sizing: border-box;
            vertical-align: top;
            padding: 11px 14px;
        }

        .Ran-box {
            display: block;
            position: relative;
            width: 100%;
            height: 50px;
            border: solid 1px #dadada;
            background: #fff;
            box-sizing: border-box;
            vertical-align: top;
            padding: 11px 14px;
        }

        .Rank {
            margin-bottom: 10px;
        }

        .int {
            display: block;
            position: relative;
            width: 100%;
            height: 100%;
            padding-right: 25px;
            line-height: 29px;
            border: none;
            background: #fff;
            font-size: 15px;
            box-sizing: border-box;
            z-index: 10;
        }

        :root .sel {
            background: #fff url(../resource/images/custom-select.png) 100% 50% no-repeat;
            background-size: 20px 8px;
        }

        .sel {
            width: 100%;
            height: 100%;
            font-size: 15px;
            line-height: 18px;
            color: #000;
            border: none;
            border-radius: 0;
            -webkit-appearance: none;
        }

    </style>
    </style>
</head>
<body>
<!--*******************
        Preloader start
    ********************-->
<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10"/>
        </svg>
    </div>
</div>
<!--*******************
    Preloader end
********************-->
<div class="login-form-bg h-100">
    <div class="container h-100">
        <div class="row justify-content-center h-100">
            <div class="col-xl-6">
                <div class="form-input-content">
                    <div class="card login-form mb-0">
                        <div class="card-body pt-5">

                            <a class="text-center" href="index.html">
                                <h4>직원 등록</h4>
                            </a>

                            <!--**********************************
                                Content body start
                            ***********************************-->
                            <form action="/detail/addEmpProc.do" name="f" onsubmit="return doRegEmpCheck(this);"
                                  class="mt-5 mb-5">
                                <div class="form-group">
                                    <input type="text" id="empnoAjax" class="form-control" placeholder="직원번호" required
                                           name="empno" value=""/>
                                </div>
                                <div id="empnoCheck"></div>
                                <!-- <div id="#"> 직원번호 : <input type="text" id="empnoAjax" name="empno"-->
                                <!-- value=""/></div>-->

                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="직원이름" required name="ename"/>
                                </div>
                                <!--                                <div id="#"> 직원이름 : <input type="text" name="ename"/></div>-->
                                직급
                                <div class="Rank">
                                    <span class="Ran-box"><select id="rank" name="rank" class="sel">
<!--                                        <option selected>직급</option>-->
                                        <option value="0">매니저</option>
                                        <option value="1">알바생</option>
                                    </select></span>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="전화번호" required name="phone"/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="이메일" required name="email"/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="주소" required name="adress"/>
                                </div>
                                <div class="form-group">출근시간
                                    <input type="time" class="form-control" id="att_time" name="att_time"/>
                                </div>
                                <div class="form-group">퇴근시간
                                    <input type="time" class="form-control" required id="off_time" name="off_time"/>
                                </div>
                                <div class="form-group">직원 얼굴 학습
                                    <button type="button" class="btn mb-1 btn-primary btn-sm" onclick="faceHakSep();"
                                            style="margin-left: 8px;">얼굴학습하기
                                    </button>
                                </div>
                                <button type="submit" id="addEmpSubmit" class="btn login-form__btn submit w-100">등록하기
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
            <script src="/resource/js/jquery-3.3.1.min.js"></script>
            <script type="text/javascript">
                function faceHakSep() {
                    console.log("이미지 학습 진입");
                    let empno = $('#empnoAjax').val();
                    $.ajax({
                        url: '/detail/faceHakSepToFlask.do?empno=' + empno,
                        type: 'get',
                        dataType: 'text',
                        success: function (data) {
                            if (data == 1) {
                                alert('이미지 학습 완료');
                                $('#addEmpSubmit').attr('disabled', false);
                            } else {
                                alert('이미지 학습 실패...');
                                $('#addEmpSubmit').attr('disabled', true);
                            }

                        }

                    });
                };
            </script>
            <!--유효성 검사 로직-->
            <script type="text/javascript">
                $('#empnoAjax').blur(function () {
                    let empno = $('#empnoAjax').val();
                    $.ajax({
                        url: '/detail/empCheck.do?empno=' + empno,
                        type: 'get',
                        dataType: 'text',
                        success: function (data) {
                            if (data == 1) {
                                $('#empnoCheck').text('이미 등록된 사원번호 입니다.');
                                $('#empnoCheck').css('color', 'red');
                                $('#addEmpSubmit').attr('disabled', true);
                            } else {
                                $('#empnoCheck').text('이상없습니다.');
                                $('#empnoCheck').css('color', 'blue');
                                $('#addEmpSubmit').attr('disabled', false);
                            }
                        }
                    })
                });
            </script>
            <script type="text/javascript">
                //null 방지를 위한 유효성 체크하기
                function doRegEmpCheck(f) {

                    if (f.att_time.value == "") {
                        alert("출근시간을 입력하세요.");
                        f.att_time.focus();
                        return false;
                    }

                    if (f.off_time.value == "") {
                        alert("퇴근시간을 입력하세요.");
                        f.off_time.focus();
                        return false;
                    }

                    if (f.empno.value == "") {
                        alert("직원번호를 입력하세요.");
                        f.empno.focus();
                        return false;
                    }

                    if (f.ename.value == "") {
                        alert("이름을 입력하세요.");
                        f.ename.focus();
                        return false;
                    }

                    if (f.rank.value == "") {
                        alert("직급을 입력하세요.");
                        f.rank.focus();
                        return false;
                    }

                    if (f.phone.value == "") {
                        alert("전화번호를 입력하세요.");
                        f.phone.focus();
                        return false;
                    }

                    if (f.email.value == "") {
                        alert("이메일을 입력하세요.");
                        f.email.focus();
                        return false;
                    }

                    if (f.adress.value == "") {
                        alert("주소를 입력하세요.");
                        f.adress.focus();
                        return false;
                    }
                }
            </script>

            <!--**********************************
                Scripts
            ***********************************-->
            <script src="../resource/plugins/common/common.min.js"></script>
            <script src="../resource/js/custom.min.js"></script>
            <script src="../resource/js/settings.js"></script>
            <script src="../resource/js/gleek.js"></script>
            <script src="../resource/js/styleSwitcher.js"></script>
            <script type="text/javascript"></script>
</body>
</html>