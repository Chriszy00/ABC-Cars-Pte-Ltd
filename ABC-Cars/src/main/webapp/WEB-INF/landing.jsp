<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jsp"%>

<div class="bg-image container-fluid"
	style="background-image: linear-gradient(360deg, transparent, rgba(49, 47, 53, 0.4), rgba(9, 47, 53, 0.4)), url('/images/img2.jpg');
	 height: 100vh; background-position: center; background-repeat: no-repeat; background-size: cover;">
	<c:forEach items="${user}" var="u">
		<c:set var="name" value="${u.name}"></c:set>
	</c:forEach>

	<div class="container px-4 px-lg-5"
		style="font-family: 'Roboto Slab', serif;">
		<div class="row gx-4 gx-lg-5 align-items-center ">

			<div class="col-md-7 " style="padding: 20% 0;">
				<h1 class="fw-light mb-3 mt-5 text-light">Find your perfect ride today!</h1>
				<h2 class="fw-lighter fs-4 text-light">Buy and sell used cars with ease</h2>
				<h3 class="fw-lighter fs-5 mt-2 text-light">Explore our wide selection of
					reliable vehicles at unbeatable prices. <br>Start your search now</h3>
				<a class="btn btn-primary btn btn-lg mt-3 text-light" href="register_user"
					role="button">Let's Get Started</a>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
