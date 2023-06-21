<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jsp"%>

<section class="vh-100"
	style="background-image: linear-gradient(360deg, transparent, rgba(49, 47, 53, 0.4), rgba(9, 47, 53, 0.4)), url('/images/img2.jpg'); height: 100vh; background-position: center; background-repeat: no-repeat; background-size: cover;">
	<div class="container h-100" style="font-family: 'Roboto Slab', serif;">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-lg-12 col-xl-11">
				<div class="card text-black mt-2 " style="border-radius: 25px;">
					<div class="card-body">
						<div class="row justify-content-center">
							<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

								<p class="text-center h1 fw-bold  mx-1 mx-md-4 ">Sign up</p>
								<c:if test="${success_register != null}">

									<div class="alert alert-success">${success_register}
										Click here to <a href="login"> Sign In</a>
									</div>

								</c:if>
								<sf:form action="register" method="post"
									class="was-validated" modelAttribute="user">

									<div class=" text-center fs-5">
										<span>I am already a member!</span> <a href="login"
											style="text-decoration: none;">Log in</a>
									</div>

									<div class="d-flex flex-row align-items-center mb-2 mt-3">
										<div class="form-outline flex-fill mb-0">
											<label for="name" class="form-label">Name</label>
											<sf:input type="text" class="form-control" id="name"
												placeholder="Please enter your name" name="name" path="name"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
									</div>

									<div class="d-flex flex-row align-items-center mb-2 mt-3">
										<div class="form-outline flex-fill mb-0">
											<label for="userName" class="form-label">Username</label>
											<sf:input type="text" class="form-control" id="userName"
												placeholder="Please enter username" name="userName"
												path="userName" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
									</div>

									<div class="d-flex flex-row align-items-center mb-2 mt-3">
										<div class="form-outline flex-fill mb-0">
											<label for="email" class="form-label">Email:</label>
											<sf:input type="email" class="form-control"
												placeholder="Plese enter email" name="email" path="email"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
									</div>

									<div class="d-flex flex-row align-items-center mb-2 mt-3">
										<div class="form-outline flex-fill mb-0">
											<label for="password" class="form-label">Password:</label>
											<sf:input type="password" class="form-control" id="password"
												placeholder="Please enter password" name="password"
												path="password" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
									</div>



									<div class="d-flex justify-content-center mx-4 mb-2 mb-lg-4">
										<button type="submit" class="btn btn-primary btn-lg">Register</button>
									</div>


								</sf:form>

							</div>
							<div
								class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

								<img src="/images/img3.jpg" class="img-fluid rounded">

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="footer.jsp"%>


