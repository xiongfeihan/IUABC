<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
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
    <!-- Custom Theme Style -->
    <link href="/css/custom.min.css" rel="stylesheet">
</head>
<body>
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
    <div class="col-md-12 column" style="text-align: center">
        <h1 style="color: palegreen">用户注册</h1>
    </div>
</div>
<div class="row clearfix" style="margin-top: 75px">
    <form id="registerForm" class="form-horizontal form-label-left" action="javascript:">
        <div class="form-group">
            <label class="control-label col-md-5" for="userName">姓名<span class="required">*</span>
            </label>
            <div class="col-md-2">
                <input type="text" id="userName" required="required" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-5" for="gender">性别<span class="required">*</span></label>
            <div class="col-md-2 form-check form-check-inline" id="gender">
                <label class="btn btn-primary"><input type="radio" value="male" name="gender" checked="checked">男</label>
                <label class="btn btn-danger"><input type="radio" value="female" name="gender">女</label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-5" for="password">密码<span class="required">*</span>
            </label>
            <div class="col-md-2">
                <input type="password" id="password" required="required" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-5" for="passwordConfirm">确认密码<span class="required">*</span>
            </label>
            <div class="col-md-2">
                <input type="password" id="passwordConfirm" required="required" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-5" for="telephone">联系方式<span class="required">*</span></label>
            <div class="col-md-2">
                <input id="telephone" class="form-control" type="tel" required="required">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-5" for="email">邮箱<span class="required">*</span></label>
            <div class="col-md-2">
                <input type="email" class="form-control" id="email" required="required">
            </div>
        </div>
        <div class="form-group hidden"><#--hidden：默认为权限最低的普通用户-->
            <label class="control-label col-md-5" for="privilege">权限<span class="required">*</span></label>
            <div class="col-md-2">
                <select id="privilege" class="form-control">
                    <option value="0">选择权限</option>
                    <option value="1">管理员</option>
                    <option value="2" selected="selected">普通用户</option>
                </select>
            </div>
        </div>
        <br>
        <div class="form-group">
            <div class="col-md-2 col-md-offset-5">
                <button type="submit" class="btn btn-block btn-warning">注&nbsp;&nbsp;册</button>
            </div>
        </div>
    </form>
</div>
<div class="navbar-default navbar-fixed-bottom ">
    <p style="text-align: center;margin-top: 10px">©2019 Tongji University, All Rights Reserved.</p>
</div>

<!-- jQuery -->
<script src="/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Custom Theme Scripts -->
<script src="/js/custom.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#userName", this).change(function () {
            var userName = $(this).val();
            if (userName.length === 0 || userName.length > 20) {
                alert("用户名不能为空，且最大长度限制20位字符");
                $(this).val("");
            }
        });
        $("#password", this).change(function () {
            var passMatch = /^[a-zA-Z\d]{6,16}$/;
            if (!passMatch.test($(this).val())) {
                alert("密码请设置为6-16位的数字字母组合！");
                $(this).val("");
            }
        });
        $("#passwordConfirm", this).change(function () {
            var confirm = $(this).val();
            var password = $("#password").val();
            if (confirm !== password) {
                alert("两次填写的新增用户密码不一致，请重新填写！");
                $(this).val("");
            }
        });
        $("#telephone",this).change(function () {
            var telMatch = /^[1][3-8][0-9]{9}$/;
            if (!telMatch.test($(this).val())) {
                alert("请输入标准的11位电话号码！");
                $(this).val("");
            }
        });
        /*用户注册触发事件*/
        $("#registerForm", this).submit(function () {
            var userStr = {
                "userName": $('#userName').val(),
                "gender": $("#gender input:radio:checked").val(),
                "telephone": $('#telephone').val(),
                "email": $('#email').val(),
                "password": $('#password').val(),
                "privilege": $('#privilege').find("option:selected").val()
            };
            var userJson = JSON.stringify(userStr);
            $.ajax({
                type: "post",
                url: "/register",
                dataType: "json",
                data: {
                    "userJson": userJson
                },
                success: function (result) {
                    if (result === true) {
                        if(confirm("注册成功!点击'确定'进入登录页面")){
                            window.location.href = "/";
                        }else{
                            window.location.reload();
                        }
                    } else {
                        alert("注册失败！");
                    }
                },
                error: function () {
                    alert("出现未知错误！");
                }
            })
        });
    })
</script>
</body>
</html>