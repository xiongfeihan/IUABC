<!DOCTYPE html>
<html lang="en">
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
    <!-- BootstrapValidator -->
    <link href="/vendors/bootstrap-validator/bootstrapValidator.min.css" rel="stylesheet">
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

    <!-- Custom Theme Style -->
    <link href="/css/custom.min.css" rel="stylesheet">
    <style type="text/css">
        .code {
            background-color: gold;
            font-family: "Times New Roman", serif; /*设置字体*/
            color: brown;
            font-size: 20px;
            line-height: 34px;
            letter-spacing: 3px;
            font-weight: bolder;

            width: 52%;
            height: 34px;
            text-align: center;
            display: inline-block;

            cursor: pointer;
        }

        .yz {
            float: right;
            line-height: 34px;
            font-size: 12px;
            color: #e4b9c0;

            cursor: pointer;
        }

        .yz:hover {
            text-decoration: underline;
            color: dodgerblue;
        }
    </style>
</head>

<body onload="createCode()">
<#--系统介绍的遮罩窗体-->
<div class="modal fade" id="modal-container-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">
                    IUABC系统介绍
                </h4>
            </div>
            <div class="modal-body">
                IUABC系统是英文Intelligent Unmanned Automatic Bridge Crane的缩写
                <br>
                即：智能型无人化全自动桥式起重机系统
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<#--联系我们的遮罩窗体-->
<div class="modal fade" id="modal-container-2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">
                    开发人员名单
                </h4>
            </div>
            <div class="modal-body">
                <p>姓名：韩雄飞</p>
                <p>邮箱：111@qq.com</p>
                <hr>
                <p>姓名：司圣杰</p>
                <p>邮箱：222@qq.com</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-top: 2px">
            <a class="navbar-brand" href="#" style="height: 100%;letter-spacing: 3px;color: white">IUABC</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a id="modal-1" href="#modal-container-1" role="button" class="btn" data-toggle="modal">系统介绍</a>
                </li>
                <li>
                    <a id="modal-2" href="#modal-container-2" role="button" class="btn" data-toggle="modal">联系我们</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="row clearfix" style="margin-top: 150px;">
    <div class="col-md-12 column">
        <h1 style="text-align: center;color: #e1edf7">
            智能型无人化全自动桥式起重机管理系统
        </h1>
    </div>
</div>
<div>
    <div class="row clearfix">
        <div class="col-md-1 column">
        </div>
        <div class="col-md-7 column" style="margin-top: 100px">
            <div class="carousel slide" id="carousel-998954" data-ride="carousel" data-interval="3000">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-998954">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-998954">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-998954">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="http://cdn.ibootstrap.cn/lorempixel.com/1600/500/sports/1/default.jpg"/>
                        <div class="carousel-caption">
                            <h4>
                                First Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                                gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="http://cdn.ibootstrap.cn/lorempixel.com/1600/500/sports/2/default.jpg"/>
                        <div class="carousel-caption">
                            <h4>
                                Second Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                                gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="http://cdn.ibootstrap.cn/lorempixel.com/1600/500/sports/3/default.jpg"/>
                        <div class="carousel-caption">
                            <h4>
                                Third Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                                gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-998954" data-slide="prev"><span
                            class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control"
                                                                                    href="#carousel-998954"
                                                                                    data-slide="next"><span
                            class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
        <div class="col-md-3 column" style="margin-top: 100px">
            <form id="loginForm" role="form" method="post" action="/login">
                <div class="form-group">
                    <label for="exampleInputEmail1">账号</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="请输入账号" required
                           autofocus/>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">密码</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" required
                           autofocus/>
                </div>
                <div class="form-group">
                    <label>验证码</label><br>
                    <input type="text" class="form-control" id="verification" maxlength="4" style="width:65%;display: inline"
                           placeholder="请输入验证码(不区分大小写)" required autofocus/>
                    <div style="float: right;width: 34%;">
                        <div class="code" id="checkCode" onclick="createCode()"></div>
                        <a class="yz" onclick="createCode()">看不清换一张</a>
                    </div>
                </div>
                <div class="checkbox">
                    <label><input type="checkbox"/>记住我</label>
                </div>
                <button id="submit" type="submit" class="btn btn-lg btn-primary btn-block">登&nbsp;&nbsp;录
                </button>
            </form>
            <#if Session["msg"]??>
                <p id="msg">
                    <span style="color: #f83532;font-weight: bold;font-size: 16px">
                        ${Session.msg}
                    </span>
                </p>
            </#if>
            <#if Session["failMsg"]??>
                <#--如果failMsg不为空-->
                <p id="failMsg">
                    <span style="color: #f83532;font-weight: bold;font-size: 16px">
                        ${Session.failMsg}
                    </span>
                </p>
            </#if>
        </div>
        <div class="col-md-1 column">
        </div>
    </div>
    <div class="navbar-default navbar-fixed-bottom ">
        <p style="text-align: center;margin-top: 10px">©2019 Tongji University, All Rights Reserved.</p>
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
<script src="/vendors/gauge.js/dist/gauge.min.js"></script>
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

<!-- bootstrapValidator -->
<script src="/vendors/bootstrap-validator/bootstrapValidator.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="/js/custom.min.js"></script>
<script type="text/javascript" src="/js/login.js"></script>
</body>
</html>
