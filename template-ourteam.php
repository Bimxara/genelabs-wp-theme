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
                    <div class="row mb-5">
                        <div class="col-md-3 col-sm-12">
                            <img alt="Team Member" class="img-fluid mb-2" src="<?php echo get_template_directory_uri(); ?>/assets/images/our-team-img.jpg">
                        </div> 
                        <div class="col-md-9 col-sm-12">
                            <div class="team-member-info">
                                <div class="team-member-title mb-3">
                                    <h4 class="letter-space">Chandanamali Punchihewa, PhD</h4>
                                    <p>CEO/Chief Scientist</p>
                                </div>
                                <div class="team-member-desc">
                                    <p class="theme-description">Dr. Chandanamali Punchihewa is a graduate of the University of Colombo, and was one of the first in the country to receive an Honours degree in Molecular Biology and Biochemistry from a national university. She read for her PhD at the University of Arizona, ranked among the top 16 graduate schools in USA. Upon winning a competitive postdoctoral fellowship she joined St. Jude Research Hospital, the top pediatric cancer hospital in USA, as a postdoctoral fellow. Her research during this time involved anti-cancer drug discovery and development, and she is a co-inventor holding a US patent on a potential anticancer drug, which is an inhibitor of the protein PCNA.</p>

                                        <p class="theme-description">Upon completion of the fellowship Dr. Punchihewa continued to carry out research in molecular pathology related to brain cancers at the same hospital, and co-authored many internationally per-reviewed research articles published in high-impact journals. She was a first author in a research publication in one of the world’s highest ranked journals ‘Nature’. In addition to research publications, Dr. Punchihewa has also co-authored literature reviews, and a book chapter on ‘Telomeres and Telomerase in Cancer’, published by the Humana Press, USA. During her tenure as a graduate student and a research professional, Dr. Punchihewa has received many awards and fellowships from the University of Arizona and St. Jude Children’s Research Hospital.</p>

                                        <p class="theme-description">She returned to Sri Lanka in 2014, and has been instrumental in setting up the Molecular Diagnostics laboratory at Lanka Hospitals Diagnostics, and bringing it up to the standards of the College of American Pathologists. In addition to the routine molecular diagnostics tests, she successfully introduced several new molecular diagnostic tests that have thus far not been available in the country, but are critical for prenatal testing and for patients with cancer.</p>
                                        
                                        <ul class="social-media-list">
                                            <li><a class="fb-theme" href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                                            <li><a class="linkedin-theme" href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                                        </ul> 
                                </div>
                            </div>
                        </div> 
                    </div>         
                    
                    <div class="row">
                        <div class="col-md-3 col-sm-12">
                            <img alt="Team Member" class="img-fluid mb-2" src="<?php echo get_template_directory_uri(); ?>/assets/images/our-team-img-2.jpg">
                        </div> 
                        <div class="col-md-9 col-sm-12">
                            <div class="team-member-info">
                                <div class="team-member-title mb-3">
                                    <h4 class="letter-space">Manoj Punchihewa</h4>
                                    <p>Director</p>
                                </div>
                                <div class="team-member-desc">
                                    <p class="theme-description">Manoj Punchihewa is an entrepreneur with ventures in both USA and Sri Lanka. He received a BSc in Chemical Engineering from the University of Moratuwa, and an MBA from the University of Colombo. Manoj started his career at Unilever where he obtained extensive experience in all manufacturing related activities including Product & process development, manufacturing management, Quality, Engineering & Maintenance, Safety, budgets, cost accounting and Capital investments. He worked in three Unilever personal care product plants as a Plant Manager/Engineer before moving to USA, where he first worked at Desert Whale Jojoba Company as Head of operations managing a cosmetic product manufacturing plant and a 2000-acre Jojoba Plantation.  Then he moved to Koppers Inc. and headed their largest chemical plant. </p>

                                        <ul class="social-media-list">
                                            <li><a class="fb-theme" href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                                            <li><a class="linkedin-theme" href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                                        </ul> 
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