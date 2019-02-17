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
						<a href="${pageContext.request.contextPath}/getCart.do">
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
			<!-- banner -->

			<div class="banner" >
<div class="container">
<section class="rw-wrapper">
				<h1 class="rw-sentence">
					<span>烂漫家居 &amp; 幸福生活</span>
					<div class="rw-words rw-words-1">
						<span>优美设计</span>
						<span>温馨建材</span>
						<span>贵族气质</span>
						<span>现代风格</span>
						<span>复古气息</span>
					</div>
					<div class="rw-words rw-words-2">
						<span>We denounce with right</span>
						<span>But in certain circum</span>
						<span>Sed ut perspiciatis unde</span>
						<span>There are many variation</span>
						<span>The generated Lorem Ipsum</span>
						<span>Excepteur sint occaecat</span>
					</div>
				</h1>
			</section>
			</div>
</div>
