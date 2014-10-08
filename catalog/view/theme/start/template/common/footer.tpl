<?php $kuler = Kuler::getInstance(); ?>
<?php
$modules = Kuler::getInstance()->getModules('footer_top');
if ($modules) {
  echo implode('', $modules);
}
?>
<?php if ($kuler->getRootSkin() == 'style_4') { ?>
	<?php include('_footer_style_4.tpl'); ?>
<?php } else{ ?>
	<?php include('_footer.tpl'); ?>
<?php } ?>
<?php
$modules = Kuler::getInstance()->getModules('footer_bottom');
if ($modules) {
  echo implode('', $modules);
}
?>
</div>
<?php if ($kuler->getSkinOption('login_popup')) { ?>
<?php $kuler->loginPopupInit($data); ?>
<div style="display: none">
	<div id="login-popup">
		<div class="col-sm-6 left">
			<h2><?php echo _t('text_new_customer'); ?></h2>
			<div class="content">
				<p><b><?php echo _t('text_register'); ?></b></p>
				<p><?php echo _t('text_register_account'); ?></p>
				<a href="<?php echo $data['register_url']; ?>" class="button"><?php echo _t('button_continue'); ?></a></div>
		</div>
		<div class="col-sm-6 right">
			<h2><?php echo _t('text_returning_customer'); ?></h2>
			<form id="popup-login-form">
				<div class="content">
					<p><?php echo _t('text_i_am_returning_customer'); ?></p>
					<b><?php echo _t('entry_email'); ?></b><br />
					<input type="text" name="email" />
					<br />
					<br />
					<b><?php echo _t('entry_password'); ?></b><br />
					<input type="password" name="password" />
					<br />
					<a href="<?php echo $data['forgotten_url']; ?>"><?php echo _t('text_forgotten'); ?></a><br />
					<br />
					<input type="submit" value="<?php echo _t('button_login'); ?>" class="button" />
				</div>
			</form>
		</div>
	</div>
</div>
<?php } ?>
<?php if ($kuler->getSkinOption('enable_scroll_up')) { ?>
<a class="scrollup"><?php echo $kuler->translate($kuler->getSkinOption('scroll_up_text')); ?></a>
<?php } ?>
<!-- {BODY_SCRIPTS} -->
<!-- Theme Version: <?php echo $kuler->getThemeVersion(); ?> | Kuler Version: <?php echo $kuler->getKulerVersion(); ?> | Skin: <?php echo $kuler->getRootSkin(); ?> -->
</body>
</html>