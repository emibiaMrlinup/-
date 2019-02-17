<%@include file="caheader.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    	    <table class="table-heading simpleCart_shelfItem">
		  <div class="container">
	<div class="check-out">
	<div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">

    	    <table class="table-heading simpleCart_shelfItem">
		  <tr>
			<th class="table-grid">Item</th>
					
			<th>Prices</th>
			<th >Delivery </th>
			<th>Subtotal</th>
		  </tr>
		 <!-- 购物车商品 --> 
		 
		  <c:forEach items="${carts}" var="c" >
		  <c:forEach items="${goods}" var="i">
			  <c:if test="${i.id==c.goodid}">
		  <tr class="cart-header">
			<td class="ring-in"><a href="#" class="at-in"><img src="${i.goodspicture}" class="img-responsive" alt=""></a>
			<div class="sed">
				<h5><a href="#">${i.goodsname}</a></h5>
				<p>${i.goodsmas}</p>
			</div>
			<div class="clearfix"> </div>
			<div class="close1"> </div></td>
			<td>￥${i.goodsprice}</td>
			<td>NO FREE SHIPPING</td>
			<td class="item_price"><a href="${pageContext.request.contextPath}/deleteCart.do?id=${c.id}"}>删除</a></td>
			<td class="add-check"><a class="item_add hvr-skew-backward" href="#">buy</a></td>
		  </tr>
		  </c:if>

		  </c:forEach>
		  </c:forEach>

	</table>
	</div>
	</div>
	<div class="produced">
	<a href="single.html" class="hvr-skew-backward">Produced To Buy</a>
	 </div>
    </div>
</div>
	</table>
<%@include file="foot.jsp"%>