<%@include file="caheader.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="login">
			<form action="${pageContext.request.contextPath}/Login.do" method="post">
			<div class="col-md-6 login-do">
			<div class="login-mail">
					<input type="text" placeholder="userame" required="" id="username" name="username">
					<i  class="glyphicon glyphicon-user"></i>
				</div>
				<div class="login-mail">
					<input type="password" placeholder="password" required="" id="password" name="password">
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				<label class="hvr-skew-backward">
					<input type="submit" value="login">
				</label>
			</div>
			<div class="clearfix"> </div>
			</form>
		</div><br>
<%@include file="foot.jsp" %>