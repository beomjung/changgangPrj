<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>연도별 매출 확인</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../resource/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="../resource/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../resource/plugins/chartist/css/chartist.min.css">

    <style>
        #chartdiv {
            width: 100%;
            height: 450px;
        }
    </style>

    <!-- Chart Resources -->
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
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
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
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
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

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Home</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <!-- Chart -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">월별 매출금액</h4>
                            <script>
                                am4core.ready(function () {

                                    // Themes begin
                                    am4core.useTheme(am4themes_animated);
                                    // Themes end

                                    // Create chart instance
                                    var chart = am4core.create("chartdiv", am4charts.XYChart);
                                    chart.scrollbarX = new am4core.Scrollbar();

                                    // Add data
                                    chart.data = [{
                                    //     "monday": "2",
                                    //     "visits": 56
                                    // }, {
                                    //     "monday": "02",
                                    //     "visits": 68
                                    // }, {
                                    //     "monday": "03",
                                    //     "visits": 50
                                    // }, {
                                        "monday": "2012",
                                        "visits": 88
                                    }, {
                                        "monday": "2013",
                                        "visits": 59
                                    }, {
                                        "monday": "2014",
                                        "visits": 75
                                    }, {
                                        "monday": "2015",
                                        "visits": 122
                                    }, {
                                        "monday": "2016",
                                        "visits": 147
                                    }, {
                                        "monday": "2017",
                                        "visits": 182
                                    }, {
                                        "monday": "2018",
                                        "visits": 243
                                    }, {
                                        "monday": "2019",
                                        "visits": 270
                                    }, {
                                        "monday": "2020",
                                        "visits": 405
                                    }];

                                    // Create axes
                                    var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
                                    categoryAxis.dataFields.category = "monday";
                                    categoryAxis.renderer.grid.template.location = 0;
                                    categoryAxis.renderer.minGridDistance = 30;
                                    categoryAxis.renderer.labels.template.horizontalCenter = "right";
                                    categoryAxis.renderer.labels.template.verticalCenter = "middle";
                                    categoryAxis.renderer.labels.template.rotation = 270;
                                    categoryAxis.tooltip.disabled = true;
                                    categoryAxis.renderer.minHeight = 110;

                                    var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
                                    valueAxis.renderer.minWidth = 50;

                                    // Create series
                                    var series = chart.series.push(new am4charts.ColumnSeries());
                                    series.sequencedInterpolation = true;
                                    series.dataFields.valueY = "visits";
                                    series.dataFields.categoryX = "monday";
                                    series.tooltipText = "[{categoryX}: bold]{valueY}[/]";
                                    series.columns.template.strokeWidth = 0;

                                    series.tooltip.pointerOrientation = "vertical";

                                    series.columns.template.column.cornerRadiusTopLeft = 10;
                                    series.columns.template.column.cornerRadiusTopRight = 10;
                                    series.columns.template.column.fillOpacity = 0.8;

                                    // on hover, make corner radiuses bigger
                                    var hoverState = series.columns.template.column.states.create("hover");
                                    hoverState.properties.cornerRadiusTopLeft = 0;
                                    hoverState.properties.cornerRadiusTopRight = 0;
                                    hoverState.properties.fillOpacity = 1;

                                    series.columns.template.adapter.add("fill", function (fill, target) {
                                        return chart.colors.getIndex(target.dataItem.index);
                                    });

                                    // Cursor
                                    chart.cursor = new am4charts.XYCursor();

                                }); // end am4core.ready()
                            </script>

                            <div id="chartdiv"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="active-member">
                                <div class="table-responsive">
                                    <table class="table table-xs mb-0">
                                        <thead>
                                        <tr>
                                            <th>연도</th>
                                            <th>총 매출액</th>
                                            <th>총 카드매출</th>
                                            <th>총 현금매출</th>
                                            <th>총 매입금액</th>
                                            <th>총 인건비</th>
                                            <th>총 실매출액</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th>2020</th>
                                            <td>12,72</td>
                                            <td>283</td>
                                            <td>339</td>
                                            <td>251</td>
                                            <td>440</td>
                                            <td>181</td>
                                            <!--<td>299</td>
                                            <td>377</td>
                                            <td>611</td>
                                            <td>736</td>
                                            <td>911</td>
                                            <td>1,214</td>
                                            <td>1,351</td>
                                            <td>2,026</td> -->
                                        </tr>
                                        <tr>
                                            <th>2019</th>
                                            <td>2,544</td>
                                            <td>56</td>
                                            <td>68</td>
                                            <td>50</td>
                                            <td>88</td>
                                            <td>59</td>
                                            <!-- <td>75</td>
                                            <td>122</td>
                                            <td>147</td>
                                            <td>182</td>
                                            <td>243</td>
                                            <td>270</td>
                                            <td>405</td>
                                            <td>184</td> -->
                                        </tr>
                                        <tr>
                                            <th>2018</th>
                                            <td>2,836</td>
                                            <td>45</td>
                                            <td>42</td>
                                            <td>65</td>
                                            <td>78</td>
                                            <td>41</td>
                                            <!--<td>66</td>
                                            <td>115</td>
                                            <td>185</td>
                                            <td>324</td>
                                            <td>195</td>
                                            <td>245</td>
                                            <td>577</td>
                                            <td>183</td>-->
                                        </tr>
                                        <tr>
                                            <th>2017</th>
                                            <td>2,202</td>
                                            <td>45</td>
                                            <td>103</td>
                                            <td>53</td>
                                            <td>56</td>
                                            <td>52</td>
                                            <!--<td>84</td>
                                            <td>96</td>
                                            <td>107</td>
                                            <td>88</td>
                                            <td>269</td>
                                            <td>265</td>
                                            <td>245</td>
                                            <td>107</td>-->
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
    </div>

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