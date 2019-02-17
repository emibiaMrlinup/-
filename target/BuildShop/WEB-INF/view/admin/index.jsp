
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../admin/head.jsp" %>
    <script type="text/javascript">
</script>
<!-- header -->
     
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
				<h3>推荐商品</h3>
				<label class="line"></label>
								<div class="mid-popular">
				
							<c:forEach items="${goods}" var="c">
								<c:if test="${c.tgoods==1}">
					<div class="col-md-3 item-grid simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="${c.goodspicture}" style="height:250px;width: 350px " class="img-responsive" alt="">
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
			</div> -->?
			
			<!-- product-type2 -->

			<!--//products-->
			<!--brand-->
			<!-- <div class="brand">
				<div class="col-md-3 brand-grid">
					<img src="images/ic.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic1.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic2.png" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="images/ic3.png" class="img-responsive" alt="">
				</div>
				<div class="clearfix"></div>
			</div>-->
			<!--//brand-->
			</div>
			
		</div><br>
	<!--/content-->
	<!--footer-->	
<%@include  file="../admin/foot.jsp"%>