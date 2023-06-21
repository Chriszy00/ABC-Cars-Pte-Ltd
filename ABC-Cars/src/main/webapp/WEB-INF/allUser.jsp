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
		class="container  justify-content-center align-items-center bootstrap snippets bootdey min-vh-100" style="font-family: 'Roboto Slab', serif;">
		<div class="row">

			<div class="card text-black mt-3" style="border-radius: 25px;">

				<div class="card-body p-md-3 ms-5 ">
					<div class="row justify-content-center">
						<div>
							<h1 class="pb-5 mt-3 text-center text-primary">View | All
								Users</h1>
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
													<th scope="col">Username</th>
													<th scope="col">Email</th>
													<th scope="col">Role</th>
													<th scope="col">Actions</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach items="${user}" var="u" varStatus="status">
													<tr>
														<th scope="row">${status.count}</th>
														<td>${u.name}</td>
														<td>${u.userName}</td>
														<td>${u.email}</td>
														<c:forEach items="${u.roles}" var="r">
															<td>${r.name}
																<button type="button" class="btn" data-bs-toggle="modal"
																	data-bs-target="#exampleModal1${status.index}">
																	<i class="fas fa-edit fa-sm"></i>
																</button>
																<div class="modal fade"
																	id="exampleModal1${status.index}" tabindex="-1"
																	aria-labelledby="exampleModalLabel" aria-hidden="true"
																	role="dialog">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h5 class="modal-title" id="exampleModal1Label">Assign
																					a Role</h5>
																				<button type="button" class="btn-close"
																					data-bs-dismiss="modal" aria-label="Close">
																				</button>
																			</div>
																			<div class="modal-body">
																				<form:form action="/assign_role?uid=${u.id}"
																					method="post" class="was-validated"
																					modelAttribute="user">
																					<div class="mb-3 mt-3">
																						<label for="name" class="form-label">Role:</label>
																						<input type="text" class="form-control"
																							placeholder="Enter role" name="name"
																							value="${r.name}" required="required" />
																						<div class="invalid-feedback">Please assign
																							a role</div>
																					</div>
																					<button type="submit"
																						class="button p-2 px-3 d-block mx-auto">Assign
																					</button>
																				</form:form>
																			</div>
																		</div>
																	</div>
																</div>
															</td>
														</c:forEach>
														<td><a type="button" class="btn btn-primary"
															href="/view?uid=${u.id}"> <i class="far fa-user"></i></a>
															<button type="button" class="btn btn-warning"
																data-bs-toggle="modal"
																data-bs-target="#exampleModal${status.index}">
																<i class="fas fa-edit"></i>
															</button>
															<div class="modal fade" id="exampleModal${status.index}"
																tabindex="-1" aria-labelledby="exampleModalLabel"
																aria-hidden="true" role="dialog">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="exampleModalLabel">
																				<i class="fas fa-edit fa-sm"></i> Edit User
																			</h5>
																			<button type="button" class="btn-close"
																				data-bs-dismiss="modal" aria-label="Close">
																			</button>
																		</div>
																		<div class="modal-body">
																			<form:form action="/edit?uid=${u.id}" method="post"
																				class="was-validated" modelAttribute="user">
																				<div class="mb-3 mt-3">
																					<label for="name" class="form-label">Name</label> <input
																						type="text" class="form-control"
																						placeholder="Enter name" name="name"
																						value="${u.name}" required="required" />
																					<div class="invalid-feedback">Please enter
																						name</div>
																				</div>
																				<div class="mb-3">
																					<label for="userName" class="form-label">Username</label>
																					<input type="text" class="form-control"
																						id="userName" placeholder="Enter username"
																						name="userName" value="${u.userName}"
																						required="required" />
																					<div class="invalid-feedback">Please enter
																						username</div>
																				</div>
																				<div class="mb-3">
																					<label for="email" class="form-label">Email</label>
																					<input type="email" class="form-control"
																						placeholder="Enter email" name="email"
																						value="${u.email}" required="required" />
																					<div class="invalid-feedback">Please enter
																						email</div>
																				</div>
																				<div class="mb-3">
																					<label for="mobile" class="form-label">Mobile
																						Number</label> <input type="text" class="form-control"
																						id="mobile" placeholder="Enter mobile"
																						name="mobile" value="${u.mobile}"
																						required="required" />
																					<div class="invalid-feedback">Please enter
																						mobile number.</div>
																				</div>
																				<div class="mb-3">
																					<label for="address" class="form-label">Address</label>
																					<input type="text" class="form-control"
																						id="address" placeholder="Enter address"
																						name="address" value="${u.address}"
																						required="required" />
																					<div class="invalid-feedback">Please enter
																						address</div>
																				</div>
																				<button type="submit" class="button p-2 px-3">Edit</button>
																			</form:form>
																		</div>
																		<div class="modal-footer"></div>
																	</div>
																</div>
															</div> <a type="button" class="btn btn-danger"
															href="/delete?uid=${u.id}"> <i
																class="far fa-trash-alt"></i></a></td>
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


