<?php 
// var_dump($_SESSION)
;
ob_start()?>
<section id="banner">
                <div class = "banner__text ">
                    <h2>Lorem Ipsum</h2>
                    <h3> <span>Lorem ipsum dolor,</span> sit amet <br>consectetur adipisicing elit Repudiandae.<br> Repudiandae <span>consequuntur amet.</span></h3>
                    <p>Lorem ipsum dolor, sit amet consectetur</p>
                    <a class="btn btn-success w-50" href="?path=bikes.index">Réserver</a>
                </div>
                <div class="banner_img">
                    <img src="./assets/img/7732616_5243.svg" alt="" width="650px">
                </div>
        </section>
        <section id="gallery_slide">
            <h2 class="text-center last_model_title">Derniers modèles</h2>
            <div class="slider">
                <img src="./assets/img/bike1.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike2.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike3.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike4.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike5.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike6.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike7.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike8.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike9.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike10.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike11.jpg" alt="" srcset="" width="300vw">
                <img src="./assets/img/bike12.jpg" alt="" srcset="" width="300vw">
            </div>
            <!-- <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="./assets/img/velo1.jpg" alt="">
                        </div>
                        <div class="swiper-slide">
                            -->
</section>
<section id="bike_more_info">
    <h3 class="text-center mt-5 mb-3">NOTRE GALERIE PHOTO</h3>
    <div class="Info">     
            <div class="more_info">
                <div class="img_info">
                <img src="./assets/img/bike1.jpg" alt="" srcset="" width="600px" height="400px">
                </div>
                <div class="info_text">
                    <p>
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Provident modi non molestiae alias? Ullam, debitis labore tenetur nam dolore officiis dolorem harum adipisci rem quae alias doloribus minima aperiam suscipit!
                        rem quae alias doloribus minima aperiam suscipit!
                    </p>
                </div>
            </div>
            <div class="more_info">
                <div class="info_text">
                    <p>
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Provident modi non molestiae alias? Ullam, debitis labore tenetur nam dolore officiis dolorem harum adipisci rem quae alias doloribus minima aperiam suscipit!
                        rem quae alias doloribus minima aperiam suscipit!
                    </p>
                </div>
                <div class="img_info">
                <img src="./assets/img/bike1.jpg" alt="" srcset="" width="600px">
                </div>
            </div>
    </div>
</section>
<?php  $content = ob_get_clean()?>
