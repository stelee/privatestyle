<?php
$kuler = Kuler::getInstance();
$theme = $kuler->getTheme();

$kuler->addStyle(array(
  "catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css",
  "catalog/view/theme/$theme/stylesheet/stylesheet.css"
));

$kuler->addScript(array(
  'catalog/view/javascript/jquery/jquery-1.7.1.min.js',
  'catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js',
  'catalog/view/javascript/common.js',
  "catalog/view/theme/$theme/js/lib/jquery.magnific-popup.min.js",
  "catalog/view/theme/$theme/js/lib/smoothscroll.min.js",
  "catalog/view/theme/$theme/js/lib/parallax.js",
  "catalog/view/theme/$theme/js/utils.js"
));

?>
  <!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
  <head>
    <meta charset="UTF-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Kuler Themes">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
      <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
      <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <?php if ($icon) { ?>
      <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?>
    <?php foreach ($links as $link) { ?>
      <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <!-- {STYLES} -->
    <!-- {SCRIPTS} -->
    <?php if ($stores) { ?>
      <script type="text/javascript"><!--
        $(document).ready(function () {
          <?php foreach ($stores as $store) { ?>
          $('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
          <?php } ?>
        });
        //--></script>
    <?php } ?>
    <?php echo $google_analytics; ?>
    <?php if ($direction == "rtl") { ?>
      <link rel="stylesheet" type="text/css" href="catalog/view/theme/start/stylesheet/rtl.css" media="screen">
    <?php } ?>
  </head>
<body class="<?php echo $kuler->getBodyClass(); ?>">
  <div id="notification">
  </div><!--/#notificaton-->
<?php if ($kuler->getSkinOption('show_facebook')) { ?>
  <?php echo $kuler->getFacebookScriptCode(); ?>
<?php } ?>
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
        <div class="col-md-4 ship">
          <?php
          $modules = Kuler::getInstance()->getModules('header_extra_info');
          if ($modules) {
            echo implode('', $modules);
          }
          ?>
        </div>
        <div class="col-md-5 col-lg-5 links">
          <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
          <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
          <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>

          <div id="welcome">
            <?php if (!$logged) { ?>
              <?php echo $text_welcome; ?>
            <?php } else { ?>
              <?php echo $text_logged; ?>
            <?php } ?>
          </div>
          <!--/#welcome-->
        </div>
        <!--/.links-->

        <div class="col-md-3 col-lg-3 extra">
          <?php echo $language; ?>
          <?php echo $currency; ?>
        </div>
        <!--/.extra-->
      </div>
    </div>
    <!--/.container-->
  </div><!--/#top-bar-->
  <div id="header">
    <div class="container">
      <div class="row" style="position: relative">
        <?php if ($logo) { ?>
          <div id="logo" class="col-xs-12 col-md-3 col-lg-2">
            <a href="<?php echo $home; ?>">
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"/>
            </a>
          </div>
        <?php } ?>
        <div class="col-xs-12 col-md-7 col-lg-8">
          <?php if ($kuler->getSkinOption('live_search_status')) { ?>
            <?php include('_live_search.tpl'); ?>
          <?php } else { ?>
            <div id="search">
              <div class="button-search"></div>
              <div class="container">
                <input type="text" name="search" placeholder="<?php echo $text_search; ?>"
                       value="<?php echo $search; ?>"/>
              </div>
            </div>
          <?php } ?>
        </div>
        <div class="col-xs-12 col-md-2 col-lg-2">
          <?php echo $cart; ?>
        </div>
      </div>
    </div>
    <!--/.container-->
    <div class="navigation">
      <div class="container">
      <span id="btn-mobile-toggle">
      <?php echo $kuler->translate($kuler->getSkinOption('mobile_menu_title')); ?>
    </span>
        <?php
        $modules = Kuler::getInstance()->getModules('menu');
        if ($modules) {
          echo implode('', $modules);
        } else {
          ?>
          <?php if ($kuler->getSkinOption('multi_level_default_menu')) {
            $categories = $kuler->getRecursiveCategories();
          } ?>
          <div id="menu" class="container">
            <div class="row">
              <ul class="mainmenu">
                <li style="display: none;">
                  <a><?php echo $kuler->translate($kuler->getSkinOption('mobile_menu_title')); ?></a></li>
                <li class="item"><a
                    href="<?php echo $base; ?>" <?php if ($kuler->getSkinOption('home_icon_type') == 'icon') { ?> class="home-icon" <?php } ?>><?php echo $kuler->language->get('text_home') ?></a>
                </li>
                <?php foreach ($categories as $category) { ?>
                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                    <?php if ($category['children']) { ?>
                      <div>
                        <?php for ($i = 0; $i < count($category['children']);) { ?>
                          <ul>
                            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                            <?php for (; $i < $j; $i++) { ?>
                              <?php if (isset($category['children'][$i])) { ?>
                                <li><a
                                    href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
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
            </div>
            <!--/.container-->
          </div><!--/#menu-->
        <?php } ?>
      </div>
    </div>
  </div><!--/#header-->
<?php
function renderSubMenuRecursive($categories)
{
  $html = '<ul class="sublevel">';

  foreach ($categories as $category) {
    $parent = !empty($category['children']) ? ' parent' : '';
    $active = !empty($category['active']) ? ' active' : '';
    $html .= sprintf("<li class=\"item$parent $active\"><a href=\"%s\">%s</a>", $category['href'], $category['name']);

    if (!empty($category['children'])) {
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
$modules = Kuler::getInstance()->getModules('promotion');
if ($modules) {
  echo implode('', $modules);
}
?>