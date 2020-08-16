<?php

function load_stylesheets(){

		wp_register_style('stylesheet', get_template_directory_uri() . '/assets/css/style.css', array(), 1, 'all');
		wp_enqueue_style('stylesheet');
		

}

add_action('wp_enqueue_scripts', 'load_stylesheets');

//load scripts

function addjs(){
	wp_register_script('scripts', get_template_directory_uri() . '/assets/js/scripts.min.js', array(), 1, 1, 1);
	wp_enqueue_script('scripts');
}
add_action('wp_enqueue_scripts', 'addjs');

?>