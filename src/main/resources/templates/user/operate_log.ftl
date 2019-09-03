<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/images/favicon.ico" type="image/ico"/>

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
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="../index.html" class="site_title"><i class="fa fa-paw"></i> <span>IUABC System</span></a>
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

                <br/>

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
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                               aria-expanded="false">
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
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown"
                               aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="/images/img.jpg" alt="Profile Image"/></span>
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
                                        <span class="image"><img src="/images/img.jpg" alt="Profile Image"/></span>
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
                                        <span class="image"><img src="/images/img.jpg" alt="Profile Image"/></span>
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
                                        <span class="image"><img src="/images/img.jpg" alt="Profile Image"/></span>
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
            <div class="x_panel">
                <div class="x_title">
                    <h2>用户日志</h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false"><i class="fa fa-wrench"></i></a>
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
                    <table id="table1" class="table table-striped table-bordered" >
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>姓名</th>
                            <th>IP</th>
                            <th>URL</th>
                            <th>方法</th>
                            <th>参数</th>
                            <th>请求时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list logList as log>
                            <tr>
                                <td>${log.logId}</td>
                                <td>${log.guestName}</td>
                                <td>${log.reqIp}</td>
                                <td>${log.reqUrl}</td>
                                <td>${log.reqMethod}</td>
                                <td>${log.reqArgs}</td>
                                <td>${log.beginTime}</td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
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

<!-- Custom Theme Scripts -->
<script src="/js/custom.min.js"></script>

<script>
    $(function () {
        $('#table1',this).DataTable({
            paging   : true,
            lengthChange: true,
            searching  : true,
            ordering   : true,
            autoWidth   : true,

            sortable : true, //是否启用排序
            sortOrder : 请求时间, "desc", //排序方式
            sidePagination : client, //分页方式：client客户端分页，server服务端分页（*）
            pagination : true, //是否显示分页（*）
            pageNumber : ended, //初始化加载最后一页
            pageSize : 10, //每页的记录行数（*）
            pageList : [ 10, 15, 20, 30, 100 ]//可供选择的每页的行数（*）
        })
    })
</script>

</body>
</html>