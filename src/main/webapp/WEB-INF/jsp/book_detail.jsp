<%@page pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>${book.bookname} - 图书详情</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
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
                    <!-- search-bar -->
                </div>
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
                    ${book.bookname}
                </h2>

            </div>
        </div>
        <!-- //banner-text -->
    </div>
    <!-- //banner -->

    <!-- Single -->
    <div class="innerf-pages section">
        <div class="container">
            <div class="col-md-4 single-right-left ">
                <div class="grid images_3_of_2">
                    <div class="flexslider1">
                        <ul class="slides">
                            <li data-thumb="images/s1.jpg">
                                <div class="thumb-image">
                                    <img src="${pageContext.request.contextPath}/book/img/${book.id}"
                                         data-imagezoom="true" alt=" "
                                         class="img-responsive"></div>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>

            </div>
            <div class="col-md-8 single-right-left simpleCart_shelfItem">
                <h3>${book.bookname}
                    <span>${book.publishyear}</span>
                </h3>
                <p>by
                    <a href="#">${book.author}</a>
                </p>
                <div class="caption">
                    豆瓣评分：${book.score}
                    <div class="clearfix"></div>
                    <h6>
                        &yen;${book.price}</h6>
                </div>
                <div class="desc_single">
                    <h5>内容简介</h5>
                    <p>${book.content}</p>
                </div>
                <div class="desc_single">
                    <h5>作者简介</h5>
                    <p>${book.authorinfo}</p>
                </div>
                <div class="occasional">
                    <h5>规格</h5>
                    <ul class="single_specific">
                        <li>
                            <span>出版日期 :</span> ${book.publishyear}
                        </li>
                        <li>
                            <span>页数 :</span> ${book.pages} 页
                        </li>
                        <li>
                            <span>价格 :</span> ${book.price}元
                        </li>
                        <li>
                            <span>所属分类 :</span> ${book.voKind}
                        </li>
                    </ul>

                </div>
                <div class="clearfix"></div>
                <div class="occasion-cart">
                    <div class="chr single-item single_page_b">
                        <form action="/shoppingCart/createNewItem" method="post">
                            <input type="hidden" name="bookname" value="${book.bookname}">
                            <input type="hidden" name="price" value="${book.price}">
                            <input type="hidden" name="id" value="${book.id}">
                            <%--<input type="hidden" name="count" value="100.00">--%>
                            <button type="submit" class="chr-cart pchr-cart">
                                <i class="fa fa-cart-plus" aria-hidden="true"></i> 加入到购物车
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
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

    chr.cart.on('chr_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {
            }
        }
    });
</script>
<!-- //cart-js -->
<!-- zoom -->
<script src="/ui/mymodel/js/imagezoom.js"></script>
<!-- zoom-->
<!-- single -->
<!-- FlexSlider -->
<script src="/ui/mymodel/js/jquery.flexslider.js"></script>
<script>
    // Can also be used with $(document).ready()
    $(window).load(function () {
        $('.flexslider1').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>
<!-- //FlexSlider-->

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