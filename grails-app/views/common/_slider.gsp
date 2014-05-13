<style>
    .carousel {
        height: 250px;
    }

    .item,
    .active,
    .carousel-inner {
        height: 100%;
    }

    .carousel-image {
        height: 100%;
        width: 100%;
        background-position: center;
        background-size: cover !important;
    }

</style>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
            <div class="carousel-image" style="background-image:url('${resource(dir:'images/gallery', file:'InvestmentDetails.jpg')}');"></div>
            <div class="carousel-caption">
                <h1>Investment</h1>
            </div>
        </div>
        <div class="item">
            <div class="carousel-image" style="background-image:url('${resource(dir:'images/gallery', file:'1393691120133.jpg')}');"></div>
            <div class="carousel-caption">
                <h1>Multi-Level Marketing</h1>
            </div>
        </div>
        <div class="item">
            <div class="carousel-image" style="background-image:url('${resource(dir:'images/gallery', file:'mutual_funds.jpg')}');"></div>
            <div class="carousel-caption">
                <h1>Mutual Funds</h1>
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
</div>

<script>
    // Activates the Carousel
    $('.carousel').carousel({
        interval: 3000
    })
</script>