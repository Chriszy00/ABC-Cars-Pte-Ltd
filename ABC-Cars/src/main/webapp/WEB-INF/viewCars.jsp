<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jsp"%>

<div class="container">

	<div class="container-fluid mt-3">
		<a href="cars" class="navbar-brand " data-toggle="tooltip"
			data-placement="top" title="Home"> <img src="/images/pic2.png" class="img-fluid"
			height="55%">
		</a>
	</div>

	<sec:authorize access="hasRole('Users')">
		<!-- post car link-->
		<div class="row p-3 mb-5" style="background-color: #0d6efd; border-radius: 25px;">
			<div class="col-5">
				<p class="text-white font-weight-bold"
					style="margin-bottom: 0px; font-weight: bolder;">Rev up your
					life with our used car!</p>
				<p class="text-white" style="margin-bottom: 0px;">The perfect
					ride for your next adventure the perfect ride for your next
					adventure</p>
			</div>
			<div class="col-4"></div>
			<div class="col col-lg-2" style="text-align: end; margin: auto;">
				<span class=""> <!-- Button trigger modal -->
					<button type="button" class="btn btn-success btn-rounded" style="width:100px" data-bs-toggle="modal"
						data-bs-target="#exampleModal">
						Sell Now</button>
				</span>
				<!-- Modal -->

				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true"
					role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">

							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Sell Your
									Car Today!</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<c:if test="${success_post != null}">
									<div class="alert alert-success">${success_post}</div>
								</c:if>

								<!-- Car Post Form -->
								<sf:form action="car_post" method="post" class="was-validated"
									modelAttribute="car" enctype="multipart/form-data">

									<div class="row mb-4">
										<div class="col">
											<div class="form-outline">
												<label for="name" class="d-flex form-label">Car
													Name:</label>
												<sf:input type="text" class="form-control"
													placeholder="Enter car name" name="name" path="name"
													required="true" />
												<div class="valid-feedback">Valid.</div>
												<div class="invalid-feedback">Please fill out this
													field.</div>
											</div>
										</div>
										<div class="col">
											<div class="form-outline">
												<label for="model" class="d-flex form-label">Car
													Model:</label>
												<sf:input type="text" class="form-control"
													placeholder="Enter model" name="model" path="model"
													required="true" />
												<div class="valid-feedback">Valid.</div>
												<div class="invalid-feedback">Please fill out this
													field.</div>
											</div>
										</div>
									</div>
									<div class="row mb-4">
										<div class="col">

											<div class="form-outline mb-4">
												<label for="price" class="d-flex form-label">Price
													(PHP):</label>
												<sf:input type="text" class="form-control" id="price"
													placeholder="Enter car price" name="price" path="price"
													required="true" />
												<div class="valid-feedback">Valid.</div>
												<div class="invalid-feedback">Please fill out this
													field.</div>
											</div>
										</div>

										<div class="col">
											<div class="form-outline mb-4">
												<label for="make" class="d-flex form-label">Make
													Year:</label>
												<sf:input type="text" class="form-control"
													placeholder="Enter make year" name="make" path="make"
													required="true" />
												<div class="valid-feedback">Valid.</div>
												<div class="invalid-feedback">Please fill out this
													field.</div>
											</div>
										</div>
									</div>

									<div class="row mb-4">
										<div class="col">

											<div class="form-outline mb-4">
												<label for="registeration" class="d-flex form-label">Registration
													Date:</label>
												<sf:input type="text" class="form-control"
													id="registeration" placeholder="Enter registeration date"
													name="registeration" path="registeration" required="true" />
												<div class="valid-feedback">Valid.</div>
												<div class="invalid-feedback">Please fill out this
													field.</div>
											</div>
										</div>
										<div class="col">

											<div class="form-outline mb-4">
												<label class="d-flex form-label">Photo:</label> <input
													type="file" class="form-control form-control-lg"
													name="fileImage" id="photo" accept="image/png, image/jpeg"
													required="true" />
												<div class="valid-feedback">Valid.</div>
												<div class="invalid-feedback">Please fill out this
													field.</div>
											</div>
										</div>
									</div>

									<div class="holder"
										style="height: 300px; width: 300px; margin: auto;">
										<img id="imgPreview" src="#" alt="image preview"
											style="width: inherit;" />
									</div>

									<button type="submit" class="btn btn-primary d-flex">Post</button>
								</sf:form>
								<script>
						            $(document).ready(() => {
						            	
						                $("#photo").change(function () {
						                    const file = this.files[0];
						                    if (file) {
						                        let reader = new FileReader();
						                        reader.onload = function (event) {
						                            $("#imgPreview")
						                              .attr("src", event.target.result);
						                        };
						                        reader.readAsDataURL(file);
						                    }
						                });
						            });
						        </script>
								<!-- Car Post Form -->
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Close</button>

							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</sec:authorize>
	<!-- post car link-->


	<!-- list of all cars posted -->
	<div class="row" style="gap: 60px;">
		<c:forEach items="${cars}" var="c">
			<c:set var="id" value="${c.id}"></c:set>
			<c:if test="${success_post == null}">

				<c:if test="${c.sellStatus != 'sold'}">
					<div class="card mb-5" style="width: 400px">
						<img class="card-img-top mt-2" src="${c.photoImagePath}"
							alt="${c.photos}" style="width: 100%">
						<div class="card-body">
							<h4 class="card-title">${c.name}</h4>
							<p class="card-text">
								<i class="fas fa-tags"></i>&nbsp;PHP ${c.price}
							</p>

							<a href="/car_detail?cid=${c.id}" class="btn btn-primary">View
								Car Details</a>
						</div>
					</div>
				</c:if>

			</c:if>
		</c:forEach>
		<c:if test="${success_post != null}">
			<div class="alert alert-success">${success_post}
				Click here to <a href="/car_detail?cid=${id}">View</a> your car post
			</div>
		</c:if>
	</div>
	<!-- list of all cars posted -->
</div>



<%@ include file="footer.jsp"%>