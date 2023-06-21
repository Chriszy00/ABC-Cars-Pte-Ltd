<html>
<head>
<meta charset="utf-8">
<title>ABCars</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Bodoni+Moda:opsz,wght@6..96,400;6..96,500;6..96,600;6..96,700&
	family=Inter:wght@200;300;400&family=Roboto+Slab:wght@300;400;500&family=Sacramento&family=Sassy+Frass&family=Tangerine:wght@700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="/css/style-contact.css">
<link rel="stylesheet" href="/css/style-about.css">
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
		<div class="container collapse" id="navbarToggleExternalContent">
			<a class="navbar-brand fs-2 fw-bold text-white me-5" href="cars"
				style="font-family: 'Bodoni Moda', serif;">ABCars</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse flex-grow-1 text-right"
				id="navbarSupportedContent"
				style="font-family: 'Roboto Slab', serif;">



				<ul class="navbar-nav ms-auto flex-nowrap">

					<sec:authorize access="isAuthenticated()">

						<sec:authorize access="hasAnyRole('Administrator','Users')">
							<div class=" nav-item me-4">
								<sf:form action="search" method="get" style="width: 100%;">
									<div class="input-group">
										<input type="search" class="form-control rounded"
											placeholder="Search" aria-label="Search" name="keyword"
											aria-describedby="search-addon" />
										<button type="submit" class="btn btn-outline-light">Search</button>
									</div>
								</sf:form>
							</div>

							<sec:authorize access="hasRole('Administrator')">

								<!-- <li class="nav-item me-4"><a
								class="nav-link  fs-6 text-white fw-normal" href="cars">Home</a></li>-->

								<li class="nav-item me-4"><a
									class="nav-link fs-6 text-white fw-normal" href="all_cars">Car
										Management </a></li>

								<li class="nav-item me-4"><a
									class="nav-link fs-6 text-white fw-normal " href="users">User
										Management </a></li>
							</sec:authorize>

							<li class="nav-item me-4"><a
								class="nav-link  fs-6 text-white fw-normal" href="cars">Home</a></li>

							<li class="nav-item me-4"><a
								class="nav-link  fs-6 text-white fw-normal" href="profile">Profile</a></li>
								
							<li class="nav-item me-4"><form action="logout"
									method="post">

									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" /> <input type="submit" name="Logout"
										value="Logout"
										class="nav-link fs-6 btn btn-outline-primary text-white"></input>
								</form></li>
						</sec:authorize>
					</sec:authorize>

					<sec:authorize access="!isAuthenticated()">
						<li class="nav-item me-4"><a
							class="nav-link fs-6 text-white fw-normal " href="about_us">About
								Us </a></li>
						<li class="nav-item me-4"><a
							class="nav-link fs-6 text-white fw-normal " href="contact_us">Contact
								Us </a></li>
						<li class="nav-item me-4"><a
							class="nav-link fs-6 text-white fw-normal " href="login">Login
						</a></li>

						<li class="nav-item me-4"><a
							class="nav-link fs-6 text-white fw-normal " href="register_user">Register
						</a></li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>