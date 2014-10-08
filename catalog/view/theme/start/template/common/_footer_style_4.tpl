<div id="footer">
	<div class="bottom">
		<div class="container">
			<div class="row">
				<?php if ($kuler->getSkinOption('show_twitter') && $kuler->getSkinOption('show_facebook')) { ?>
					<?php $class = 'col-sm-6 col-md-3'; ?>
				<?php } elseif ($kuler->getSkinOption('show_twitter') || $kuler->getSkinOption('show_facebook')) { ?>
					<?php $class = 'col-sm-6 col-md-4'; ?>
				<?php } else { ?>
					<?php $class = 'col-sm-6 col-md-6'; ?>
				<?php } ?>
				<div class="<?php echo $class; ?> info">
					<?php if ($kuler->getSkinOption('show_information')) { ?>
						<?php if ($kuler->getSkinOption('show_information_title')) { ?>
							<h3><span><?php echo $kuler->translate($kuler->getSkinOption('information_title')); ?></span></h3>
						<?php } ?>
						<?php echo $kuler->translate($kuler->getSkinOption('information_content')); ?>
					<?php } ?>
				</div><!-- /information-->
				<?php if ($kuler->getSkinOption('show_twitter') && $kuler->getSkinOption('show_facebook')) { ?>
					<?php $class = 'col-sm-6 col-md-3'; ?>
				<?php } elseif ($kuler->getSkinOption('show_twitter') || $kuler->getSkinOption('show_facebook')) { ?>
					<?php $class = 'col-sm-6 col-md-4'; ?>
				<?php } else { ?>
					<?php $class = 'col-sm-6 col-md-6'; ?>
				<?php } ?>
				<div class="<?php echo $class; ?> contact">
					<!-- Contact -->
					<?php if ($kuler->getSkinOption('show_contact')) { ?>
						<div>
							<?php if ($kuler->getSkinOption('show_contact_title')) { ?>
								<h3><span><?php echo $kuler->translate($kuler->getSkinOption('contact_title')); ?></span></h3>
							<?php } ?>
							<ul>
								<?php if (($skype1 = $kuler->getSkinOption('skype_1')) || ($skype2 = $kuler->getSkinOption('skype_2'))) { ?>
									<li class="skype">
										<?php if ($skype1) { ?>
											<span><?php echo $skype1; ?></span>
										<?php } ?>
										<?php if ($skype2 = $kuler->getSkinOption('skype_2') && $skype2) { ?>
											<span><?php echo $skype2; ?></span>
										<?php } ?>
									</li>
								<?php } ?>

								<?php if (($email1 = $kuler->getSkinOption('email_1')) || ($email2 = $kuler->getSkinOption('email_2'))) { ?>
									<li class="email">
										<?php if ($email1) { ?>
											<span><?php echo $email1; ?></span>
										<?php } ?>
										<?php if ($email2 = $kuler->getSkinOption('email_2') && $email2) { ?>
											<span><?php echo $email2; ?></span>
										<?php } ?>
									</li>
								<?php } ?>

								<?php if (($mobile1 = $kuler->getSkinOption('mobile_1')) || ($mobile2 = $kuler->getSkinOption('mobile_2'))) { ?>
									<li class="mobile">
										<?php if ($mobile1) { ?>
											<span><?php echo $mobile1; ?></span>
										<?php } ?>
										<?php if ($mobile2 = $kuler->getSkinOption('mobile_2') && $mobile2) { ?>
											<span><?php echo $mobile2; ?></span>
										<?php } ?>
									</li>
								<?php } ?>

								<?php if (($phone1 = $kuler->getSkinOption('phone_1')) || ($phone2 = $kuler->getSkinOption('phone_2'))) { ?>
									<li class="phone">
										<?php if ($phone1) { ?>
											<span><?php echo $phone1; ?></span>
										<?php } ?>
										<?php if ($phone2 = $kuler->getSkinOption('phone_2') && $phone2) { ?>
											<span><?php echo $phone2; ?></span>
										<?php } ?>
									</li>
								<?php } ?>

								<?php if (($fax1 = $kuler->getSkinOption('fax_1')) || ($fax2 = $kuler->getSkinOption('fax_2'))) { ?>
									<li class="fax">
										<?php if ($fax1) { ?>
											<span><?php echo $fax1; ?></span>
										<?php } ?>
										<?php if ($fax2 = $kuler->getSkinOption('fax_2') && $fax2) { ?>
											<span><?php echo $fax2; ?></span>
										<?php } ?>
									</li>
								<?php } ?>
							</ul>
						</div>
					<?php } ?>
				</div><!--/contact-->
				<?php if ($kuler->getSkinOption('show_twitter')) { ?>
					<?php if ($kuler->getSkinOption('show_twitter') && $kuler->getSkinOption('show_facebook')) { ?>
						<?php $class = 'col-sm-6 col-md-3'; ?>
					<?php } elseif ($kuler->getSkinOption('show_twitter') || $kuler->getSkinOption('show_facebook')) { ?>
						<?php $class = 'col-sm-6 col-md-4'; ?>
					<?php } else { ?>
						<?php $class = 'col-sm-6 col-md-6'; ?>
					<?php } ?>
					<div class="<?php echo $class; ?>">
						<?php if ($kuler->getSkinOption('show_twitter_title')) { ?>
							<h3><span><?php echo $kuler->translate($kuler->getSkinOption('twitter_title')); ?></span></h3>
						<?php } ?>
						<?php echo $kuler->getTwitter(); ?>
					</div>
				<?php } ?>
				<?php if ($kuler->getSkinOption('show_facebook')) { ?>
					<?php if ($kuler->getSkinOption('show_twitter') && $kuler->getSkinOption('show_facebook')) { ?>
						<?php $class = 'col-sm-6 col-md-3'; ?>
					<?php } elseif ($kuler->getSkinOption('show_twitter') || $kuler->getSkinOption('show_facebook')) { ?>
						<?php $class = 'col-sm-6 col-md-4'; ?>
					<?php } else { ?>
						<?php $class = 'col-sm-6 col-md-6'; ?>
					<?php } ?>
					<div class="<?php echo $class; ?>">
						<?php if ($kuler->getSkinOption('show_facebook_title')) { ?>
							<h3><span><?php echo $kuler->translate($kuler->getSkinOption('facebook_title')); ?></span></h3>
						<?php } ?>
						<?php echo $kuler->getFacebook(); ?>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
	<div class="container">
			<div class="row">
					<?php if ($informations) { ?>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<h3><?php echo $text_information; ?></h3>
							<ul>
								<?php foreach ($informations as $information) { ?>
									<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
								<?php } ?>
							</ul>
						</div>
					<?php } ?>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<h3><?php echo $text_service; ?></h3>
						<ul>
							<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
							<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
							<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
						</ul>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<h3><?php echo $text_extra; ?></h3>
						<ul>
							<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
							<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
							<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
							<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
						</ul>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<h3><?php echo $text_account; ?></h3>
						<ul>
							<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
							<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
							<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
							<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
						</ul>
					</div>
				</div>
	</div><!--/.container-->
</div><!--/.footer-->
<div class="social-newsletter">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 social">
				<?php if ($kuler->getSkinOption('show_social_icons')) { ?>
					<?php if ($kuler->getSkinOption('show_social_icons_title')) { ?>
						<h3><span><?php echo $kuler->translate($kuler->getSkinOption('social_icon_title')); ?></span></h3>
					<?php } ?>
					<?php if ($social_icons = $kuler->getSocialIcons()) { ?>
						<ul class="icon-style-<?php echo $kuler->getSkinOption('icon_style') ?> icon-size-<?php echo $kuler->getSkinOption('icon_size'); ?>">
							<?php foreach ($social_icons as $social_icon) { ?>
								<li><a href="<?php echo $social_icon['link']; ?>" target="_blank" class="<?php echo $social_icon['class']; ?>"></a></li>
							<?php } ?>
						</ul>
					<?php } ?>
				<?php } ?>
			</div><!--/social icons-->
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 newsletter">
				<?php if ($kuler->getSkinOption('show_newsletter')) { ?>
					<?php if ($kuler->getSkinOption('show_newsletter_title')) { ?>
					<h3><span><?php echo $kuler->translate($kuler->getSkinOption('newsletter_title')); ?></span></h3>
				<?php } ?>
					<form id="newsletter-form">
						<?php echo $kuler->translate($kuler->getSkinOption('newsletter_description_text')); ?>
						<input type="email" id="newsletter-mail"
						       placeholder="<?php echo $kuler->translate($kuler->getSkinOption('newsletter_input_text')); ?>"/>
						<button
							id="newsletter-submit"><?php echo $kuler->translate($kuler->getSkinOption('newsletter_button_text')); ?></button>
					</form>
					<script>
						Kuler.show_newsletter = <?php echo json_encode($kuler->getSkinOption('show_newsletter')); ?>;
						Kuler.newsletter_subscribe_link = <?php echo json_encode($kuler->getNewsletterSubscribeLink()); ?>;
					</script>
				<?php } ?>
			</div><!--/newsletter-->
		</div>
	</div>
</div>
<div id="powered">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-5 col-xs-12 copyright">
				<?php if ($kuler->getSkinOption('show_custom_copyright')) { ?>
					<?php echo $kuler->translate($kuler->getSkinOption('custom_copyright')); ?>
				<?php } else { ?>
					<?php echo $powered; ?>
				<?php } ?>
			</div>
			<?php if ($kuler->getSkinOption('show_payment_icons') && $payment_icons = $kuler->getPaymentIcons()) { ?>
				<div class="col-lg-8 col-md-6 col-sm-7 col-xs-12 payment">
					<ul>
						<?php foreach ($payment_icons as $payment_icon) { ?>
							<li><a href="<?php echo $payment_icon['link']; ?>"<?php if ($payment_icon['new_tab']) echo ' target="_blank"'; ?> title="<?php echo $kuler->translate($payment_icon['name']); ?>"><img src="<?php echo $payment_icon['thumb']; ?>" alt="<?php echo $kuler->translate($payment_icon['name']); ?>" /></a></li>
						<?php } ?>
					</ul>
				</div>
			<?php } ?>
		</div>
	</div>
</div>