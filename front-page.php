<?php get_header(); ?>

<div class="container-fluid p-0">
    <div class="home-slider">
        <div class="main-slider owl-carousel owl-theme">
            <div class="item">
                <?php $hero = get_field('hero_slider'); ?>
                <div class="slider-img" style="background-image: url('<?php echo $hero['slider_image']; ?>')">
                    <div class="home-slider-bg">
                        <div class="container h-100">
                            <div class="main-slider-text">
                                <span><?php echo $hero['mini_title']; ?></span>
                                <h1><?php echo $hero['hero_title']; ?></h1>
                                <p><?php echo $hero['hero_description']; ?></p>
                            </div>                   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<main id="elements-page" class="main-content homepage-main-content pt-0">

    <div class="page-section pb-0 pb-md-5">
        <div class="container-fluid pl-0 pl-md-2 pr-0 pr-md-2 pt-3 pt-md-4 pb-2 pb-md-0 service-bg-color">
            <div class="container mb-0 mb-md-4">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center pt-0 pt-md-4 pb-1 pb-md-3">
                            <img class="img-fluid dna-img" alt="dna image" src="<?php echo get_template_directory_uri(); ?>/assets/images/dna.png">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="home-text-main text-center pb-3">
                            <h1 class="d-none d-md-block"><span><strong>Dedicated to providing accurate</strong></span> genetic testing services</h1>
                            <h1 class="d-block d-md-none"><span><strong>Dedicated to providing</strong></span> Quality Lab Services</h1>
                            <p class="d-none d-md-block">Our test menu comprise the most widely-used tests in today's healthcare</p>
                        </div>
                    </div>
                </div>
            </div>

            
            <div class="services">
                <div class="container">
                    <div class="row">

                        <?php if (have_rows('introducing_tests')) {
                            while( have_rows('introducing_tests') ) : the_row();
                                $title = get_sub_field('title');
                                $read_more_url = get_sub_field('read_more_url');
                                $image = get_sub_field('image'); ?>

                        <div class="col-lg-4 col-md-6 col-6">
                            <div class="service-item mb-3">
                                <div class="service-item-inner">
                                    <img alt="service item image" class="img-fluid" src="<?php echo $image; ?>">
                                    <div class="service-info">
                                        <h3 class="text-center mb-2 mb-md-3"><?php echo $title; ?></h3>
                                        <a class="gene-btn read-more-btn" href="<?php echo $read_more_url; ?>">Read More</a>
                                    </div>
                                    <?php if (get_sub_field('introducing_lable')) { ?>
                                        <span class="introducing-service">Introducing</span>
                                    <?php }else{
                                        //do nothing
                                    } ?>
                                    
                                </div>
                            </div>
                        </div>


                        <?php 
                            endwhile;
                        } ?>

                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="text-center pt-4 pb-3">  
                                <a class="gene-btn-lg show-more-services-btn" href="our-tests.php">View More</a>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    

    
    <div class="page-section pb-1 pb-md-5">
        <div class="container mb-0 mb-md-4">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center pt-3 pb-3">
                        <img class="img-fluid dna-img" alt="dna image" src="<?php echo get_template_directory_uri(); ?>/assets/images/dna.png">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="home-text-main text-center pb-3">
                        <h1 class="no-margin-xs"><span><strong>Today's science is the</strong></span> technology of tomorrow</h1>
                        <p>We provide custom solutions to address your research questions</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="science">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 mb-3">
                        <div class="science-parent">
                            <div class="header gene-collapse-btn collapse-btn"><h3 class="m-0">Microbiology<span class="float-right"><i class="fa fa-angle-down" aria-hidden="true"></i></span></h3></div>
                            <div class="science-item content" style="background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/science-section-img.jpg')">                                
                                <div class="science-content">                                                                      
                                    <ul>
                                        <li><p>16S rRNA sequencing for bacterial identification</p></li>
                                        <li><p>Microbial targeted sequencing</p></li>
                                        <li><p>Bacterieal/Viral whole genome sequencing</p></li>
                                        <li><p>SARS-CoV-2 whole genome sequencing</p></li>
                                    </ul>
                                    <div  class="see-more-btn text-center pb-5">
                                        <a class="see-more-btn-wt" href="#">View More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-3">
                        <div class="science-parent">
                            <div class="header gene-collapse-btn collapse-btn"><h3 class="m-0">Human Genetics<span class="float-right"><i class="fa fa-angle-down" aria-hidden="true"></i></span></h3></div>
                            <div class="science-item content" style="background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/science-section-img.jpg')">                                
                                <div class="science-content yellow-bg">                                                                      
                                    <ul>
                                        <li><p>Design and sequncing of targeted gene panels for any disease area</p></li>
                                        <li><p>Whole Exome sequencing</p></li>
                                        <li><p>Transcriptome sequencing</p></li> 
                                    </ul>
                                    <div  class="see-more-btn text-center pb-5">
                                        <a class="see-more-btn-wt" href="#">View More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-3">
                        <div class="science-parent">
                            <div class="header gene-collapse-btn collapse-btn"><h3 class="m-0">Plant Genetics<span class="float-right"><i class="fa fa-angle-down" aria-hidden="true"></i></span></h3></div>
                            <div class="science-item content" style="background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/science-section-img.jpg')">                                
                                <div class="science-content">                                                                      
                                    <ul>
                                        <li><p>Targeted gene panels</p></li>
                                        <li><p>Transcriptome</p></li>
                                    </ul>
                                    <div  class="see-more-btn text-center pb-5">
                                        <a class="see-more-btn-wt" href="#">View More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>


    </div>


    <div class="page-section pb-1 pb-md-5">
        <div class="container-fluid client-bg-color pt-3 pt-md-0 pb-2 pb-md-0">
            <div class="container mb-0 mb-md-4">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center pt-3 pb-3">
                            <img class="img-fluid dna-img" alt="dna image" src="<?php echo get_template_directory_uri(); ?>/assets/images/dna.png">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="home-text-main text-center">
                            <h1><span><strong>Our Clients</strong></span></h1>
                        </div>
                    </div>
                </div>
            </div>

            
            <div class="clients">
                <div class="container p-0">
                    <div class="col-md-12">
                        <div class="client-carousel owl-carousel owl-theme">
                            <div class="item">
                                <div class="client-logo">
                                    <img class="img-fluid" alt="dna image" src="<?php echo get_template_directory_uri(); ?>/assets/images/client-logo-2.png">
                                </div>
                            </div>

                            <div class="item">
                                <div class="client-logo">
                                    <img class="img-fluid" alt="dna image" src="<?php echo get_template_directory_uri(); ?>/assets/images/client-logo-1.png">
                                </div>
                            </div>

                            <div class="item">
                                <div class="client-logo">
                                    <img class="img-fluid" alt="dna image" src="<?php echo get_template_directory_uri(); ?>/assets/images/client-logo-3.png">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-logo">
                                    <img class="img-fluid" alt="dna image" src="<?php echo get_template_directory_uri(); ?>/assets/images/client-logo-1.png">
                                </div>
                            </div>
                        </div>        
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="page-section no-padding">
        <div class="container mb-4">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center pt-3 pb-3">
                        <img class="img-fluid dna-img" alt="dna image" src="<?php echo get_template_directory_uri(); ?>/assets/images/dna.png">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="home-text-main text-center">
                        <h1><span><strong>Welcome to Laboratory</strong></span></h1>
                        <p class="home-txt-sm">Genelabs Medical is a genetic testing laboratory that utilizes cutting-edge technologies
                            for molecular diagnosis and biological research. We offer PCR and Next Generation Sequencing
                            (NGS) tests to help with different clinical conditions, and provide custom solutions to facilitate
                        acadamic research.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="vision-mission">
            <div class="container-fluid p-0">
                <div class="vm-content" style="background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/vision-mission-bg-img.jpg')">
                    <div class="vm-content-bg">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="vm-details">
                                        <h3>Our Vision</h3>
                                        <div class="vm-img mb-3">
                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
                                                <title>Our Vision</title>
                                                <g id="lamp">
                                                    <path id="Path_49" data-name="Path 49" d="M27.76,35a1.86,1.86,0,0,0,2.36-1.18h0a21.6,21.6,0,0,1,42.1,6.78c0,9.2-4.13,14.7-7.44,19.12-2.41,3.22-4.49,6-4.49,9.36,0,.22,0,.44,0,.66H52.49V65.46a1.87,1.87,0,1,0-3.73,0v4.29H41c0-.22,0-.44,0-.66,0-3.37-2.08-6.14-4.49-9.36s-5.2-6.94-6.57-12.18a1.87,1.87,0,0,0-3.65.79.83.83,0,0,0,0,.15C27.84,54.44,31,58.61,33.48,62c2.09,2.79,3.74,5,3.74,7.11,0,.9,0,1.77.11,2.6V87.46a.76.76,0,0,0,0,.15v0l0,.2h0A14,14,0,0,0,42,95.63a13.33,13.33,0,0,0,17.16,0,14,14,0,0,0,4.67-7.78h0a1.62,1.62,0,0,0,0-.2v0s0-.1,0-.15V71.68c.07-.83.11-1.7.11-2.6C64,67,65.67,64.76,67.77,62c3.45-4.61,8.17-10.91,8.17-21.36a25.33,25.33,0,0,0-49.37-8A1.86,1.86,0,0,0,27.76,35ZM50.62,95a9.89,9.89,0,0,1-8.83-5.71H59.46A9.9,9.9,0,0,1,50.62,95Zm9.56-9.44H41.07V81.41H60.18Zm0-7.92H41.07v-4.2H60.18Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_50" data-name="Path 50" d="M50.62,11.94a1.87,1.87,0,0,0,1.87-1.87h0v-5a1.87,1.87,0,0,0-3.73,0v5a1.87,1.87,0,0,0,1.86,1.87Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_51" data-name="Path 51" d="M15.11,42.48h5a1.87,1.87,0,0,0,0-3.73h-5a1.87,1.87,0,0,0,0,3.73Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_52" data-name="Path 52" d="M59.17,44.38a1.87,1.87,0,0,0-1.87-1.86H44a1.87,1.87,0,1,0,0,3.73h4.81v4.29a1.87,1.87,0,0,0,3.73,0h0V46.25H57.3a1.87,1.87,0,0,0,1.87-1.87Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_53" data-name="Path 53" d="M27.71,20.34a1.87,1.87,0,0,0,2.64-2.64h0l-3.51-3.52a1.87,1.87,0,0,0-2.64,2.64h0Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_54" data-name="Path 54" d="M24.23,68.88a1.88,1.88,0,0,0,1.32-.55l3.51-3.51a1.87,1.87,0,0,0-2.64-2.64l-3.51,3.51a1.87,1.87,0,0,0,1.32,3.19Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_55" data-name="Path 55" d="M72.22,20.88a1.87,1.87,0,0,0,1.32-.54l3.51-3.52a1.87,1.87,0,0,0-2.64-2.64h0L70.9,17.69a1.87,1.87,0,0,0,1.32,3.19Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_56" data-name="Path 56" d="M72.19,62.17a1.87,1.87,0,0,0,0,2.64h0l3.51,3.52a1.87,1.87,0,0,0,2.64-2.64h0l-3.51-3.52a1.88,1.88,0,0,0-2.64,0Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_57" data-name="Path 57" d="M81.16,42.48h5a1.87,1.87,0,1,0,0-3.73h-5a1.87,1.87,0,0,0,0,3.73Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_58" data-name="Path 58" d="M50.62,56.13A1.87,1.87,0,1,0,52.49,58,1.87,1.87,0,0,0,50.62,56.13Z" style="fill: #fff;fill-rule: evenodd"/>
                                                    <path id="Path_59" data-name="Path 59" d="M29,40.61a1.87,1.87,0,1,0-1.87,1.87A1.86,1.86,0,0,0,29,40.61Z" style="fill: #fff;fill-rule: evenodd"/>
                                                </g>
                                            </svg>     
                                        </div>
                                        <p>Our vision is to make advanced genetic testing that is available elsewhere in the word accessible to Sri Lankans, in order to improve the healthcare outcome of our patients and research and development  activities of our academic community.</p>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="vm-details pt-0 pt-md-4">
                                        <h3>Our Mission</h3>
                                        <div class="vm-img mb-3">
                                            <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
                                                <title>Our Mission</title>
                                                <path id="target" d="M95.94,17.94a1.57,1.57,0,0,0-1.15-1.09l-9.51-2.14L83.13,5.2A1.55,1.55,0,0,0,81.28,4a1.59,1.59,0,0,0-.76.42L69.59,15.38a44.23,44.23,0,1,0,15,15L95.55,19.46A1.53,1.53,0,0,0,95.94,17.94ZM87.87,53.27A41.13,41.13,0,1,1,67.32,17.65l-5,5-.12.16a34.17,34.17,0,1,0,15,15l.16-.13,5-5a41,41,0,0,1,5.53,20.59ZM73.48,37.57A31,31,0,1,1,62.43,26.51l1.63,7.23L62.5,35.31a24,24,0,1,0,2.19,2.2l1.57-1.57ZM53.4,53.27a6.7,6.7,0,1,1-6.72-6.67,6.59,6.59,0,0,1,3.53,1l-4.58,4.58a1.55,1.55,0,0,0,2.19,2.19h0l4.58-4.58A6.61,6.61,0,0,1,53.4,53.27Zm-1-7.91a9.79,9.79,0,1,0,2.2,2.19l7.85-7.85a20.9,20.9,0,1,1-2.2-2.19ZM81.56,29.07l-5.83,5.82-.87-.2h0l-7.77-1.75-2-8.67L80.73,8.63l1.75,7.72a1.54,1.54,0,0,0,1.17,1.17l7.72,1.74Z" style="fill: #fff"/>
                                            </svg>     
                                        </div>
                                        <p class="pt-0 pt-md-3">Our mission is to fulfil the genetic testing requirements of clinical and research communities using latest technologies. We thrive to become the one-stop solution giving a comprehensive service from assay design and testing, to final data interpretation and genetic counselling.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    
</main>

<?php get_footer(); ?>

<script>
$(".header").click(function () {

    if ($(window).width() > 767) {    
       // Code here
    }
    else {
        $header = $(this);
        //getting the next element
        $content = $header.next();
        //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
        $content.slideToggle(500, function () {
            //execute this after slideToggle is done
            //change text of header based on visibility of content div
            // $header.text(function () {
            //     //change text based on condition
            //     return $content.is(":visible") ? "Collapse" : "Expand";
            // });
        }); 
    }
});

$(document).ready(function () {
    if ($(window).width() > 767) {    
        // Code here....
    }
    else {
        $(".science-item").css( "display", "none" );   
        $(".science-item").css("background-image", "none");
        $(".science-item").css("background-color", "#fff");
    }
});
</script>


</body>
</html>