<?php
require_once(DIR_APPLICATION . 'controller/module/kuler_cp.php');
$kuler = Kuler::getInstance();
$kuler->addScript($kuler->getThemeResource('catalog/view/theme/'. $kuler->getTheme() .'/js/kuler_contact_form.js'), true);
?>
<div class="kcf-module" id="kcf-module-<?php echo $module; ?>">
	<div class="box kuler-module">
		<?php if (!empty($settings['show_title'])) { ?>
			<div class="box-heading"><span><?php echo $kuler->translate($settings['title']); ?></span></div>
		<?php } ?>
		<div class="box-content">
      <div class="col-lg-5 col-md-6 col-sm-6 cold-sx-12">
        <?php if (!empty($settings['show_custom_information'])) { ?>
          <?php echo $kuler->translate($settings['custom_information']); ?>
        <?php } ?>
      </div>
      <?php if (!empty($settings['show_custom_information'])) { ?>
        <?php $class = 'col-lg-7 col-md-6 col-sm-6 cold-sx-12'; ?>
      <?php } else { ?>
        <?php $class = 'cold-sx-12'; ?>
      <?php } ?>
      <div class="<?php echo $class ?>">
        <form action="<?php echo $action_url; ?>">
          <p class="kcf-field-name">
            <input type="text" name="name" placeholder="<?php echo $entry_name; ?>" />
          </p>
          <p class="kcf-field-email">
            <input type="email" name="email" placeholder="<?php echo $entry_email; ?>" />
          </p>
          <p class="kcf-field-enquiry">
            <textarea name="enquiry" cols="60" rows="5" placeholder="<?php echo $entry_enquiry; ?>"></textarea>
          </p>
          <p>
            <button class="button kcp-button-submit"><?php echo $button_send_message; ?></button>
          </p>
        </form>
      </div>
		</div>
	</div>
</div>