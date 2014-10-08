<div id="kbm-recent-article-<?php echo $module; ?>" class="kbm-recent-article">
    <div class="box kuler-module">
	    <?php if ($show_title) { ?>
        <div class="box-heading"><span><?php echo $title; ?></span></div>
	    <?php } ?>
        <div class="box-content">
            <ul class="articles row">
	            <?php foreach ($articles as $article) { ?>
                <li class="col-sm-6 col-md-3">
	                <?php if ($product_featured_image) { ?>
                        <div class="image"><img src="<?php echo $article['featured_image_thumb']; ?>" class="avatar" alt="<?php echo $article['name']; ?>" /></div>
	                <?php } ?>
                  <a href="<?php echo $article['link']; ?>" class="article-title"><?php echo $article['name']; ?></a>
                  <span class="date"><?php echo $article['date_added_formatted']; ?></span>
                  <?php if ($product_description) { ?>
                    <p><?php echo $article['description']; ?></p>
                  <?php } ?>
                </li>
	            <?php } ?>
            </ul>
        </div>
    </div>
</div>