<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
    <title>我的购物车</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
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
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
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
                        world of reading
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
                        <span class="abtxt1">我的</span>
                        <span class="abtext">购物车</span>
                    </h4>

                    <div class="checkout-right">
                        <h4>您的购物车中有
                            <span>${size} 个项目</span>
                        </h4>
                        <table class="timetable_sub table-responsive">
                            <thead>
                                <tr>
                                    <th>图书</th>
                                    <th>数量</th>
                                    <th>书名</th>
                                    <th>价格</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${shoppingCart.list}" var="item">
                                    <tr class="rem1">
                                        <td class="invert-image">
                                            <a href="book_detail.jsp">
                                                <img src="${pageContext.request.contextPath}/book/img/${item.id}" alt="${item.bookName}" class="img-responsive">
                                            </a>
                                        </td>
                                        <td class="invert">
                                            <div class="quantity">
                                                <div class="quantity-select">
                                                    <div class="entry value">
                                                        <span>${item.count}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="invert">${item.bookName}</td>

                                        <td class="invert">&yen;${item.price}</td>
                                    </tr>
                                </c:forEach>


                            </tbody>
                        </table>
                    </div>
                    <div class="checkout-left">
                        <div class="col-md-4 checkout-left-basket">
                            <h4>小结</h4>
                            <ul>
                                <c:forEach items="${shoppingCart.list}" var="item">
                                    <li>${item.bookName}
                                        <i>-</i>
                                        <span>&yen;${item.price}</span>
                                    </li>
                                </c:forEach>
                                <li>共计
                                    <i>-</i>
                                    <span>&yen;${shoppingCart.sum}</span>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-8 address_form">
                            <h4>提交到订单</h4>
                            <form action="/shoppingCart/submitOrder" method="post" class="creditly-card-form shopf-sear-headinfo_form">
                                <div class="creditly-wrapper wrapper">
                                    <div class="information-wrapper">
                                        <button type="submit" class="submit check_out">提交订单并支付</button>
                                    </div>
                                </div>
                            </form>

                        </div>

                        <div class="clearfix"> </div>

                    </div>

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

                for (i = 0, len = items.length; i < len; i++) {}
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