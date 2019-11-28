<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/images/favicon.ico" type="image/ico" />

    <title>IUABC</title>

    <!-- Bootstrap -->
    <link href="/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- bootstrap-datetimepicker -->
    <link href="/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/css/custom.min.css" rel="stylesheet">

    <script type="text/javascript" src="/js/jquery-3.2.1.js"></script>

    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>

</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/index" class="site_title"><i class="fa fa-paw"></i> <span>IUABC System</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="/images/user.png" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome !</span>
                        <h2>${Session.user.userName}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <!--<h3>General</h3>-->
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-home"></i> 车间信息 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/factory/manage/basicInfo">基本信息</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-desktop"></i> 设备管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/equipment/manage/craneInfo">起重机信息</a></li>
                                    <li><a href="/equipment/manage/sensorInfo">传感器信息</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-table"></i> 路径规划 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/path/planning/staticState">固定路径</a></li>
                                    <li><a href="/path/planning/dynamicState">实时路径</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-bar-chart-o"></i> 实时监控 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/realTime/monitor/process">运行信息</a></li>
                                    <li><a href="/realTime/monitor/warning">报警信息</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-clone"></i> 用户管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/user/manage/list">用户信息</a></li>
                                    <li><a href="/user/manage/operateLog">操作日志</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="/logout">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="/images/img.jpg" alt="">${Session.user.userName}
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="javascript:;"> Profile</a></li>
                                <li>
                                    <a href="javascript:;">
                                        <span class="badge bg-red pull-right">50%</span>
                                        <span>Settings</span>
                                    </a>
                                </li>
                                <li><a href="javascript:;">Help</a></li>
                                <li><a href="/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="/images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                                            <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                        </span>
                                        <span class="message">
                                            Film festivals used to be do-or-die moments for movie makers. They were where...
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="/images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                                            <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                        </span>
                                        <span class="message">
                                            Film festivals used to be do-or-die moments for movie makers. They were where...
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="/images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                                            <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                        </span>
                                        <span class="message">
                                             Film festivals used to be do-or-die moments for movie makers. They were where...
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="/images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                                            <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                        </span>
                                        <span class="message">
                                             Film festivals used to be do-or-die moments for movie makers. They were where...
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <#--<b>主体页面还未开发，敬请期待！</b>-->
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>坐标输入<small>车间长度为 ${workshop.length} 米，车间宽度为 ${workshop.width} 米，车间高度为 ${workshop.height} 米</small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <#--<br />-->
                            <form class="form-horizontal form-label-left input_mask">

                                <div class="col-md-4 col-sm-4 col-xs-12 form-group has-feedback">
                                    <input type="number" class="form-control has-feedback-left" id="start_X" placeholder="起始位置横坐标">
                                    <span class="fa fa-table form-control-feedback left" aria-hidden="true"></span>
                                </div>

                                <div class="col-md-4 col-sm-4 col-xs-12 form-group has-feedback">
                                    <input type="number" class="form-control has-feedback-left" id="start_Y" placeholder="起始位置纵坐标">
                                    <span class="fa fa-table form-control-feedback left" aria-hidden="true"></span>
                                </div>

                                <div class="col-md-4 col-sm-4 col-xs-12 form-group has-feedback">
                                    <input type="number" class="form-control has-feedback-left" id="start_Z" placeholder="起始位置竖坐标">
                                    <span class="fa fa-table form-control-feedback left" aria-hidden="true"></span>
                                </div>

                                <div class="col-md-4 col-sm-4 col-xs-12 form-group has-feedback">
                                    <input type="number" class="form-control has-feedback-left" id="end_X" placeholder="目标点横坐标">
                                    <span class="fa fa-table form-control-feedback left" aria-hidden="true"></span>
                                </div>

                                <div class="col-md-4 col-sm-4 col-xs-12 form-group has-feedback">
                                    <input type="number" class="form-control has-feedback-left" id="end_Y" placeholder="目标点纵坐标">
                                    <span class="fa fa-table form-control-feedback left" aria-hidden="true"></span>
                                </div>

                                <div class="col-md-4 col-sm-4 col-xs-12 form-group has-feedback">
                                    <input type="number" class="form-control has-feedback-left" id="end_Z" placeholder="目标点竖坐标">
                                    <span class="fa fa-table form-control-feedback left" aria-hidden="true"></span>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                        <button type="button" class="btn btn-primary" id="send_coordinate">发送坐标</button>
                                        <button class="btn btn-primary" type="reset" id="reset">重置</button>
                                        <button type="button" class="btn btn-success" id="generate_path">生成路径</button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>路径展示</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <br />
                            <div id="container" style="height: 80%; width: 100%; position: relative"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Crane Monitor System by <a href="https://www.tongji.edu.cn/">TongJi University</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="/vendors/nprogress/nprogress.js"></script>
