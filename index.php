<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kaye Bakes</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bitter:wght@100;200;300;400;500;700&display=swap" rel="stylesheet"> 
</head>
<body>
    
    <!----------Navigation Bar---------->

<?php
    include 'header.php';
?>

    <!----------Background Video---------->

        <div class="background-video">
            <h1 >The sweet home of delights <br> Spreading heartfelt good treats </h1>
            <div class="video-container">
                <div class="color-overlay"></div>
                    <video autoplay loop muted height="100%" width="100%" >
                        <source src="images/Background1.mp4" type="video/mp4">
                    </video>
            </div>
        </div>
    </section>

    <!------------ About Us -------------->

    <section>
        <div class="intro_content">
            <div class="intro_subtitle page_subtitle">About Us</div>
            <div class="intro_title">
                <h2>Our Story</h2>
            </div>
            <div class="intro_text">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                     nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
                     reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
                     pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                     qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
        <div class="intro_content_design">
            <h1> </h1>
        </div>


    </section>

    <!---------- gallery section ---------->

    <section class="ftco-section bg-light" id="gallery">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title normal title">
                        <div class="row justify-content-center mb-5 pb-2">
                            <div class="col-md-12 text-center heading-section ftco-animate">
                                <span class="subheading">Gallery</span>
                                <h2 class="mb-4">Our Hot Picks</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-4">
                    <div class="gallery__pic">
                        <img src="images/F1.jpg" alt="">
                    </div>
                </div>
                <div class="col-4">
                    <div class="gallery__pic">
                        <img src="images/F2.jpg" alt="">
                    </div>
                </div>
                <div class="col-4">
                    <div class="gallery__pic">
                        <img src="images/F3.jpg" alt="">
                    </div>
                </div>
                <div class="col-4">
                    <div class="gallery__pic">
                        <img src="images/f4.jpg" alt="">
                    </div>
                </div>
                <div class="col-4">
                    <div class="gallery__pic">
                        <img src="images/f5.jpg" alt="">
                    </div>
                </div>
                <div class="col-4">
                    <div class="gallery__pic">
                        <img src="images/cakes2.jpg" alt="">
                    </div>
                </div>
                <div class="col-4">
                    <div class="gallery__pic">
                        <img src="images/f7.jpg" alt="">
                    </div>
                </div>
                <div class="col-4">
                    <div class="gallery__pic">
                        <img src="images/f8.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>

    <div class="intro_gallery_design_1">
        <h1> </h1>
    </div>
    <div class="intro_gallery_design">
        <h1> </h1>
    </div>

    <!---------- Footer ---------->

    <?php
    include 'footer.php';
    ?>

</body>
</html>