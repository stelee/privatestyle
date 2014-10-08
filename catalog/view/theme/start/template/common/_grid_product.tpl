<?php $kuler = Kuler::getInstance(); ?>
<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
	<?php if ($product['thumb']) { ?>
	<div class="thumb">
    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/></a>
    <?php if ($images = $kuler->getProductImages($product['product_id'])) { ?>
      <?php $size = $kuler->getImageSizeByPath($product['thumb']); ?>
      <?php if(!$kuler->mobile->isMobile() && $kuler->getSkinOption('enable_swap_image')){ ?>
        <span class="hover"><img src="<?php echo $kuler->resizeImage($images[0], $size['width'], $size['height']); ?>" alt="<?php echo $product['name']; ?>"/></span>
      <?php } ?>
    <?php } ?>
    <?php if((isset($setting['add']) && $setting['add']) ||(isset($setting['wishlist']) && $setting['wishlist']) || (isset($setting['compare']) && $setting['compare'])) { ?>
      <div class="details">
        <?php if(isset($setting['add']) && $setting['add']) { ?>
          <div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></a></div>
        <?php } ?>
        <?php if(isset($setting['wishlist']) && $setting['wishlist']) { ?>
          <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></a></div>
        <?php } ?>
        <?php if(isset($setting['compare']) && $setting['compare']) { ?>
          <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></a></div>
        <?php } ?>
        <?php if (Kuler::getInstance()->getSkinOption('show_quick_view')) { ?>
          <div class="quick-view"><a href="<?php echo Kuler::getInstance()->getQuickViewUrl($product); ?>" class="quick_view"><?php echo $kuler->translate($kuler->getSkinOption('view_button_text')); ?></a> </div>
        <?php } ?>
      </div>
    <?php } ?>
  </div>
	<?php } else { ?>
	<div class="thumb no-image">
    <img src="image/no_image.jpg" alt="<?php echo $product['name']; ?>" />
  </div>
	<?php } ?>
	<?php if(isset($setting['name']) && $setting['name']) { ?>
	<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
	<?php } ?>
	<?php if (isset($setting['description']) && $setting['description']) { ?>
	<div class="description"><?php echo $product['description']; ?></div>
	<?php } ?>
	<?php if(isset($setting['price']) && $setting['price']) { ?>
	<div class="price">
		<?php if (!$product['special']) { ?>
		<div><span class="price-fixed"><?php echo $product['price']; ?></span></div>
		<?php } else { ?>
		<div class="special-price">
      <div class="sale">-<?php echo $kuler->calculateSalePercent($product['special'], $product['price']); ?>%</div>
      <span class="price-fixed"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
    </div>
		<?php } ?>
	</div>
	<?php } ?>
  <?php if(isset($setting['rating']) && $setting['rating']) { ?>
    <div class="rating"><img src="catalog/view/theme/start/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
  <?php } ?>
</div>
