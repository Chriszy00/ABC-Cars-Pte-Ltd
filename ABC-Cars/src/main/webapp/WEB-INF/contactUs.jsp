<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ include file="header.jsp"%>

<div class="content">

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">


				<div class="row justify-content-center">
					<div class="col-md-6">

						<h3 class="heading mb-4">Connect With Us!</h3>
						<p>We are here for questions or consulting</p>

						<p>
							<img src="/images/img1.svg" alt="Image" class="img-fluid">
						</p>


					</div>
					<div class="col-md-6">

						<form class="mb-5" method="post" id="contactForm"
							name="contactForm">
							<div class="row">
								<div class="col-md-12 form-group">
									<input type="text" class="form-control" name="name" id="name"
										placeholder="Your name">
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 form-group mt-3">
									<input type="text" class="form-control" name="email" id="email"
										placeholder="Email">
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 form-group mt-3">
									<input type="text" class="form-control" name="subject"
										id="subject" placeholder="Subject">
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 form-group mt-3">
									<textarea class="form-control" name="message" id="message"
										cols="30" rows="7" placeholder="Write your message"></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-12 mt-3">
									<input type="submit" value="Send Message"
										class="btn btn-primary rounded-0 py-2 px-4"> <span
										class="submitting"></span>
								</div>
							</div>
						</form>

						<div id="form-message-warning mt-4"></div>
						<div id="form-message-success">Your message was sent, thank
							you!</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>



<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/main.js"></script>

<%@ include file="footer.jsp"%>
