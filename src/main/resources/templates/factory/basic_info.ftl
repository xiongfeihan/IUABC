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
                        <h2>Xiong fei</h2>
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
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
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
                                <img src="/images/img.jpg" alt="">Xiong fei
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
                                <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
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
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel" id="department">
                        <div id="ThreeJS" style="display: block; width: 100%; height: 100%"></div>
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

<!-- Three js -->
<#--<script src="/js/threejs/jquery-1.9.1.js"></script>-->
<script src="/js/threejs/Three.min.js"></script>
<script src="/js/threejs/OrbitControls.js"></script>
<script src="/js/threejs/ThreeBSP.js"></script>
<script src="/js/threejs/Detector.js"></script>
<script src="/js/threejs/Stats.js"></script>

<script src="/js/threejs/THREEx.KeyboardState.js"></script>
<script src="/js/threejs/THREEx.FullScreen.js"></script>
<script src="/js/threejs/THREEx.WindowResize.js"></script>

<!-- people -->
<script src="/js/threejs/people/three.js"></script>
<script src="/js/threejs/people/DDSLoader.js"></script>
<script src="/js/threejs/people/MTLLoader.js"></script>
<script src="/js/threejs/people/OBJLoader.js"></script>
<script src="/js/threejs/people/Detector.js"></script>
<script src="/js/threejs/people/stats.min.js"></script>
<script src="/js/threejs/people/PathControls.js"></script>
<script src="/js/threejs/people/Tween.js"></script>
<script src="/js/threejs/people/RequestAnimationFrame.js"></script>

