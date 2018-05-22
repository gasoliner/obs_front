<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>创建新项目 - 海量图书 - 尽在Chronicle</title>
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
                <jsp:include page="neg.jsp"/>
                <!-- /.navbar-collapse -->
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
                    知识的海洋
                </h2>

            </div>
        </div>
        <!-- //banner-text -->
    </div>
    <!-- //banner -->
    <div style="height: auto;margin: 30px;">
        <h1 align="center">创建新项目到购物车</h1>
        <div style="margin-left: 300px;margin-right: 300px;" class="search-hotel">
            <h3 class="shopf-sear-headits-sear-head">
                <span>author</span> in focus</h3>
            <form action="/shoppingCart/add" method="post">
                <input type="hidden" name="id" value=""${id}>
                <h3>图书名称：</h3><input type="search" readonly="readonly" value="${bookname}" name="bookname" required="">
                <div>&nbsp;</div>
                <h3>图书价格：</h3><input type="search" readonly="readonly" value="${price}" name="price" required="">
                <div>&nbsp;</div>
                <h3>购买数量：</h3><input type="search" placeholder="请填写购买数量" name="count" required="">
                <div>&nbsp;</div>
                <input type="submit" value="加入购物车">
            </form>
        </div>

    </div>
    <!-- Shop -->
    <jsp:include page="footer.jsp"/>
</div>
<!-- //home -->
<!-- js -->
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
<!-- price range (top products) -->
<script src="/ui/mymodel/js/jquery-ui.js"></script>
<script>
    //<![CDATA[
    $(window).load(function () {
        $("#slider-range").slider({
            range: true,
            min: 0,
            max: 9000,
            values: [50, 6000],
            slide: function (event, ui) {
                $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
            }
        });
        $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

    }); //]]>
</script>
<!-- //price range (top products) -->

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

<script src="/ui/mymodel/js/bootstrap.js"></script>
<!-- start-smoth-scrolling -->
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
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
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
<!-- //here ends scrolling icon -->
<!-- smoothscroll -->
<script src="/ui/mymodel/js/SmoothScroll.min.js"></script>
<!-- //smoothscroll -->

</body>

</html>