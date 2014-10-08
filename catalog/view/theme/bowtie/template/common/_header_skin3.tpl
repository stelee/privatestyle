<div id="container">
  <?php
  $modules = Kuler::getInstance()->getModules('header_top');
  if ($modules) {
    echo implode('', $modules);
  }
  ?>
  <div id="top-bar">
    <div class="container">
      <div class="row">
        <div class="col-md-5 links">
          <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
          <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
          <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
          <div id="welcome">
            <?php if (!$logged) { ?>
              <?php echo $text_welcome; ?>
            <?php } else { ?>
              <?php echo $text_logged; ?>
            <?php } ?>
          </div><!--/#welcome-->
        </div><!--/.links-->

        <div class="col-md-2 extra">
          <?php echo $language; ?>
          <?php echo $currency; ?>
        </div><!--/.extra-->

        <div class="col-md-3" >
          <?php if ($kuler->getSkinOption('live_search_status')) { ?>
            <?php include('_live_search.tpl'); ?>
          <?php } else { ?>
            <div id="search">
              <div class="button-search"></div>
              <div class="container">
                <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
              </div>
            </div>
          <?php } ?>
        </div>

        <div class="col-xs-12 col-md-2">
          <?php echo $cart; ?>
        </div>

      </div>
    </div><!--/.container-->
  </div><!--/#top-bar-->
  <div id="header">
    <div class="container">
      <?php if ($logo) { ?>
        <div id="logo" class="col-xs-12 col-md-3 wow fadeInLeft" data-wow-delay="0.1s">
          <a href="<?php echo $home; ?>">
            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
          </a>
        </div>
      <?php } ?>
      <div class="navigation">
        <div class="container">
        <span id="btn-mobile-toggle">
        <?php echo $kuler->translate($kuler->getSkinOption('mobile_menu_title')); ?>
      </span>
          <?php
          $modules = Kuler::getInstance()->getModules('menu');
          if ($modules) {
            echo implode('', $modules);
          }else{
            ?>
            <?php if ($kuler->getSkinOption('multi_level_default_menu')) { $categories = $kuler->getRecursiveCategories(); } ?>
            <div id="menu" class="col-md-9">
              <div class="row">
                <ul class="mainmenu">
                  <li style="display: none;"><a><?php echo $kuler->translate($kuler->getSkinOption('mobile_menu_title')); ?></a></li>
                  <li class="item"><a href="<?php echo $base; ?>" <?php if ($kuler->getSkinOption('home_icon_type') == 'icon') { ?> class="home-icon" <?php } ?>><?php echo $kuler->language->get('text_home') ?></a></li>
                  <?php foreach ($categories as $category) { ?>
                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                      <?php if ($category['children']) { ?>
                        <div>
                          <?php for ($i = 0; $i < count($category['children']);) { ?>
                            <ul>
                              <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                              <?php for (; $i < $j; $i++) { ?>
                                <?php if (isset($category['children'][$i])) { ?>
                                  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                                    <?php if (!empty($category['children'][$i]['children'])) { ?>
                                      <?php echo renderSubMenuRecursive($category['children'][$i]['children']); ?>
                                    <?php } ?>
                                  </li>
                                <?php } ?>
                              <?php } ?>
                            </ul>
                          <?php } ?>
                        </div>
                      <?php } ?>
                    </li>
                  <?php } ?>
                </ul>
              </div><!--/.container-->
            </div><!--/#menu-->
          <?php } ?>
        </div>
      </div>
    </div>
  </div><!--/#header-->
  <?php
  function renderSubMenuRecursive($categories) {
    $html = '<ul class="sublevel">';

    foreach ($categories as $category)
    {
      $parent = !empty($category['children']) ? ' parent' : '';
      $active = !empty($category['active']) ? ' active' : '';
      $html .= sprintf("<li class=\"item$parent $active\"><a href=\"%s\">%s</a>", $category['href'], $category['name']);

      if (!empty($category['children']))
      {
        $html .= '<span class="btn-expand-menu"></span>';
        $html .= renderSubMenuRecursive($category['children']);
      }

      $html .= '</li>';
    }

    $html .= '</ul>';

    return $html;
  }
  ?>
  <?php
  $modules = Kuler::getInstance()->getModules('slideshow');
  if ($modules) {
    echo '<div class="slideshow">' . implode('', $modules) . '</div>';
  }
  ?>
<?php
$modules = Kuler::getInstance()->getModules('promotion');
if ($modules) {
  echo '<div class="promotion">' . implode('', $modules) . '</div>';
}
?>