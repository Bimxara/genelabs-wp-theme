<?php
/**
* Template Name: Our-tests page
*/
?>

<?php get_header(); ?>

<div class="container-fluid p-0">
    <div class="inner-page-banner" style="background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/out-tests-banner.jpg')">
        <div class="inner-page-banner-bg relative d-flex align-items-center">    
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="inner-banner-content">
                            <div class="text-center">
                                <h1 class="text-center m-0">Our Tests</h1>
                                <nav aria-label="breadcrumb" class="breadcrumb-nav">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Our Tests</li>
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

    <div class="page-section pt-1 pb-4 inner-page-content">
        <div class="gene-tests">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        
                        <div class="gene-tests">

                            <ul class="tabs">
                                <?php if(get_field('tests')): $i = 0; ?>
                                    <?php while(has_sub_field('tests')): $i++; ?>
                                <li class="tab-name" rel="tab<?php echo $i; ?>"><?php the_sub_field('test_heading'); ?></li>
                                    <?php endwhile; ?>
                                <?php endif; ?> 
                            </ul>

                            <div class="tab_container tab-scroll-to">

                            <?php if(get_field('tests')): $i = 0; ?>
                                <?php while(has_sub_field('tests')): $i++; ?>
                                <h4 class="d_active tab_drawer_heading" rel="tab<?php echo $i; ?>"><?php the_sub_field('test_heading'); ?><</h4>
                                <div id="tab<?php echo $i; ?>" class="tab_content">
                                    <h3><?php the_sub_field('test_heading'); ?></h3>
                                    <?php the_sub_field('test_description'); ?>                                                                                    
                                </div>
                                <!-- #tab1 -->
                                <?php endwhile; ?>
                            <?php endif; ?> 
                            </div>
                            <!-- .tab_container -->
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
        // tabbed content
        $(".tab_content").hide();
        $(".tab_content:first").show();

        /* if in tab mode */
        $("ul.tabs li").click(function() {
            
          $(".tab_content").hide();
          var activeTab = $(this).attr("rel"); 
          $("#"+activeTab).fadeIn();        
          
          $("ul.tabs li").removeClass("active");
          $(this).addClass("active");

          $(".tab_drawer_heading").removeClass("d_active");
          $(".tab_drawer_heading[rel^='"+activeTab+"']").addClass("d_active");
          
      });
        /* if in drawer mode */
        $(".tab_drawer_heading").click(function() {
          
          $(".tab_content").hide();
          var d_activeTab = $(this).attr("rel"); 
          $("#"+d_activeTab).fadeIn();
          
          $(".tab_drawer_heading").removeClass("d_active");
          $(this).addClass("d_active");
          
          $("ul.tabs li").removeClass("active");
          $("ul.tabs li[rel^='"+d_activeTab+"']").addClass("active");
      });
        
        
    /* Extra class "tab_last" 
       to add border to right side
       of last tab */
       $('ul.tabs li').last().addClass("tab_last");
       
       
   </script>
</body>
</html>


