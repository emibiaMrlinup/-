
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert title here</title>
    <script src="/assets/js/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/default.css">
    <script	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
    <link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="/assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--theme-style-->
    <link href="/assets/css/style4.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <!--- start-rate---->

    <!---//End-rate---->
</head>
<body>
<!-- header -->
<div class="header">
    <div class="container">
        <div class="head">
            <div class=" logo">
                <a href="${pageContext.request.contextPath}/"><img src="/assets/images/logo.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login">
                <ul >
                    <li><a href="${pageContext.request.contextPath}/tologin.do">Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/toReg.do">Register</a></li>
                    <li><a href="${pageContext.request.contextPath}/CheckOut.do">Checkout</a></li>
                </ul>
            </div>

            <div class="col-sm-5 header-social">
                <ul >
                    <li><a href="#"><i></i></a></li>
                    <li><a href="#"><i class="ic1"></i></a></li>
                    <li><a href="#"><i class="ic2"></i></a></li>
                    <li><a href="#"><i class="ic3"></i></a></li>
                    <li><a href="#"><i class="ic4"></i></a></li>
                </ul>

            </div>
            <div class="clearfix"> </div>
        </div>
    </div>

    <div class="container">

        <div class="head-top">

            <div class="col-sm-8 col-md-offset-2 h_menu4">
                <nav class="navbar nav_bottom" role="navigation">

                    <!-- 导航 -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- 导航 -->
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav nav_1">
                            <li><a class="color" href="${pageContext.request.contextPath}/">Home</a></li>

                            <li class="dropdown mega-dropdown active">
                                <a class="color1" href="#" class="dropdown-toggle"  data-toggle="dropdown">商品分类<span class="caret"></span></a>
                                <div class="dropdown-menu">
                                    <div class="menu-top">
                                        <c:forEach items="${cates}" var="c" >
                                            <div class="col1">
                                                <div class="h_nav">
                                                    <c:if test="${c.parentid == null}">
                                                        <h4>${c.catename}</h4>
                                                        <ul>
                                                            <c:forEach  items="${cates}" var="i" >
                                                                <c:if test="${i.parentid!=null}">
                                                                    <c:if test="${i.parentid==c.id}" >
                                                                        <li><a href="${pageContext.request.contextPath}/getInThisPage.do?id=${i.id}">${i.catename}</a></li>
                                                                    </c:if>
                                                                </c:if>
                                                            </c:forEach>
                                                        </ul>
                                                    </c:if>

                                                </div>

                                            </div>
                                        </c:forEach>
                                        <div class="col1 col5">
                                            <img src="/assets/images/me.png" class="img-responsive" alt="">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </li>
                            <li><a class="color2" href="${pageContext.request.contextPath}/getHotsPage.do">hots</a></li>
                            <li><a class="color4" href="#">About</a></li>
                        </ul>
                    </div>

                </nav>
            </div>
            <div class="col-sm-2 search-right">
                <ul class="heart">
                    <li>
                        <a href="#">
                            <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                        </a></li>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
                </ul>
                <div class="cart box_1">
                    <a href="cart.jsp">
                        <h3> <div class="total">
                            <span class="simpleCart_total"></span></div>
                            <img src="/assets/images/cart.png" alt=""/></h3>
                    </a>
                    <p><a href="${pageContext.request.contextPath}/getCart.do" class="simpleCart_empty">Empty Cart</a></p>
                </div>
                <div class="clearfix"> </div>
                <!-- 子布局 -->
                <link href="/assets/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                <script src="/assets/js/jquery.magnific-popup.js" type="text/javascript"></script>
                <!---//pop-up-box---->
                <div id="small-dialog" class="mfp-hide">
                    <div class="search-top">
                        <div class="login-search">
                            <input type="submit" value="">
                            <input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}">
                        </div>
                        <p>Shopin</p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- header -->
    <div class="container">
    </div>
<!-- banner -->

<!-- content-->
<div class="content">
    <div class="container">
        <div class="content-top">
            <div class="clearfix"></div>
        </div>
        <!--products-->
        <!--products-type1-->

        <div class="content-mid">
            <h3>${cate.catename}</h3>
            <label class="line"></label>
            <div class="mid-popular">

                <c:forEach items="${goods}" var="c">
                    <c:if test="${c.cateid==cate.id}">
                        <div class="col-md-3 item-grid simpleCart_shelfItem">
                            <div class=" mid-pop">
                                <div class="pro-img">
                                    <img src="${c.goodspicture}" style="height:250px;width: 350px" class="img-responsive" alt="">
                                    <div class="zoom-icon ">
                                        <a class="picture" href="${pageContext.request.contextPath}/getInGoodsPage.do?id=${c.id}" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                        <a href="${pageContext.request.contextPath}/getInGoodsPage.do?id=${c.id}"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                                    </div>
                                </div>
                                <div class="mid-1">
                                    <div class="women">
                                        <div class="women-top">
                                            <span>销量:${c.goodssale}</span>
                                            <h6><a href="#">${c.goodsname}</a></h6>
                                        </div>
                                        <div class="img item_add">
                                            <a href="${pageContext.request.contextPath}/getInGoodsPage.do?id=${c.id}"><img src="/assets/images/ca.png" alt=""></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="mid-2">
                                        <p ><label>打折</label><em class="item_price">${c.goodsprice}</em></p>
                                        <div class="block">
                                            <div class="starbox small ghosting"> </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>

                <div class="clearfix"></div>
            </div>
        </div>

    </div>

</div><br>
<!--/content-->
<!--footer-->
<div class="footer">
    <div class="footer-middle">
        <div class="container">
            <div class="col-md-3 footer-middle-in">
                <a href="index.html"><img src="images/log.png" alt=""></a>
                <p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique nisi, in interdum libero magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
            </div>

            <div class="col-md-3 footer-middle-in">
                <h6>Information</h6>
                <ul class=" in">
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Site Map</a></li>
                </ul>
                <ul class="in in1">
                    <li><a href="#">Order History</a></li>
                    <li><a href="#">Wish List</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 footer-middle-in">
                <h6>Tags</h6>
                <ul class="tag-in">
                    <li><a href="#">Lorem</a></li>
                    <li><a href="#">Sed</a></li>
                    <li><a href="#">Ipsum</a></li>
                    <li><a href="#">Contrary</a></li>
                    <li><a href="#">Chunk</a></li>
                    <li><a href="#">Amet</a></li>
                    <li><a href="#">Omnis</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-middle-in">
                <h6>Newsletter</h6>
                <span>Sign up for News Letter</span>
                <form>
                    <input type="text" value="Enter your E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
                    <input type="submit" value="Subscribe">
                </form>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <ul class="footer-bottom-top">
                <li><a href="#"><img src="images/f1.png" class="img-responsive" alt=""></a></li>
                <li><a href="#"><img src="images/f2.png" class="img-responsive" alt=""></a></li>
                <li><a href="#"><img src="images/f3.png" class="img-responsive" alt=""></a></li>
            </ul>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
