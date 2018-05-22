<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>

<head>
    <title>首页</title>
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
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse nav-right">
                    <jsp:include page="neg.jsp"/>
                </div>
                <!-- /.navbar-collapse -->
                <div class="clearfix"></div>
            </div>
            <!-- /.container -->
        </div>
    </nav>
    <!-- //navbar ends here -->
    <!-- banner -->
    <div class="banner-bg-agileits">
        <!-- banner-text -->
        <div class="banner-text">
            <div class="container">
                <p class="b-txt">the</p>
                <h2 class="title">
                    Library
                </h2>
                <ul class="banner-txt">
                    <li>分享.</li>
                    <li> 探索.</li>
                    <li>充实.</li>
                </ul>
            </div>
        </div>
        <!-- //banner-text -->
    </div>
    <!-- //banner -->
    <!-- about -->
    <div class="about-sec section" id="about">
    </div>
    <!-- //about ends here -->
    <!-- about bottom -->
    <div class="about-bottom section">
        <div class="container-fluid">
            <h4 class="rad-txt">
                <span class="abtxt1">热门</span>
                <span class="abtext"> 分享</span>
            </h4>
            <!-- about-bottom grid1 -->
            <div style="width: 100%" class="col-md-6 about-bottom-right">
                <p align="right" class="abt-p"><b>我们可以由读书搜集知识，但必须利用思考把糠和麦子分开。 —— 富斯德</b>
                </p>
                <div style="width: auto" class="col-md-6 col-sm-6 col-xs-6 services-w3ls">
                    <c:forEach items="${inspirationList}" var="inspiration">
                    <div class="resp-tabs-container">
                        <div class="pay_info">
                            <div class="vertical_post check_box_fpay">
                                <h4><b>${inspiration.title}</b></h4>
                                <div class="checkbox">
                                    <div class="check_box_one cashon_delivery">
                                        <label class="anim">
                                            <p> ${inspiration.content}</p>
                                            <p align="right">分享人：${inspiration.voCid}</p>
                                            <p align="right">分享时间：${inspiration.voPublish}</p>
                                        </label>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                </c:forEach>

                </div>
                <div class="clearfix"></div>
            </div>
            <!-- //about-bottom grid1 ends here -->
            <!-- //Numscroller -->
            <div class="clearfix"></div>
        </div>
        <!-- //about container ends here-->
    </div>
    <!--//about bottom ends here-->

    <!-- footer -->
    <jsp:include page="footer.jsp"/>
    <!-- //footer -->

</div>
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
<!-- Scrolling Nav JavaScript -->
<script src="/ui/mymodel/js/scrolling-nav.js"></script>
<!-- //fixed-scroll-nav-js -->
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
<!-- about bottom grid Numscroller -->
<script src="/ui/mymodel/js/numscroller-1.0.js"></script>
<!-- //about bottom grid Numscroller -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/ui/mymodel/js/bootstrap.js"></script>
</body>

</html>