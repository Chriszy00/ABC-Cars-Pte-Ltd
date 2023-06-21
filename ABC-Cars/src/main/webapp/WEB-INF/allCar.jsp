<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jsp"%>


<div class="bg-image"
	style="background-image: linear-gradient(360deg, transparent, rgba(49, 47, 53, 0.4), rgba(9, 47, 53, 0.4)), url('/images/img2.jpg'); height: 100vh; background-position: center; background-repeat: no-repeat; background-size: cover;">
	<div
		class="container  justify-content-center align-items-center bootstrap snippets bootdey min-vh-120" style="font-family: 'Roboto Slab', serif;">
		<div class="row">

			<div class="card text-black mt-3" style="border-radius: 25px;">

				<div class="card-body p-md-3 ms-5 ">
					<div class="row justify-content-center">
						<div>
							<h1 class=" mt-3 text-center text-primary">View | All
								Cars</h1>
						</div>
						<div class="col-lg-12">
							<div class="main-box no-header clearfix">
								<div class="main-box-body clearfix">
									<div class="table-responsive">
										<table class="table user-list">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Name</th>
													<th scope="col">Model</th>
													<th scope="col">Price (Php)</th>
													<th scope="col">Seller</th>
													<th scope="col" class="text-center">---- Actions ----</th>
													<th scope="col">Car Status</th>
													<th scope="col">Current Bid (Php)</th>
													<th scope="col">Booking Date</th>
													<th scope="col">Booking Status</th>
													<th scope="col">Bidder</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${cars}" var="c" varStatus="status">
													<tr>
														<th scope="row">${status.count}</th>
														<td>${c.name}</td>
														<td>${c.model}</td>
														<td>${c.price}</td>
														<td><a type="button" class="btn btn-primary"
															href="/view?uid=${c.sellerId}"> <i class="far fa-eye"></i>
														</a></td>
														<td><a type="button" class="btn btn-primary"
															href="/car_detail?cid=${c.id}"> <i class="far fa-eye"></i>
														</a> <!-- Button trigger modal -->
															<button type="button" class="btn btn-success"
																data-bs-toggle="modal"
																data-bs-target="#exampleModal${status.index}">
																<i class="fas fa-edit"></i>
															</button> <!-- Modal -->

															<div class="modal fade" id="exampleModal${status.index}"
																tabindex="-1" aria-labelledby="exampleModalLabel"
																aria-hidden="true" role="dialog">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="exampleModalLabel">Edit
																				Car Post</h5>
																			<button type="button" class="btn-close"
																				data-bs-dismiss="modal" aria-label="Close"></button>
																		</div>
																		<div class="modal-body">

																			<!-- Car Post Form -->
																			<sf:form action="/edit_car?cid=${c.id}" method="post"
																				class="was-validated" modelAttribute="car"
																				enctype="multipart/form-data">
																				<div class="mb-3 mt-3">
																					<label for="name" class="d-flex form-label">Name:</label>
																					<input type="text" class="form-control"
																						placeholder="Enter car name" name="name"
																						path="name" required="true" value="${c.name}" />
																					<div class="valid-feedback">Valid.</div>
																					<div class="invalid-feedback">Please fill out
																						this field.</div>
																				</div>
																				<div class="mb-3">
																					<label for="model" class="d-flex form-label">Model:</label>
																					<input type="text" class="form-control"
																						placeholder="Enter model" name="model"
																						path="model" value="${c.model}" required="true" />
																					<div class="valid-feedback">Valid.</div>
																					<div class="invalid-feedback">Please fill out
																						this field.</div>
																				</div>
																				<div class="mb-3">
																					<label for="price" class="d-flex form-label">Price
																						(PHP):</label> <input type="text" class="form-control"
																						id="price" placeholder="Enter car price"
																						name="price" path="price" value="${c.price}"
																						required="true" />
																					<div class="valid-feedback">Valid.</div>
																					<div class="invalid-feedback">Please fill out
																						this field.</div>
																				</div>
																				<div class="mb-3">
																					<label for="make" class="d-flex form-label">Make
																						Year:</label> <input type="text" class="form-control"
																						placeholder="Enter make year" name="make"
																						path="make" value="${c.make}" required="true" />
																					<div class="valid-feedback">Valid.</div>
																					<div class="invalid-feedback">Please fill out
																						this field.</div>
																				</div>
																				<div class="mb-3">
																					<label for="registeration"
																						class="d-flex form-label">Registration
																						Date:</label> <input type="text" class="form-control"
																						id="registeration"
																						placeholder="Enter registeration date"
																						name="registeration" path="registeration"
																						value="${c.registeration}" required="true" />
																					<div class="valid-feedback">Valid.</div>
																					<div class="invalid-feedback">Please fill out
																						this field.</div>
																				</div>
																				<!-- <div class="mb-3">
															<label class="d-flex form-label">Photo:</label> <input
																type="file" class="form-control" name="fileImage"
																id="photo" accept="image/png, image/jpeg"
																required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>-->

																				<input type="hidden" name="sellerId"
																					value="${c.sellerId}" />
																				<input type="hidden" name="photos"
																					value="${c.photos}" />
																				<input type="hidden" name="photoImagePath"
																					value="${c.photoImagePath}" />

																				<div class="holder"
																					style="height: 300px; width: 300px; margin: auto;">
																					<img id="imgPreview" src="${c.photoImagePath}"
																						alt="image preview" style="width: inherit;" />
																				</div>

																				<button type="submit" class="btn btn-primary d-flex">Edit</button>
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

															</div> <a type="button" class="btn btn-danger"
															href="/delete_car?cid=${c.id}"> <i
																class="far fa-trash-alt"></i>
														</a></td>


														<!-- selling modal -->
														<td>${c.sellStatus}<!-- Button trigger modal -->
															<button type="button" class="btn" data-bs-toggle="modal"
																data-bs-target="#exampleModal2${status.index}">
																<i class="fas fa-edit fa-sm"></i>
															</button> <!-- Modal -->

															<div class="modal fade" id="exampleModal2${status.index}"
																tabindex="-1" aria-labelledby="exampleModalLabel"
																aria-hidden="true" role="dialog">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="exampleModal2Label">Set
																				Car Sale Status</h5>
																			<button type="button" class="btn-close"
																				data-bs-dismiss="modal" aria-label="Close"></button>
																		</div>
																		<div class="modal-body">

																			<!-- Sale Status Form -->
																			<sf:form action="/sale_status?cid=${c.id}"
																				method="post" class="was-validated"
																				modelAttribute="biddings">
																				<div class="mb-3 mt-3">
																					<label for="sellStatus" class="form-label">Sale
																						Status:</label> <input type="text" class="form-control"
																						placeholder="Enter sale status" name="sellStatus"
																						value="${c.sellStatus}" required="true" />
																					<div class="valid-feedback">Valid.</div>
																					<div class="invalid-feedback">Please fill out
																						this field.</div>
																				</div>

																				<button type="submit" class="btn btn-primary">Set</button>
																			</sf:form>
																		</div>
																	</div>
																</div>
															</div>

														</td>
														<!-- selling modal -->
														<c:forEach items="${c.biddings}" var="b" begin="0" end="0">

															<td>${b.bidderPrice}</td>
															<td>${b.bookDate}</td>
															<!-- booking modal -->
															<td>${b.bookStatus}<!-- Button trigger modal -->
																<button type="button" class="btn" data-bs-toggle="modal"
																	data-bs-target="#exampleModal1${status.index}">
																	<i class="fas fa-edit fa-sm"></i>
																</button> <!-- Modal -->

																<div class="modal fade"
																	id="exampleModal1${status.index}" tabindex="-1"
																	aria-labelledby="exampleModalLabel" aria-hidden="true"
																	role="dialog">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h5 class="modal-title" id="exampleModal1Label">Set
																					Booking Status</h5>
																				<button type="button" class="btn-close"
																					data-bs-dismiss="modal" aria-label="Close"></button>
																			</div>
																			<div class="modal-body">

																				<!-- Booking Status Form -->
																				<sf:form action="/booking_status?bid=${b.id}"
																					method="post" class="was-validated"
																					modelAttribute="book">
																					<div class="mb-3 mt-3">
																						<label for="bookStatus" class="form-label">Booking
																							Status:</label> <input type="text" class="form-control"
																							placeholder="Enter booking status"
																							name="bookStatus" value="${b.bookStatus}"
																							required="true" />
																						<div class="valid-feedback">Valid.</div>
																						<div class="invalid-feedback">Please fill
																							out this field.</div>
																					</div>

																					<button type="submit" class="btn btn-primary">Set</button>
																				</sf:form>
																			</div>
																		</div>
																	</div>
																</div> <!-- booking modal -->
															</td>
															<td>${b.bidderName}</td>

														</c:forEach>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>