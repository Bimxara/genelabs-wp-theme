<div class="tabs">
	<?php if(get_field('additional_content')): $i = 0; ?>
		<?php while(has_sub_field('additional_content')): $i++; ?>
				<input type="radio" name="tabs" id="tab<?php echo $i; ?>"<?php if($i == 0) { echo " checked"; };?> />
				<label for="tab<?php echo $i; ?>" class="<?php the_sub_field('field_label'); ?>"><?php the_sub_field('extra_title'); ?></label>
		<?php endwhile; ?>
	<?php endif; ?> 
	<?php if(get_field('additional_content')): $i = 0; ?>
		<?php while(has_sub_field('additional_content')): $i++; ?>
			<div id="tab-content<?php echo $i; ?>" class="tab-content">
					<?php the_sub_field('extra_content'); ?>
			</div> <!-- #tab-content1 -->        
		<?php endwhile; ?>
	<?php endif; ?> 
</div>

<section class="faq-block <?php if (get_sub_field('background') == 'blue'): ?> blue-bg<?php else: ?><?php endif; ?>">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-10 col-md-offset-1">

                <h2 class="section-heading"><?php the_sub_field( 'section_heading' ) ?></h2>

                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                   <?php
                   //$uniqueid = get_sub_field( 'faq_unique_id' );
                   $uniqueid = uniqid('faq_items');
                   $count = 0;
                   while ( have_rows( 'faq_items' ) ) : the_row(); ?>
                   <div class="panel panel-default listbox">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h3 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                            href="#collapse-<?php echo esc_attr( $uniqueid ); ?>-<?php echo esc_attr( $count ); ?>"
                            aria-expanded="false">
                            <?php the_sub_field( 'faq_question' ) ?>
                        </a>
                    </h3>
                </div>
                <div id="collapse-<?php echo esc_attr( $uniqueid ); ?>-<?php echo esc_attr( $count ); ?>"
                    class="panel-collapse collapse" role="tabpanel">
                   <div class="panel-body">
                    <p><?php the_sub_field( 'faq_answer' ) ?></p>
                </div>
            </div>
        </div>
        <?php $count ++; ?>

    <?php endwhile; ?>

</div><!--end panel group-->

</div>
</div>
</div>
</section>