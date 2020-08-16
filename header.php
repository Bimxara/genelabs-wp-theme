<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <title>Genelabsmedical</title>
    	<link rel="icon" type="image/x-icon" href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon.ico" />
		<link rel="apple-touch-icon" sizes="76x76" href="<?php echo get_template_directory_uri(); ?>/assets/images/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon-16x16.png">
		<link rel="manifest" href="<?php echo get_template_directory_uri(); ?>/assets/images/site.webmanifest">
		<link rel="mask-icon" href="<?php echo get_template_directory_uri(); ?>/assets/images/safari-pinned-tab.svg" color="#5bbad5">
		<meta name="msapplication-TileColor" content="#da532c">
		<meta name="theme-color" content="#ffffff">

		<meta name="msapplication-TileImage" content="<?php echo get_template_directory_uri(); ?>/assets/images/win8-tile-icon.png">
		

		<?php wp_head(); ?>
</head>
<body>
	<header id="header">
  <div class="nav br-0 bl-0">
    <div class="container pt-1 pb-1">
      <div class="row align-items-center">
        <nav class="navbar navbar-expand-md navbar-light p-0 w-100">
            <a class="navbar-brand m-0 p-0 main-logo" href="index.php"><img class="img-fluid" alt="Main Logo" src="<?php echo get_template_directory_uri(); ?>/assets/images/genelabs-medical-logo.png"></a>
            <div class="search-section d-block d-md-none">
              <form class="form-inline gene-search">
                <input class="gene-search-bar" type="search" placeholder="Search" aria-label="Search">
                <button class="gene-search-btn" type="submit"> <i class="fa fa-search" aria-hidden="true"></i></button>
              </form>                   
            </div>
            <button class="navbar-toggler mobile-menu-btn pl-1" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <!-- <span class="navbar-toggler-icon"></span> -->
              <img class="img-fluid" alt="menu img" src="<?php echo get_template_directory_uri(); ?>/assets/images/mobile-menu-icon.png">
            </button>


            <?php
              // wp_nav_menu(

              //     array(

              //         'theme_location' => 'header-menu',
              //         'menu' => 'main-menu',
              //         'container' => 'li',
              //         'menu_class' => 'navbar-nav ml-auto'


              //     )
              // );

            ?>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="<?php echo get_bloginfo('wpurl'); ?>">Home <span class="sr-only">(current)</span> <span class="d-block d-md-none float-right mobile-nav-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                </li>                
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    About Us <span class="submenu-down-arrow"><i class="fa fa-angle-down d-none d-md-block" aria-hidden="true"></i></span>
                    <span class="d-block d-md-none float-right"><i class="fa fa-angle-right mobile-nav-arrow" aria-hidden="true"></i></span>
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item nav-link p-3" href="<?php echo get_bloginfo('wpurl'); ?>/team">OurTeam <span class="d-block d-md-none float-right mobile-nav-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                    <a class="dropdown-item nav-link p-3" href="<?php echo get_bloginfo('wpurl'); ?>/profile">Profile <span class="d-block d-md-none float-right mobile-nav-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                    <a class="dropdown-item nav-link p-3" href="<?php echo get_bloginfo('wpurl'); ?>/technology">Technology <span class="d-block d-md-none float-right mobile-nav-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?php echo get_bloginfo('wpurl'); ?>/our-tests">Our Tests <span class="d-block d-md-none float-right"><i class="fa fa-angle-right mobile-nav-arrow" aria-hidden="true"></i></span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?php echo get_bloginfo('wpurl'); ?>/contact-us">Contact Us <span class="d-block d-md-none float-right"><i class="fa fa-angle-right mobile-nav-arrow" aria-hidden="true"></i></span></a>
                </li>
                <li class="nav-item d-none d-md-block">
                  <div>
                    <form class="form-inline gene-search">
                      <input class="gene-search-bar" type="search" placeholder="Search" aria-label="Search">
                      <button class="gene-search-btn" type="submit"> <i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>                   
                  </div>
                </li>
              </ul>
            </div>
          </nav>

        </div>
      </div>
  </div>
</header>
