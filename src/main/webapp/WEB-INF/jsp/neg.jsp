<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="collapse navbar-collapse navbar-ex1-collapse nav-right">
    <ul class="nav navbar-nav navbar-left cl-effect-15">
        <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
        <li class="hidden">
            <a class="page-scroll" href="#page-top"></a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/">首页</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/book/ui/0">本站图书</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/inspiration/ui">感悟与分享</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/shoppingCart/detail">我的购物车</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/order/ui">我的订单</a>
        </li>

        <c:if test="${consumer == null}">
            <li>
                <a href="${pageContext.request.contextPath}/login/ui" title="登录 & 注册">
                    <span class="fa fa-user nav-icon" aria-hidden="true">&nbsp;&nbsp;登录 & 注册</span>
                </a>
            </li>
        </c:if>

        <c:if test="${consumer != null}">
            <li>
                欢迎您，${consumer.nickname}
                <a href="${pageContext.request.contextPath}/login/logout">
                    &nbsp;&nbsp;退出
                </a>
            </li>
        </c:if>


    </ul>
</div>