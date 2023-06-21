<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ include file="header.jsp"%>

 <div class="bg-light">
        <div class="container py-5">
          <div class="row h-100 align-items-center py-5">
            <div class="col-lg-6">
              <h1 class="display-4">About us page</h1>
              <p class="lead text-muted mb-0">Drive your dreams with ABCars</p>
              <p class="lead text-muted">Your ultimate destination for buying and selling used cars.</p>
            </div>
            <div class="col-lg-6 d-none d-lg-block"><img src="/images/img5.jpg" alt="" class="img-fluid rounded "></div>
          </div>
        </div>
      </div>
      
      <div class="bg-white py-5">
        <div class="container py-5">
          <div class="row align-items-center mb-5">
            <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
              <h2 class="font-weight-light">Why choose us?</h2>
              <p class="font-italic text-muted mb-4 text-justify">ABC Car Portal is the ideal choice for anyone looking for a comprehensive and user-friendly platform for all their car-related needs. Our website offers a wide range of features that cater to car buyers, sellers, and enthusiasts alike, making it the ultimate one-stop-shop for everything car-related.</p>
              <p class="font-italic text-muted mb-4 text-justify">We pride ourselves on providing an easy-to-use platform that is accessible to everyone, regardless of their level of expertise. Our team is committed to providing top-notch customer support and ensuring that all our users have a smooth and seamless experience on our website.</p><a href="landing" class="btn btn-primary px-5 rounded-pill shadow-sm">Learn More</a>
            </div>
            <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img src="/images/img6.jpg" alt="" class="img-fluid mb-4 mb-lg-0 rounded"></div>
          </div>
          <div class="row align-items-center">
            <div class="col-lg-5 px-5 mx-auto"><img src="/images/img7.jpg" alt="" class="img-fluid mb-4 mb-lg-0 rounded"></div>
            <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
              <h2 class="font-weight-light">Who we are?</h2>
              <p class="font-italic text-muted mb-4 text-justify">At ABCars, we are a dedicated team of car enthusiasts who are passionate about providing a user-friendly platform for buying and selling used cars. Our mission is to make the car buying and selling process as seamless and stress-free as possible for our customers.At ABCars, we are a dedicated team of car enthusiasts who are passionate about providing a user-friendly platform for buying and selling used cars. Our mission is to make the car buying and selling process as seamless and stress-free as possible for our customers.</p>
              <p class="font-italic text-muted mb-4 text-justify">We believe that everyone deserves to have access to reliable and affordable transportation, and that's why we strive to provide a wide selection of high-quality used cars at competitive prices. Our website offers a variety of features to help buyers find the perfect car for their needs, including detailed car listings, user-friendly search tools, and expert car reviews and ratings.</p><a href="landing" class="btn btn-primary px-5 rounded-pill shadow-sm">Learn More</a>
            </div>
          </div>
        </div>
      </div>
      
      <div class="bg-light py-5">
        <div class="container py-5">
          <div class="row mb-4">
            <div class="col-lg-5">
              <h2 class="display-4 font-weight-light">Our team</h2>
              <p class="font-italic text-muted">Meet Our Team</p>
            </div>
          </div>
      
          <div class="row text-center">
            <!-- Team item-->
            <div class="col-xl-3 col-sm-6 mb-5">
              <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://bootstrapious.com/i/snippets/sn-about/avatar-4.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                <h5 class="mb-0">Manuella Nevoresky</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
              </div>
            </div>
            <!-- End-->
      
            <!-- Team item-->
            <div class="col-xl-3 col-sm-6 mb-5">
              <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://bootstrapious.com/i/snippets/sn-about/avatar-3.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                <h5 class="mb-0">Samuel Hardy</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
              </div>
            </div>
            <!-- End-->
      
            <!-- Team item-->
            <div class="col-xl-3 col-sm-6 mb-5">
              <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://bootstrapious.com/i/snippets/sn-about/avatar-2.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                <h5 class="mb-0">Tom Sunderland</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
              </div>
            </div>
            <!-- End-->
      
            <!-- Team item-->
            <div class="col-xl-3 col-sm-6 mb-5">
              <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://bootstrapious.com/i/snippets/sn-about/avatar-1.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                <h5 class="mb-0">John Tarly</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
              </div>
            </div>
            <!-- End-->
      
          </div>
        </div>
      </div>
      <script src="js/jquery-3.3.1.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery.validate.min.js"></script>
      <script src="js/main.js"></script>

<%@ include file="footer.jsp"%>
