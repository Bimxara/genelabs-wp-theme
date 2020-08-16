<?php
/**
* Template Name: Technology page
*/
?>

<?php get_header(); ?>

<div class="container-fluid p-0">
        <div class="inner-page-banner" style="background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/technology-banner.jpg')">
            <div class="inner-page-banner-bg relative d-flex align-items-center">    
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="inner-banner-content">
                                <div class="text-center">
                                    <h1 class="text-center m-0">Technology</h1>
                                    <nav aria-label="breadcrumb" class="breadcrumb-nav">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                                            <li class="breadcrumb-item"><a href="#">About Us</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Technology</li>
                                        </ol>
                                    </nav>
                                </div> 
                            </div>                              
                        </div>                                               
                    </div>
                </div>  
                <span class="move-down"><i class="fa fa-angle-down" aria-hidden="true"></i></span>             
            </div>
        </div>
    </div>

    <main id="elements-page" class="main-content">

        <div class="page-section pt-0 pb-4 inner-page-content">
            <div class="technology">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <?php the_field('technology_description'); ?>
                        </div>
                    </div>  
                </div>
            </div>
        </div>

    </main>

<?php get_footer(); ?>
</body>
</html>