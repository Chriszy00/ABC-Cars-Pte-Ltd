<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ include file="header.jsp"%>
<div class="bg-image"
	style="background-image: linear-gradient(360deg, transparent, rgba(49, 47, 53, 0.4), rgba(9, 47, 53, 0.4)), url('/images/img2.jpg'); 
	height: 100vh; background-position: center; background-repeat: no-repeat; background-size: cover;">
	<div class="container h-100" style="font-family: 'Roboto Slab', serif;">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-lg-12 col-xl-11">
				<div class="card text-black" style="border-radius: 25px;">
					<div class="card-body p-md-3 ">

						<div class="row justify-content-center">
							<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
								<p class="text-center h1 fw-semibold mb-4 mx-1 mx-md-4 mt-4" style="font-family: 'Roboto Slab', serif;">Sign
									in</p>
								<c:if test="${error_string != null}">

									<div class="alert alert-danger">${error_string}
										Click here to <a href="register_user"> Register</a>
									</div>

								</c:if>
								<form action="${post_url}" method="post" class="was-validated">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />

									<div class="d-flex flex-row align-items-center mb-4">
										<div class="form-outline flex-fill mb-0">
											<div class="mb-4 text-center fs-5">
												<span>Don't have an account yet?</span> <a
													href="register_user" style="text-decoration: none;">Register</a>
											</div>

											<label for="username" class="form-label">Username</label> <input
												type="text" class="form-control" id="userName"
												placeholder="Enter your username" name="username" value=""
												required>
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
									</div>

									<div class="d-flex flex-row align-items-center mb-4">
										<div class="form-outline flex-fill mb-0">

											<label for="password" class="form-label">Password</label> <input
												type="password" class="form-control" id="password"
												placeholder="Enter your password" name="password" value=""
												required>
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
									</div>

									<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
										<button type="submit" name="Login" value="Sign In"
											class="fs-5 btn btn-primary btn-sm" style="width: 50%;">Log
											in</button>
									</div>
								</form>
							</div>
							<div
								class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
								<img src="/images/img4.jpg" class="img-fluid rounded">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>
