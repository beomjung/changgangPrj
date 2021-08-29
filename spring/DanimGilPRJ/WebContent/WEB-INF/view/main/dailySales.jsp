<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>일일 매춣현황</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../resource/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="../resource/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../resource/plugins/chartist/css/chartist.min.css">

    <!-- Styles -->
    <style>
        #chart1div {
            width: 100%;
            height: 350px;
        }

        #chart2div {
            width: 100%;
            height: 350px;
        }
        #card-body{
        overflow : scroll;
        }

    </style>

    <!-- pie chart1 Resources -->
    <script src="//www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="//www.amcharts.com/lib/3/pie.js"></script>
    <script src="//www.amcharts.com/lib/3/themes/light.js"></script>

    <!-- pie chart2 Resources -->
    <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
    <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
    <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

</head>

<body>


    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <a href="/main/index.do">
                    <b class="logo-abbr"><img src="../resource/image/logo.png" alt=""> </b>
                    <span class="logo-compact"><img src="../resource/image/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                       	<h3>소경서</h3>
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content clearfix">

                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                <div class="header-left">
                    <div class="input-group icons">
                       <!--  <div class="input-group-prepend">
                            <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                        </div>
                         <input type="search" class="form-control" placeholder="Search" aria-label="Search Dashboard">
                        <div class="drop-down animated flipInX d-md-none">
                            <form action="#">
                                <input type="text" class="form-control" placeholder="Search">
                            </form>
                        </div>  -->
                    </div>
                </div>
                <div class="header-right">
                     <ul class="clearfix">
                        <!-- <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-email-outline"></i>
                                <span class="badge badge-pill gradient-1">3</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">3 New Messages</span>
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-1">3</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../resource/image/avatar/1.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Saiful Islam</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ..</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../resource/image/avatar/2.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Adam Smith</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Can you do me a favour?</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../resource/image/avatar/3.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Barak Obama</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ..</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../resource/image/avatar/4.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Hilari Clinton</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hello</div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </li> -->
                       <!--  <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-bell-outline"></i>
                                <span class="badge badge-pill gradient-2">3</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">2 New Notifications</span>
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-2">5</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Events near you</h6>
                                                    <span class="notification-text">Within next 5 days</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Event Started</h6>
                                                    <span class="notification-text">One hour ago</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Event Ended Successfully</h6>
                                                    <span class="notification-text">One hour ago</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Events to Join</h6>
                                                    <span class="notification-text">After two days</span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </li> -->
                      <!--   <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                                <span>English</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li><a href="javascript:void()">한국어</a></li>
                                        <li><a href="javascript:void()">English</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li> -->
                        <li class="icons dropdown">
                            <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                                <span class="activity active"></span>
                                <img src="../resource/image/user/1.png" height="40" width="40" alt="">
                            </div>
                            <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="app-profile.html"><i class="icon-user"></i> <span>Profile</span></a>
                                        </li>
                                       <!--  <li>
                                            <a href="javascript:void()">
                                                <i class="icon-envelope-open"></i> <span>Inbox</span> <div class="badge gradient-3 badge-pill gradient-1">3</div>
                                            </a>
                                        </li>

                                        <hr class="my-2">
                                        <li>
                                            <a href="page-lock.html"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                        </li> -->
                                        <li><a href="page-login.html"><i class="icon-key"></i> <span>Logout</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="nk-sidebar">
            <div class="nk-nav-scroll">
                <ul class="metismenu" id="menu">
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">가게현황</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="/main/currentsit.do">가게현황관리</a></li>
                            <!-- <li><a href="./index-2.html">Home 2</a></li> -->
                        </ul>
                    </li>
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">매출현황</span>
                        </a>
                        <ul aria-expanded="false">
                        <li><a href="/main/SalesInput.do">매입/매출 입력</a></li>
                        	<li><a href="/main/daily.do">일일매출상세보기</a></li>
                            <li><a href="/main/monthly.do">월별매출상세보기</a></li>
                            <li><a href="/main/year.do">연도별매출상세보기</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-envelope menu-icon"></i> <span class="nav-text">급여내역</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="/main/manage.do">직원급여내역</a></li>
                            <!-- <li><a href="./email-read.html">Read</a></li>
                            <li><a href="./email-compose.html">Compose</a></li> -->
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">인원관리</span>
                        </a>
                        <ul aria-expanded="false">
                           <li><a href="/main/detail.do">직원상세정보</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i> <span class="nav-text">스케쥴</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="/main/calender.do">캘린더</a></li>
                            <!-- <li><a href="#">스케쥴관리</a></li> -->
                            <!-- <li><a href="#">Chart../resource/js</a></li>
                            <li><a href="#">Chartist</a></li>
                            <li><a href="#">Sparkline</a></li>
                            <li><a href="#">Peity</a></li> -->
                        </ul>
                    </li>
                   <!--  <li class="nav-label">UI Components</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-grid menu-icon"></i><span class="nav-text">UI Components</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                       </ul>
                    </li> -->
                    <!-- <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-layers menu-icon"></i><span class="nav-text">Components</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="#">Nestedable</a></li>
                            <li><a href="#">Nestedable</a></li>
                            <li><a href="#">Nestedable</a></li>
                            <li><a href="#">Nestedable</a></li>
                        </ul>
                    </li> -->
                   <!--  <li>
                        <a href="widgets.html" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text">Widget</span>
                        </a>
                    </li>
                    <li class="nav-label">Forms</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-note menu-icon"></i><span class="nav-text">Forms</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="#">Basic Form</a></li>
                            <li><a href="#">Basic Form</a></li>
                            <li><a href="#">Basic Form</a></li>
                            <li><a href="#">Basic Form</a></li>
                            <li><a href="#">Basic Form</a></li>
                        </ul>
                    </li> -->
                   <!--  <li class="nav-label">Table</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-menu menu-icon"></i><span class="nav-text">Table</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./table-basic.html" aria-expanded="false">Basic Table</a></li>
                            <li><a href="./table-datatable.html" aria-expanded="false">Data Table</a></li>
                        </ul>
                    </li> -->
                   <!--  <li class="nav-label">Pages</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-notebook menu-icon"></i><span class="nav-text">Pages</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Error</a>
                                <ul aria-expanded="false">
                                    <li><a href="#">Error 404</a></li>
                                    <li><a href="#">Error 404</a></li>
                                    <li><a href="#">Error 404</a></li>
                                    <li><a href="#">Error 404</a></li>
                                    <li><a href="#">Error 404</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li> -->
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->

    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">
	<!-- 
        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Home</a></li>
                </ol>
            </div>
        </div>
        
         -->
        <!-- row -->

        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-7">
                    <div class="card">
                        <div class="chart-body">
                            <h4 class="chart-title">거래처 거래 현황</h4>
                            <script>
                                am4core.ready(function () {
                                    // Themes begin
                                    am4core.useTheme(am4themes_animated);
                                    // Themes end

                                    // Create chart instance
                                    var chart1 = am4core.create("chart1div", am4charts.PieChart);

                                    // Add data
                                    chart1.data = [
                                      {
                                        "store": "짱구네 정육점",
                                        "litres": 501.9
                                    },{
                                        "store": "꺽정이네 정육점",
                                        "litres": 301.9
                                    },{
                                        "store": "C수산물",
                                        "litres": 201.1
                                    },{
                                        "store": "길동 채소가게",
                                        "litres": 165.8
                                    },{
                                        "store": "A건어물",
                                        "litres": 165.8
                                    }];

                                    // Add and configure Series
                                    var pieSeries = chart1.series.push(new am4charts.PieSeries());
                                    pieSeries.dataFields.value = "litres";
                                    pieSeries.dataFields.category = "store";
                                    pieSeries.slices.template.stroke = am4core.color("#fff");
                                    pieSeries.slices.template.strokeOpacity = 1;

                                    // This creates initial animation
                                    pieSeries.hiddenState.properties.opacity = 1;
                                    pieSeries.hiddenState.properties.endAngle = -90;
                                    pieSeries.hiddenState.properties.startAngle = -90;

                                    chart1.hiddenState.properties.radius = am4core.percent(0);


                                }); // end am4core.ready()
                            </script>

                            <div id="chart1div"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="card">
                        <div class="chart-body">
                            <!-- Chart code -->
                            <script>
                                var chart2 = AmCharts.makeChart("chart2div",
                                    {
                                    "type": "pie",
                                    "theme": "light",
                                    "dataProvider": [{
                                        "sales": "배달앱",
                                        "litres": 1000000,
                                        "color": "#fbd3ce"
                                    }, {
                                        "sales": "카드",
                                        "litres": 340000,
                                        "color": "#f7a99f"
                                    }, {
                                        "sales": "현금",
                                        "litres": 200000,
                                        "color": "#f47e6f"
                                    }],
                                    "valueField": "litres",
                                    "titleField": "sales",
                                    "colorField": "color",
                                    "balloon": {
                                        "fixedPosition": true
                                    }
                                });
                            </script>

                            <!-- HTML -->
                            <h4 class="chart-title">매출 현황</h4>
                            <div id="chart2div"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">매출 현황</h4>	
                            <div class="active-member">
                                <div class="table-responsive">
                                    <table class="table table-xs mb-0">
                                        <thead>
                                        <tr>
                                            <th>날짜</th>
                                            <th>카드매출액</th>
                                            <th>현금매출액</th>
                                            <th>매입금액</th>
                                            <th>실매출액</th>
                                            <th>인건비</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>21/06/07</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                        </tr>
                                        <tr>
                                            <td>21/06/07</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                        </tr>
                                        <tr>
                                            <td>21/06/07</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                        </tr>
                                        <tr>
                                            <td>21/06/07</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                        </tr>
                                        <tr>
                                            <td>21/06/07</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                        </tr>
                                        <tr>
                                           <td>21/06/07</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                            <td>45,000</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #/ container -->
    </div>
    <!--**********************************
        Content body end
    ***********************************-->


    <!--**********************************
        Footer start
    ***********************************-->
    <div class="footer">
        <div class="copyright">
            <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Quixlab</a> 2018
            </p>
        </div>
    </div>
    <!--**********************************
        Footer end
    ***********************************-->
</div>
<!--**********************************
    Main wrapper end
***********************************-->

<!--**********************************
    Scripts
***********************************-->
<script src="../resource/plugins/common/common.min.js"></script>
<script src="../resource/js/custom.min.js"></script>
<script src="../resource/js/settings.js"></script>
<script src="../resource/js/gleek.js"></script>
<script src="../resource/js/styleSwitcher.js"></script>


</body>

</html>