<html>
<head>
    <title>Home</title>
    <%--Styles--%>
    <%@include file="component/css.jsp" %>
</head>
<body>
<%--NavBar--%>
<%@include file="component/navbar.jsp" %>

<!-- Carousel code -->
<div id="carouselExampleIndicators" class="carousel slide"
     data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide-to="0" class="active" aria-current="true"
                aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide-to="2" aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide-to="3" aria-label="Slide 4"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://picsum.photos/1920/1080?random=1" class="d-block w-100"
                 style="height: 500px; object-fit: cover">
        </div>
        <div class="carousel-item">
            <img src="https://picsum.photos/1920/1080?random=2" class="d-block w-100"
                 style="height: 500px; object-fit: cover">
        </div>
        <div class="carousel-item">
            <img src="https://picsum.photos/1920/1080?random=3" class="d-block w-100"
                 style="height: 500px; object-fit: cover">
        </div>
        <div class="carousel-item">
            <img src="https://picsum.photos/1920/1080?random=4" class="d-block w-100"
                 style="height: 500px; object-fit: cover">
        </div>
    </div>

    <button class="carousel-control-prev" type="button"
            data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
            class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button"
            data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span> <span
            class="visually-hidden">Next</span>
    </button>
</div>
<!-- end of carousel code -->

<!-- First Div Container -->
<div class="container p-3">
    <p class="text-center mt-2 mb-5 fs-2 myP-color">Features of our Product</p>
    <div class="row">
        <!-- 1st col -->
        <div class="col-md-8 p-5">

            <div class="row">
                <div class="col-md-6">
                    <div class="card my-card">
                        <div class="card-body">
                            <p class="fs-5 myP-color">11000+ Healing Hands</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque doloribus iusto
                                libero perspiciatis rerum sit? Consectetur dignissimos doloremque eius esse,
                                expedita incidunt ipsa ipsam ipsum, maxime nihil quidem unde voluptate.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card my-card">
                        <div class="card-body">
                            <p class="fs-5 myP-color">Most Advance Healthcare Technology</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error esse facilis iste
                                quisquam. Aliquid aut eos magni nobis non nostrum perferendis placeat quae quos rem
                                tempore temporibus ut veniam, vitae!</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 mt-2">
                    <div class="card my-card">
                        <div class="card-body">
                            <p class="fs-5 myP-color">Best Clinical Outcomes</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error esse facilis iste
                                quisquam. Aliquid aut eos magni nobis non nostrum perferendis placeat quae quos rem
                                tempore temporibus ut veniam, vitae!</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 mt-2">
                    <div class="card my-card">
                        <div class="card-body">
                            <p class="fs-5 myP-color">500+ Pharmacies</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium nulla pariatur
                                suscipit. Aliquam asperiores, beatae dolore eaque est eveniet expedita facere fugit
                                laboriosam, nemo nobis perferendis praesentium quis quo ratione!</p>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <!-- End of 1st col -->

        <!-- 2nd col -->
        <div class="col-md-4 mt-2 mys-card">
            <img class="mt-3" alt="" src="https://picsum.photos/1920/1080?random=2" height="440px" width="470px"
                 style="object-fit: cover">
        </div>

        <!-- End of 2nd col -->

    </div>
</div>
<!-- End of First Div Container -->

<hr>

<!-- Second Div Container -->

<div class="container p-2">
    <p class="text-center fs-2 myP-color">Our Product</p>
    <div class="row">
        <div class="col-md-3">
            <div class="card my-card">
                <div class="card-body text-center">
                    <img alt="" src="https://picsum.photos/1920/1080?random=1"
                         class="object-fit-cover ratio ratio-16x9 w-100">
                    <p class="fw-bold fs-5">Product</p>
                    <p class="fs-7">Cocoa</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card my-card">
                <div class="card-body text-center">
                    <img alt="" src="https://picsum.photos/1920/1080?random=2"
                         class="object-fit-cover ratio ratio-16x9 w-100">
                    <p class="fw-bold fs-5">Product</p>
                    <p class="fs-7">Pizza</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card my-card">
                <div class="card-body text-center">
                    <img alt="" src="https://picsum.photos/1920/1080?random=3"
                         class="object-fit-cover ratio ratio-16x9 w-100">
                    <p class="fw-bold fs-5">Product</p>
                    <p class="fs-7">Chocolate</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card my-card">
                <div class="card-body text-center">
                    <img alt="" src="https://picsum.photos/1920/1080?random=4" style=""
                         class="object-fit-cover ratio ratio-16x9 w-100">
                    <p class="fw-bold fs-5">Product</p>
                    <p class="fs-7">Snack</p>
                </div>
            </div>
        </div>

    </div>

</div>

<!-- Second Div Container -->


<!-- footer -->
<%@include file="component/footer.jsp" %>
<!-- end footer -->

</body>
</html>