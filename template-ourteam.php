<?php
/**
* Template Name: Our-team page
*/
?>

<?php get_header(); ?>

<div class="container-fluid p-0">
        <div class="inner-page-banner" style="background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/our-team-banner.jpg')">
            <div class="inner-page-banner-bg relative d-flex align-items-center">    
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="inner-banner-content">
                                <div class="text-center">
                                    <h1 class="text-center m-0">Our Team</h1>
                                    <nav aria-label="breadcrumb" class="breadcrumb-nav">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                                            <li class="breadcrumb-item"><a href="#">About Us</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Our Team</li>
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

        <div class="page-section pt-4 inner-page-content">
            <div class="our-team">
                <div class="container">


                    <?php

                        // Check rows exists.
                        if( have_rows('team') ):
                            while( have_rows('team') ) : the_row(); ?>
                                <?php $name = get_sub_field('name'); ?>
                                <?php $image = get_sub_field('image'); ?>
                                <?php $position = get_sub_field('position'); ?>
                                <?php $description = get_sub_field('description'); ?>
                                <?php $facebook_url = get_sub_field('facebook_url'); ?>
                                <?php $linkedin_url = get_sub_field('linkedin_url'); ?>
                                 
                                 
                                 
                                 
                                 
                                 

                    <div class="row mb-5">
                        <div class="col-md-3 col-sm-12">
                            <img alt="Team Member" class="img-fluid mb-2" src="<?php echo $image; ?>">
                        </div> 
                        <div class="col-md-9 col-sm-12">
                            <div class="team-member-info">
                                <div class="team-member-title mb-3">
                                    <h4 class="letter-space"><?php echo $name; ?></h4>
                                    <p><?php echo $position; ?></p>
                                </div>
                                <div class="team-member-desc">
                                    <?php echo $description; ?>
                                        
                                        <ul class="social-media-list">
                                            <li><a class="fb-theme" href="<?php echo $facebook_url; ?>"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                                            <li><a class="linkedin-theme" href="<?php echo $linkedin_url; ?>"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                                        </ul> 
                                </div>
                            </div>
                        </div> 
                    </div>         
                    
                    <?php  endwhile;
                        else :
                        endif;
                        ?> 

                </div>
            </div>
        </div>

    </main>

<?php get_footer(); ?>

<script>
        $( document ).ready(function() {
            $('.form-submit-btn').prop('disabled', true);
            $('#submit-form-check').click(function(){
            if($(this).prop("checked") == true){
                $('.form-submit-btn').prop('disabled', false);
            }
            else if($(this).prop("checked") == false){
                $('.form-submit-btn').prop('disabled', true);
            }
        });
        });
    </script>
</body>
</html>