<script>

    // 设置全局变量
    var scene, camera, renderer, controls,tween,door;
    var keyboard = new THREEx.KeyboardState();//保持键盘的当前状态，可以随时查询
    var clock = new THREE.Clock();
    // var SCREEN_WIDTH = window.innerWidth, SCREEN_HEIGHT = window.innerHeight;
    var SCREEN_WIDTH = $("#department").width(), SCREEN_HEIGHT = $("#department").height();
    //var VIEW_ANGLE = 45, ASPECT = SCREEN_WIDTH / SCREEN_HEIGHT, NEAR = 0.1, FAR = 20000;
    var VIEW_ANGLE = 75, ASPECT = SCREEN_WIDTH / SCREEN_HEIGHT, NEAR = 0.1, FAR = 10000;
    var materialArrayA = [];
    var materialArrayB = [];
    var matArrayA=[];//内墙
    var matArrayB = [];//外墙
    var dummy= new THREE.Object3D();//仿制品

    // 此处应该由后台返回车间参数（放大50倍）
    var radio = 50;
    var DEPARTMENT_LENGTH = 50 * radio;
    var DEPARTMENT_WIDTH = 23 * radio;
    var DEPARTMENT_HEIGHT = 9 * radio;

    init();
    animate();

    //1.场景
    function initScene(){
        scene = new THREE.Scene();
    }

    //2.相机
    function initCamera(){
        camera = new THREE.PerspectiveCamera( VIEW_ANGLE, ASPECT, NEAR, FAR);
        camera.position.set(0,1000,1800);
        camera.lookAt(scene.position);
        camera.lookAt(0,0,0);
        scene.add(camera);
    }

    //3.渲染器
    function initRender(){
        if ( Detector.webgl )
            renderer = new THREE.WebGLRenderer( {antialias:true} );
        else
            renderer = new THREE.CanvasRenderer();
        //设置渲染器的大小为窗口的内宽度，也就是内容区的宽度。
        renderer.setSize(SCREEN_WIDTH, SCREEN_HEIGHT);
        container = document.getElementById( 'ThreeJS' );
        container.appendChild( renderer.domElement );
        renderer.setClearColor(0x4682B4,1.0);
    }

    //4.事件
    function initEvent(){
        THREEx.WindowResize(renderer, camera);
        THREEx.FullScreen.bindKey({ charCode : 'm'.charCodeAt(0) });
    }

    //5.控制
    function initControls(){
        controls = new THREE.OrbitControls( camera, renderer.domElement );
    }

    //6.光源
    function initLight(){
        // 位置不同，方向光作用于物体的面也不同，看到的物体各个面的颜色也不同
        // A start, 第二个参数是光源强度
        var directionalLight = new THREE.DirectionalLight( 0xffffff,1 );//模拟远处类似太阳的光源
        directionalLight.position.set( 0, 100, 0).normalize();
        scene.add( directionalLight );
        //A end
        var ambient = new THREE.AmbientLight( 0xffffff,1 ); //AmbientLight,影响整个场景的光源
        ambient.position.set(0,0,0);
        scene.add( ambient );
        //var pointlight = new THREE.PointLight(0x000000,1.5,2000);
        //scene.add(pointlight);
    }

    //创建地板
    function createFloor(){
        var loader=new THREE.TextureLoader();
        loader.load("/images/floor.jpg",function(texture){
            texture.wrapS = texture.wrapT = THREE.RepeatWrapping;
            texture.repeat.set( 10, 10 );
            var floorGeometry = new THREE.BoxGeometry(DEPARTMENT_WIDTH + 10, DEPARTMENT_LENGTH + 10, 1);
            var floorMaterial = new THREE.MeshBasicMaterial( { map: texture, side: THREE.DoubleSide } );
            var floor = new THREE.Mesh(floorGeometry, floorMaterial);
            floor.position.y = -0.5;
            floor.rotation.x = Math.PI / 2;
            scene.add(floor);
        });

        //茶色：0x58ACFA   透明玻璃色：0XECF1F3
        var glass_material=new THREE.MeshBasicMaterial( { color: 0XECF1F3});
        glass_material.opacity=0.4;
        glass_material.transparent=true;

        // var  left_wall=returnWallObject(20, 200, 1100,0,matArrayB,-801,100,0);
        // var  left_cube=returnWallObject(20, 110, 1100,0,matArrayB,-801,100,0);
        // createResultBsp(left_wall,left_cube,1);
        // createCubeWall(1, 110, 1100,0,glass_material,-801,100,0);
        //
        // var  right_wall=returnWallObject(20, 200, 1100,1,matArrayB,801,100,0);
        // var  right_cube=returnWallObject(20, 110, 1100,0,matArrayB,801,100,0);
        // createResultBsp(right_wall,right_cube,1);
        // createCubeWall(1, 110, 1100,0,glass_material,801,100,0);
    }

    //墙上挖门，通过两个几何体生成BSP对象
    function createResultBsp(bsp,less_bsp,mat){
        switch(mat)
        {
            case 1:
                var material = new THREE.MeshPhongMaterial({color:0x9cb2d1,specular:0x9cb2d1,shininess:30,transparent:true,opacity:1});
                break;
            case 2:
                var material = new THREE.MeshPhongMaterial({color:0xafc0ca,specular:0xafc0ca,shininess:30,transparent:true,opacity:1});
                break;
            default:
        }

        var sphere1BSP = new ThreeBSP(bsp);
        var cube2BSP = new ThreeBSP(less_bsp);//0x9cb2d1 淡紫,0xC3C3C3 白灰 , 0xafc0ca灰
        var resultBSP = sphere1BSP.subtract(cube2BSP);
        var result = resultBSP.toMesh(material);
        result.material.flatshading = THREE.FlatShading;
        result.geometry.computeFaceNormals();  //重新计算几何体侧面法向量
        result.geometry.computeVertexNormals();
        result.material.needsUpdate = true;  //更新纹理
        result.geometry.buffersNeedUpdate = true;
        result.geometry.uvsNeedUpdate = true;
        scene.add(result);
    }

    //创建墙
    function createCubeWall(width, height, depth,angle,material,x,y,z){
        var cubeGeometry = new THREE.BoxGeometry(width, height, depth );
        var cube = new THREE.Mesh( cubeGeometry, material );
        cube.position.x = x;
        cube.position.y = y;
        cube.position.z = z;
        cube.rotation.y += angle*Math.PI;  //-逆时针旋转,+顺时针
        scene.add(cube);
    }

    //返回墙对象
    function returnWallObject(width, height, depth,angle,material,x,y,z){
        var cubeGeometry = new THREE.BoxGeometry(width, height, depth);
        var cube = new THREE.Mesh( cubeGeometry, material );
        cube.position.x = x;
        cube.position.y = y;
        cube.position.z = z;
        cube.rotation.y += angle*Math.PI;
        return cube;
    }

    //创建墙纹理
    function createWallMaterail(){
        matArrayA.push(new THREE.MeshPhongMaterial({color: 0xafc0ca}));  //前  0xafc0ca :灰色
        matArrayA.push(new THREE.MeshPhongMaterial({color: 0xafc0ca}));  //后
        matArrayA.push(new THREE.MeshPhongMaterial({color: 0xd6e4ec}));  //上  0xd6e4ec： 偏白色
        matArrayA.push(new THREE.MeshPhongMaterial({color: 0xd6e4ec}));  //下
        matArrayA.push(new THREE.MeshPhongMaterial({color: 0xafc0ca}));  //左    0xafc0ca :灰色
        matArrayA.push(new THREE.MeshPhongMaterial({color: 0xafc0ca}));  //右

        matArrayB.push(new THREE.MeshPhongMaterial({color: 0xafc0ca}));  //前  0xafc0ca :灰色
        matArrayB.push(new THREE.MeshPhongMaterial({color: 0x9cb2d1}));  //后  0x9cb2d1：淡紫
        matArrayB.push(new THREE.MeshPhongMaterial({color: 0xd6e4ec}));  //上  0xd6e4ec： 偏白色
        matArrayB.push(new THREE.MeshPhongMaterial({color: 0xd6e4ec}));  //下
        matArrayB.push(new THREE.MeshPhongMaterial({color: 0xafc0ca}));  //左   0xafc0ca :灰色
        matArrayB.push(new THREE.MeshPhongMaterial({color: 0xafc0ca}));  //右

    }

    //创建房间布局
    function createLayout(){

        // 墙面1 立方体比较长的面  左一
        createCubeWall(10, DEPARTMENT_HEIGHT, DEPARTMENT_LENGTH,0,matArrayB,-DEPARTMENT_WIDTH / 2, DEPARTMENT_HEIGHT / 2,0);
        // 墙面2  立方体比较长的面   右一
        createCubeWall(10, DEPARTMENT_HEIGHT, DEPARTMENT_LENGTH,1,matArrayB,DEPARTMENT_WIDTH / 2,DEPARTMENT_HEIGHT / 2,0);
        // 墙面3 门对面的墙 立方体比较短的面
        createCubeWall(10, DEPARTMENT_HEIGHT, DEPARTMENT_WIDTH + 10,1.5,matArrayB,0,DEPARTMENT_HEIGHT / 2,-DEPARTMENT_LENGTH / 2);

        // 测试墙面
        // createCubeWall(10, 200, 1310,0.5,matArrayB,0,100,450);

        // 墙面4   带门的面
        var wall=returnWallObject(DEPARTMENT_WIDTH + 10, DEPARTMENT_HEIGHT,10,0,matArrayB,0,DEPARTMENT_HEIGHT / 2,DEPARTMENT_LENGTH / 2);
        // 门框
        var door_cube=returnWallObject(1000, 400,10,0,matArrayB,0,200,DEPARTMENT_LENGTH / 2);
        createResultBsp(wall,door_cube,1);


        // 为墙面安装门,右门
        var loader=new THREE.TextureLoader();
        loader.load("/images/gate1.png",function(texture){
            var  doorgeometry = new THREE.BoxGeometry(1000, 400, 2);
            var doormaterial = new THREE.MeshBasicMaterial({map:texture,color:0xffffff});
            doormaterial.opacity=1.0;
            doormaterial.transparent=true;
            door = new THREE.Mesh( doorgeometry,doormaterial);
            door.position.set(-500,0,0);
            var door1=door.clone();
            door1.position.set(500,0,0);
            door1.visible=false;
            dummy.add(door);
            dummy.add(door1);
            dummy.position.set(500,200,DEPARTMENT_LENGTH / 2);
            scene.add(dummy);
        });

        // 房间A:隔墙1
        // createCubeWall(10, 200, 250,0,matArrayA,-151,100,325);
        //房间A:隔墙2  无门
        // createCubeWall(10, 200, 220,0.5,matArrayA, -256,100,201);
        // 厨房：隔墙3
        // createCubeWall(350, 200, 10,0,matArrayA, 481,100,131);
        // 厨房：隔墙4 无门
        // createCubeWall(10, 200, 200,0,matArrayA, 301,100,225);
        // 房间B
        // createCubeWall(350, 200, 10,0,matArrayA, -471,100,-50);
        //房间B  无门
        // createCubeWall(200, 200, 10,0.5,matArrayA, 0,100,-350);
        // 房间C
        // createCubeWall(220, 200, 10,0,matArrayA, 540,100,-50);
        //房间C 无门
        // createCubeWall(200, 200, 10,0.5,matArrayA, 250,100,-350);
        //厕所
        var cube=returnWallObject(10, 200, 260,0.5,matArrayA, 125,100,-250);
        //厕所门框
        var door_cube1 =returnWallObject(10, 160,80,0.5,matArrayA,155,90, -250);
        // createResultBsp(cube,door_cube1,2);

        //茶色：0x58ACFA   透明玻璃色：0XECF1F3
        var glass_material=new THREE.MeshBasicMaterial( { color: 0x58ACFA});
        glass_material.opacity=0.6;
        glass_material.transparent=true;
        // createCubeWall(1, 180,80,0.5,glass_material,155,90, -250);
    }

    //7.初始化OBJ对象
    function initObject(){
        //墙纹理
        createWallMaterail();
        createFloor();
        createLayout();
    }

    //初始化函数
    function init()
    {
        initScene();
        initCamera();
        initRender();
        initEvent();
        initControls();
        initLight();
        initObject();
        //监听键盘按键
        document.addEventListener("keydown",onkeyDown,false);
    }


    var door_state=true;//默认是门是关闭的
    //Enter=13,Space=32;
    function onkeyDown(event) {
        switch(event.keyCode) {
            case 13:
                console.log(event.keyCode);
                if(door_state){
                    dummy.rotation.y+=0.5*Math.PI;
                    door_state=false;
                }else{
                    dummy.rotation.y-=0.5*Math.PI;
                    door_state=true;
                }
                break;
            default:
                console.log(event.keyCode);
                break;
        }
    }


    function animate()
    {
        requestAnimationFrame( animate );
        renderer.render( scene, camera );
        TWEEN.update(  );
        update();
    }

    function update()
    {
        var delta = clock.getDelta();
        var moveDistance = 200 * delta;
        var rotateAngle = Math.PI / 2 * delta;
        controls.update();
    }

    window.onresize = function(){
        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();
        renderer.setSize( window.innerWidth, window.innerHeight );
    };

</script>

</body>
</html>