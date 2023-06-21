<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jsp"%>

<div class="container">

	<h1 class="text-center mt-5 mb-5" style="font-family: 'Roboto Slab', serif;"> Search | Car Results</h1>

		<c:if test="${empty searchCar}">

			<div class="alert alert-danger">No search results found for
			${keyword}</div>

		</c:if>
		<!-- list of all cars posted -->
		<div class="row mt-5" style="gap: 60px;">

			<c:forEach items="${searchCar}" var="c">

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
			</c:forEach>

		</div>
		<!-- list of all cars posted -->
	</div>



	<%@ include file="footer.jsp"%>