<!-- Chart.js -->
<script src="/vendors/Chart.js/dist/Chart.min.js"></script>
<!-- gauge.js -->
<#--<script src="/vendors/gauge.js/dist/gauge.min.js"></script>-->
<!-- bootstrap-progressbar -->
<script src="/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="/vendors/iCheck/icheck.min.js"></script>
<!-- Skycons -->
<script src="/vendors/skycons/skycons.js"></script>
<!-- Flot -->
<script src="/vendors/Flot/jquery.flot.js"></script>
<script src="/vendors/Flot/jquery.flot.pie.js"></script>
<script src="/vendors/Flot/jquery.flot.time.js"></script>
<script src="/vendors/Flot/jquery.flot.stack.js"></script>
<script src="/vendors/Flot/jquery.flot.resize.js"></script>
<!-- Flot plugins -->
<script src="/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
<script src="/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
<script src="/vendors/flot.curvedlines/curvedLines.js"></script>
<!-- DateJS -->
<script src="/vendors/DateJS/build/date.js"></script>
<!-- JQVMap -->
<script src="/vendors/jqvmap/dist/jquery.vmap.js"></script>
<script src="/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script src="/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="/vendors/moment/min/moment.min.js"></script>
<script src="/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- jQuery Knob -->
<script src="/vendors/jquery-knob/dist/jquery.knob.min.js"></script>

<!-- Datatables -->
<script src="/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<#--<script src="/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>-->
<script src="/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<#--<script src="/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>-->
<script src="/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="/vendors/jszip/dist/jszip.min.js"></script>
<script src="/vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="/vendors/pdfmake/build/vfs_fonts.js"></script>

<!-- bootstrap-datetimepicker -->
<script src="/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>-->

<!-- Custom Theme Scripts -->
<script src="/js/custom.min.js"></script>

<#-- Echarts -->
<#--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>-->
<#--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>-->
<#--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>-->
<#--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>-->
<#--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>-->
<#--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>-->
<#--<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=6GozrD2hGuUG5n35Ut3ksqBTZ5SNdx6l"></script>-->
<#--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>-->
<#--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>-->

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/china.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/world.js"></script>
<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=6GozrD2hGuUG5n35Ut3ksqBTZ5SNdx6l"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>



