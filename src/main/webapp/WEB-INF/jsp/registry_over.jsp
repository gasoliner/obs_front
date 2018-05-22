<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>注册结果 - 海量图书 - 尽在Chronicle</title>
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
                    注 册 结 果
                </h2>

            </div>
        </div>
        <!-- //banner-text -->
    </div>
    <!-- //banner -->
    <!-- signin and signup form -->
    <div class="login-form section text-center">
        <p align="center">
            <c:if test="${new_id != null}">
            <h3>恭喜您注册成功，您的账号是</h3><h1>${new_id}</h1><br/>
        <h3>点击<a href="/">返回主页</a></h3> <br/>
        <h3>点击<a href="/login/ui">登录</a></h3>
        </c:if>
        <c:if test="${new_id == null}">
            <h2><b>注册失败，<a href="/login/ui">点击返回注册页面</a></b></h2>
        </c:if> 
        </p>
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