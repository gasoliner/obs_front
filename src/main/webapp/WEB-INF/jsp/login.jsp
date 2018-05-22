<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>欢迎登录 - 海量图书 - 尽在Chronicle</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <jsp:include page="header.jsp"/>
</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<div id="home">
    <!-- header -->
    <!-- navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="main-nav">
            <div class="container">

                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Chronicle</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <h1>
                        <a class="navbar-brand" href="index">Chronicle</a>
                    </h1>
                </div>
                <jsp:include page="neg.jsp"/>
                <div class="clearfix"></div>
            </div>
            <!-- /.container -->
        </div>
    </nav>
    <!-- //navbar ends here -->
    <!-- banner -->
    <div class="banner-bg-inner">
        <!-- banner-text -->
        <div class="banner-text-inner">
            <div class="container">
                <h2 class="title-inner">
                    欢迎 登录
                </h2>

            </div>
        </div>
        <!-- //banner-text -->
    </div>
    <!-- //banner -->
    <!-- signin and signup form -->
    <div class="login-form section text-center">
        <div class="container">
            <h4 class="rad-txt">
                <span class="abtxt1">登录</span>
                <span class="abtext">注册</span>
            </h4>
            <div id="loginbox" style="margin-top:30px;" class="mainbox  loginbox">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">用户登录</div>
                    </div>
                    <div style="padding-top:30px" class="panel-body">
                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                        <form id="loginform" class="form-horizontal" action="/login/login" method="post">
                            <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon">
                                        <i class="glyphicon glyphicon-user"></i>
                                    </span>
                                <input id="login-username" type="text" class="form-control" name="name" value=""
                                       placeholder="账号" required="">
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon">
                                        <i class="glyphicon glyphicon-lock"></i>
                                    </span>
                                <input id="login-password" type="password" class="form-control" name="password"
                                       placeholder="密码" required="">
                            </div>
                            <div class="input-group">
                            </div>
                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="signup-btn">
                                    <button style="width: 30%" id="btn-login" type="submit" class="btn btn-info">
                                        <i class="icon-hand-right"></i>  登录
                                    </button>
                                </div>

                            </div>
                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%">
                                        还没有账号！
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            点击注册
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div id="signupbox" style="display:none; margin-top:50px" class="mainbox loginbox">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">注册</div>
                        <div style="float:right; font-size: 85%; position: relative; top:-10px">
                            <a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">去登陆</a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <form id="signupform" class="form-horizontal" action="/login/registry" method="post">
                            <%--在这里返回服务端注册错误信息--%>
                            <%--<div id="signupalert" style="display:none" class="alert alert-danger">--%>
                            <%--<p>错误:</p>--%>
                            <%--<span>${login_code}</span>--%>
                            <%--</div>--%>
                            <div class="form-group">
                                <label class="col-md-3 col-sm-3 col-xs-3 control-label">邮箱</label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <input type="text" class="form-control" name="email" placeholder="邮箱"
                                           required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 col-sm-3 col-xs-3 control-label">联系方式</label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <input type="text" class="form-control" name="phone" placeholder="联系方式"
                                           required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 col-sm-3 col-xs-3 control-label">收货地址</label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <input type="text" class="form-control" name="receive" placeholder="收货地址"
                                           required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 col-sm-3 col-xs-3 control-label">用户名</label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <input type="text" class="form-control" name="nickname" placeholder="用户名"
                                           required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 col-sm-3 col-xs-3 control-label">性别</label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <input type="text" class="form-control" name="sex" placeholder="性别"
                                           required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 col-sm-3 col-xs-3 control-label">密码</label>
                                <div class="col-md-9 col-sm-9 col-xs-9">
                                    <input type="password" class="form-control" name="password" placeholder="密码"
                                           required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <!-- Button -->
                                <div class="signup-btn">
                                    <button id="btn-signup" type="submit" class="btn btn-info">
                                        <i class="icon-hand-right"></i> &nbsp; 注册
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--//signin and signup form ends here-->
<jsp:include page="footer.jsp"/>
<!-- //home -->
<!-- js -->
<script src="/ui/mymodel/js/jquery-2.2.3.min.js"></script>
<!-- //js -->
<!--search jQuery-->
<script src="/ui/mymodel/js/main.js"></script>
<!--search jQuery-->
<!-- cart-js -->
<script src="/ui/mymodel/js/minicart.js"></script>
<script>
    chr.render();

    chr.cart.on('new_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {
            }
        }
    });
</script>
<!-- //cart-js -->

<!-- dropdown nav -->
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<!-- //dropdown nav -->

<!-- Scrolling Nav JavaScript -->
<script src="/ui/mymodel/js/scrolling-nav.js"></script>
<!-- //fixed-scroll-nav-js -->
<!-- start-smooth-scrolling -->
<script src="/ui/mymodel/js/move-top.js"></script>
<script src="/ui/mymodel/js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script>
    $(document).ready(function () {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<script src="/ui/mymodel/js/SmoothScroll.min.js"></script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/ui/mymodel/js/bootstrap.js"></script>
</body>

</html>