<script type="text/javascript" src="/js/path.js"></script>
<script type="text/javascript">
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);

    // 下述3项应该从接口取
    var backPath = [];
    var runPath = [];
    var realPath = [];
    var length = '${workshop.length}';
    var width = '${workshop.width}';
    var height = '${workshop.height}';

    var app = {};
    option = null;
    option = {
        title: {
            text: "车间立体图",
            left: 'left',
            textStyle: {
                fontSize:25,
                padding:10
            }
        },
        legend: {
            data:['当前位置返回起点路径','起点到终点规划路径','实时路径'],     // 需要和下面series里面name值保持一致才行
            left: 'right'
        },
        xAxis3D: {
            name: '车间长度/m',
            nameLocation:'middle',
            nameTextStyle:{
                fontSize:16,
                padding:10
            },
            min: 0,
            max: length
        },
        yAxis3D: {
            name: '车间宽度/m',
            nameLocation:'middle',
            nameTextStyle:{
                fontSize:16,
                padding:10
            },
            min: 0,
            max: width
        },
        zAxis3D: {
            name: '车间高度/m',
            nameLocation:'middle',
            nameTextStyle:{
                fontSize:16,
                padding:10
            },
            min: 0,
            max: height
        },
        grid3D: {
            viewControl: {
                projection: 'orthographic'
            }
        },
        series: [
            {
                name: '当前位置返回起点路径',
                data: backPath,
                type: 'line3D',
                smooth: false,
                itemStyle:{
                    normal:{
                        lineStyle:{
                            color:'#26b99a',
                            type:'dotted'  //'dotted'虚线 'solid'实线
                        }
                    }
                },
            },
            {
                name: '起点到终点规划路径',
                data: runPath,
                type: 'line3D',
                lineStyle:{
                    color:'#2e9fff'
                }
            },
            {
                name: '实时路径',
                data: realPath,
                type: 'line3D',
                lineStyle:{
                    color:'#ff0000'
                }
            }
        ]
    };
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    };
    window.onresize = function(){
        myChart.resize();
    };

    $(function () {
        $("#start_X").change(function () {
            var start_x = parseFloat($(this).val());
            if (start_x > length || start_x < 0) {
                alert("坐标超出车间长度范围！请重新输入");
                $(this).val("");
                this.focus();
            }
        });
        $("#start_Y").change(function () {
            var start_y = parseFloat($(this).val());
            if (start_y > width || start_y < 0) {
                alert("坐标超出车间宽度范围！请重新输入");
                $(this).val("");
                this.focus();
            }
        });
        $("#start_Z").change(function () {
            var start_z = parseFloat($(this).val());
            if (start_z > height || start_z < 0) {
                alert("坐标超出车间高度范围！请重新输入");
                $(this).val("");
                this.focus();
            }
        });
        $("#end_X").change(function () {
            var end_x = parseFloat($(this).val());
            if (end_x > length || end_x < 0) {
                alert("坐标超出车间长度范围！请重新输入");
                $(this).val("");
                this.focus();
            }
        });
        $("#end_Y").change(function () {
            var end_y = parseFloat($(this).val());
            if (end_y > width || end_y < 0) {
                alert("坐标超出车间宽度范围！请重新输入");
                $(this).val("");
                this.focus();
            }
        });
        $("#end_Z").change(function () {
            var end_z = parseFloat($(this).val());
            if (end_z > height || end_z < 0) {
                alert("坐标超出车间高度范围！请重新输入");
                $(this).val("");
                this.focus();
            }
        });
        $("#generate_path").on("click", function () {
            if ($("#start_X").val().length === 0
                    || $("#start_Y").val().length === 0
                    || $("#start_Z").val().length === 0
                    || $("#end_X").val().length === 0
                    || $("#end_Y").val().length === 0
                    || $("#end_Z").val().length === 0) {
                alert("输入坐标不完整！");
            } else {

                $.ajax({
                    type : "post",
                    url : "/path/planning/generate",
                    dataType : "json",
                    data : {
                        // TODO 硬编码
                        "craneId" : 1
                    },
                    success : function (data) {
                        console.log(data);
                        // data.length == 0
                        if (data == null) {
                            alert("路径还未规划完毕！请稍后重试");
                        } else {
                            for (var i = 0; i < data.length; i++) {
                                if (data[i].pathFlag == 1) {
                                    var backPoint = [];
                                    backPoint.push(data[i].pointX.toFixed(4));
                                    backPoint.push(data[i].pointY.toFixed(4));
                                    backPoint.push(data[i].pointZ.toFixed(4));
                                    backPath.push(backPoint);
                                } else if (data[i].pathFlag == 2) {
                                    var runPoint = [];
                                    runPoint.push(data[i].pointX.toFixed(4));
                                    runPoint.push(data[i].pointY.toFixed(4));
                                    runPoint.push(data[i].pointZ.toFixed(4));
                                    runPath.push(runPoint);
                                }
                            }
                            console.log(backPath);
                            console.log(runPath);
                            option.series[0].data = backPath;
                            option.series[1].data = runPath;
                            if (option && typeof option === "object") {
                                myChart.setOption(option);
                            };
                            generateRealPath(true);
                            // $("#send_coordinate").attr("disabled", false);
                            // $("#generate_path").attr("disabled", true);
                        }
                    },
                    error : function () {
                        alert("生成路径失败！");
                    }
                })
            }
        });
        $("#reset").on("click", function () {
            myChart.clear();

            // 清除之前存有的点坐标，否则下次生成会叠加
            backPath = [];
            runPath = [];
            realPath = [];

            // 清空画布
            for (var i = 0; i < option.series.length; i++) {
                option.series[i].data = [];
            }
            myChart.setOption(option);
            generateRealPath(false);
            // $("#send_coordinate").attr("disabled", false);
            // $("#generate_path").attr("disabled", true);
        });
    })

    // 检查输入坐标是否合理
    function checkXY(input, target) {
        if (input > target || input < 0) {
            alert("请输入正确的坐标");
            $(this).val("");
            this.focus();
        }
    }

    function generateRealPath(flag) {
        if (flag == true) {
            var interval = setInterval(function () {
                getLatestData();
                if (flag == false) {
                    clearInterval(interval);
                }
            },1000)
        }
    }

    function getLatestData() {
        $.ajax({
            type : "get",
            url : "/realTime/monitor/getLatestData",
            dataType : "json",
            data : {

            },
            success : function (d) {
                if (d.status == "running") {
                    var x = d.data.cartPosition.toFixed(2);
                    var y = d.data.crabPosition.toFixed(2);
                    var z = d.data.hoistPosition.toFixed(2);
                    realPath.push([x,y,z]);
                    option.series[2].data = realPath;
                    if (option && typeof option === "object") {
                        // myChart.setOption(option, true); 为true时不合并之前的数据
                        myChart.setOption(option);
                    };
                } else {

                }
            },
            error : function () {
                alert("失败");
            }
        })
    }

</script>

</body>
</html>