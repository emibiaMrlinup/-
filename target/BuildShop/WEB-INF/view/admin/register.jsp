<%@include file="caheader.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="login">
			<form action="${pageContext.request.contextPath}/Reg.do"  method="post" >
			<div class="col-md-6 login-do">
			<div class="login-mail">
					<input type="text" placeholder="Name" required="" id="username" name="username">
					<i  class="glyphicon glyphicon-user"></i>
				</div>
				<div class="login-mail">
					<input type="password" placeholder="Password" required="" id="password" name="password">
					<i class="glyphicon glyphicon-lock"></i>
				</div>
				<label class="hvr-skew-backward">
					<input name="submit" type="submit" value="register">
				</label>
			</div>
			
			<div class="clearfix"> </div>
			</form>
		</div><br>



<%@include file="foot.jsp" %>