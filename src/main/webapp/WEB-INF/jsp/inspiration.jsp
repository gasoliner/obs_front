<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
    <title>感悟与分享</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <jsp:include page="header.jsp"/>
    <link href="/ui/mymodel/css/checkout.css" type="text/css" rel="stylesheet" media="all">
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
                    inspiration and share
                </h2>

            </div>
        </div>
        <!-- //banner-text -->
    </div>
    <!-- //banner -->
    <!--checkout-->
    <div class="innerf-pages section">
        <div class="container">
            <div class="privacy about">
                <h4 class="rad-txt">
                    <span class="abtxt1">感悟与</span>
                    <span class="abtext">分享</span>
                </h4>
                <div class="contact-form" style="width: auto">
                    <div class="col-md-7" style="width:100%">
                        <!-- contact form grid -->
                        <div class="contact-top1">
                            <h5>发表你的感悟</h5>
                            <form action="/inspiration/add" class="form_w3layouts" method="post">
                                <input class="billing-address-name form-control" type="text" name="title"
                                       placeholder="标题">
                                    <textarea name="content" placeholder="你的感悟，不超过500字"
                                                                          required=""></textarea>
                                <input type="submit" value="分享">
                            </form>
                        </div>
                        <!--  //contact form grid ends here -->
                    </div>
                    <!-- contact map grid -->

                    <!--//contact map grid ends here-->
                    <div class="clearfix"></div>
                </div>
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

    </div>
</div>
<!--//checkout-->
<jsp:include page="footer.jsp"/>
</div>
<!-- //home -->

<!-- Common js -->
<script src="/ui/mymodel/js/jquery-2.2.3.min.js"></script>
<!--// Common js -->
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
<!--quantity-->
<script>
    $('.value-plus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.text(), 10) + 1;
        divUpd.text(newVal);
    });

    $('.value-minus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.text(), 10) - 1;
        if (newVal >= 1) divUpd.text(newVal);
    });
</script>
<!--quantity-->
<!-- FadeOut-Script -->
<script>
    $(document).ready(function (c) {
        $('.close1').on('click', function (c) {
            $('.rem1').fadeOut('slow', function (c) {
                $('.rem1').remove();
            });
        });
    });
</script>
<script>
    $(document).ready(function (c) {
        $('.close2').on('click', function (c) {
            $('.rem2').fadeOut('slow', function (c) {
                $('.rem2').remove();
            });
        });
    });
</script>
<script>
    $(document).ready(function (c) {
        $('.close3').on('click', function (c) {
            $('.rem3').fadeOut('slow', function (c) {
                $('.rem3').remove();
            });
        });
    });
</script>
<!--// FadeOut-Script -->

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
<!--search jQuery-->
<script src="/ui/mymodel/js/main.js"></script>
<!--search jQuery-->

<!-- Scrolling Nav JavaScript -->
<script src="/ui/mymodel/js/scrolling-nav.js"></script>
<!-- //fixed-scroll-nav-js -->
<!--//scripts-->
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