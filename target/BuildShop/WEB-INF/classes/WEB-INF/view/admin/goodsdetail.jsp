<%@include file="caheader.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="banner-top">
	<div class="container">
		<h1>Single</h1>
		<em></em>
		<h2><a href="${pageContext.request.contextPath}/">Home</a><label></label>Goodslist</h2></h2>
	</div>
</div>
<div class="single">
<div class="container">
<div class="col-md-9">
	<div class="col-md-5 grid">		
		<div class="flexslider">
			        <div class="thumb-image"> <img src="${good.goodspicture}" data-imagezoom="true" class="img-responsive"> </div>
		</div>
	</div>
<div class="col-md-7 single-top-in">
						<div class="span_2_of_a1 simpleCart_shelfItem">
				<h3>${good.goodsname}</h3>
				<p class="in-para">销量：${good.goodssale}</p>
			    <div class="price_single">
				  <span class="reducedfrom item_price">${good.goodsprice}</span>
				 <div class="clearfix"></div>
				</div>
				<h4 class="quick">详情</h4>
				<p class="quick_desc"> ${good.goodsmas}</p>
							<c:forEach items="${cates}" var="c">
							<c:if test="${c.id==good.cateid}">
						<c:forEach items="${formats}"	var="v">
							<c:if test="${v.cateid==c.parentid}">
			    <div class="wish-list">
				 	<ul>
				 		<p>${v.name}</p>
						<c:forEach items="${sizes}" var="s">
							<c:if test="${s.formatid==v.id}">
						<li class="wish"><a href="#"><span class="glyphicon glyphicon-check" aria-hidden="true"><input type="checkbox">${s.context}</input></span></a></li>
							</c:if>
						</c:forEach>

				 	</ul>
				 </div>
						</c:if>
						</c:forEach>
							</c:if>
							</c:forEach>
				 <!--<div class="quantity">
								<div class="quantity-select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>-->
							<!--quantity-->
	<script>
    $('.value-plus').on('click', function(){

    	var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
    	divUpd.text(newVal);
    });

    $('.value-minus').on('click', function(){
    	var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
    	if(newVal>=1) divUpd.text(newVal);
    });
	</script>
	<!--quantity-->
				 <form method="post" action="${pageContext.request.contextPath}/addCart.do">
							<input  type="hidden" name="goodid" value="${good.id}" readonly/><br>
							<input type="hidden" name="goodsprice" value="${good.goodsprice}" readonly/><br>
							购买数量<input type="text" name="goodscount" /><br>
			    <input class="add-to item_add hvr-skew-backward" style="position: relative;right: 275px;" type="submit" name="submit" value="Add to cart">
							</form>
<script type="text/javascript">

</script>

			<div class="clearfix"> </div>
			</div>
		
					</div>
			<div class="clearfix"> </div>
			<!---->
			<div class="tab-head">
	<div class="tab-content one">
  
  </div>
  <div class="clearfix"></div>
  </div>
			<!---->	
</div>
<!----->

<div class="col-md-3 product-bottom product-at">
					
		</div>
		<div class="clearfix"> </div>
	</div>
	</div>
			<!--brand-->
	<!--  	<div class="container">
			<div class="brand">
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
			</div>
			</div>-->
			<!--//brand-->
<br>



<%@include  file="foot.jsp"%>