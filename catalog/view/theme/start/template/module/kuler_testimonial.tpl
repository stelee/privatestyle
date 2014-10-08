<?php
require_once(DIR_APPLICATION . 'controller/module/kuler_cp.php');
$kuler = Kuler::getInstance();
$kuler->addScript($kuler->getThemeResource('catalog/view/javascript/kuler/idangerous.swiper-2.1.min.js'));
$kuler->addScript($kuler->getThemeResource('catalog/view/theme/' . $kuler->getTheme() . '/js/lib/parallax.js'));
$kuler->addStyle($kuler->getThemeResource('catalog/view/theme/' . $kuler->getTheme() . '/stylesheet/kuler/idangerous.swiper.css'), true);
?>

<div class="kt-module<?php if (!empty($settings['css_class'])) echo ' ' . $settings['css_class']; ?>" id="kt-module-<?php echo $module; ?>">
	<div class="box kuler-module">
		<?php if (!empty($settings['show_title'])) { ?>
			<div class="box-heading"><span><?php echo $kuler->translate($settings['title']); ?></span></div>
		<?php } ?>
		<div class="box-content">
			<div class="device">
				<a class="arrow-left" href="#"></a>
				<a class="arrow-right" href="#"></a>
				<?php if (!empty($settings['testimonials'])) { ?>
				<div
					class="swiper-container swiper-horizontal">
					<div class="swiper-wrapper">
						<?php foreach ($settings['testimonials'] as $testimonial) { ?>
							<div class="swiper-slide">
								<div class="slide-content">
								<?php if (!empty($testimonial['testimonial'])) { ?>
									<?php echo $kuler->translate($testimonial['testimonial']); ?><br/>
								<?php } ?>
								<?php if (!empty($testimonial['writer_image'])) { ?>
									<img src="image/<?php echo $kuler->translate($testimonial['writer_image']); ?>"> <br/>
								<?php } ?>
								<?php if (!empty($testimonial['writer_name'])) { ?>
									<span class="writer_name"><?php echo $kuler->translate($testimonial['writer_name']); ?></span>
								<?php } ?>
								<?php if (!empty($testimonial['testimonial_information'])) { ?>
									<span class="testimonial_information"><?php echo $kuler->translate($testimonial['testimonial_information']); ?></span>
								<?php } ?>
								</div>
							</div>
						<?php } ?>
					</div>
					<div class="pagination pagination-horizontal"></div>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function () {
		var mySwiper = new Swiper('#kt-module-<?php echo $module; ?> .swiper-container', {
			pagination: '#kt-module-<?php echo $module; ?> .pagination',
			grabCursor: true,
			paginationClickable: true,
			<?php if ($settings['auto_play']) { ?>
			autoplay: 5000,
			loop: true,
			<?php } ?>
			slidesPerView: <?php echo json_encode(intval($settings['testimonials_per_view'])); ?>
		});

		$('#kt-module-<?php echo $module; ?> .arrow-left').on('click', function (e) {
			e.preventDefault()
			mySwiper.swipePrev()
		});

		$('#kt-module-<?php echo $module; ?> .arrow-right').on('click', function (e) {
			e.preventDefault()
			mySwiper.swipeNext()
		});
    //.parallax(xPosition, speedFactor, outerHeight) options:
    //xPosition - Horizontal position of the element
    //inertia - speed to move relative to vertical scroll. Example: 0.1 is one tenth the speed of scrolling, 2 is twice the speed of scrolling
    //outerHeight (true/false) - Whether or not jQuery should use it's outerHeight option to determine when a section is in the viewport
    $('.parallax_testimonial').parallax("50%", 0.1);
	});
</script>