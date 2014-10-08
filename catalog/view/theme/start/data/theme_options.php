<?php
return array(
	'id' => 'start',
	'name' => 'Start',
	'version' => '1.0.0',
	'default_skin_id' => 'style_1',
	'styles' => array(
		'body' => array(
			'label' => _t('text_style_body', 'Body'),
			'items' => array(
        'body_main_color' => array(
          'label' => _t('text_style_body_main_color', 'Main Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
				'body_font' => array(
					'label' => _t('text_style_font', 'Body Font'),
					'type' => 'style_font',
					'font_family' => 1,
					'font_size' => 0,
					'font_weight' => 0,
					'font_style' => 0,
					'text_transform' => 0
				),
        'heading_font' => array(
          'label' => _t('text_style_heading_font', 'Heading Font'),
          'type' => 'style_font',
          'font_family' => 1,
          'font_size' => 0,
          'font_weight' => 1,
          'font_style' => 1,
          'text_transform' => 1
        ),
        'body_text_color' => array(
          'label' => _t('text_style_body_text_color', 'Text Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
        'body_bg_color' => array(
          'label' => _t('text_style_body_bg_color', 'Background Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
        'body_bg_image' => array(
          'label' => _t('text_style_body_bg_image', 'Background Image'),
          'type' => 'style_image_selector'
        ),
				'body_pattern' => array(
					'label' => _t('text_style_pattern', 'Background Pattern'),
					'type' => 'style_pattern'
				)
			)
		),
    'topbar' => array(
      'label' => _t('text_style_topbar', 'Top Bar'),
      'items' => array(
        'topbar_background_color' => array(
          'label' => _t('text_style_background_color', 'Background Color'),
          'type' => 'color',
          'format' => 'rgba'
        ),
        'topbar_link_color' => array(
          'label' => _t('text_style_topbar_link_color', 'Link Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
        'topbar_link_hover_color' => array(
          'label' => _t('text_style_topbar_link_hover_color', 'Link Hover Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
        'topbar_text_color' => array(
          'label' => _t('text_style_topbar_text_color', 'Text Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
        'topbar_border_color' => array(
          'label' => _t('text_style_topbar_border_color', 'Border Bottom Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
      )
    ),
    'header' => array(
      'label' => _t('text_style_header', 'Header'),
      'items' => array(
        'header_background_color' => array(
          'label' => _t('text_style_background_color', 'Background Color'),
          'type' => 'color',
          'format' => 'rgba'
        ),
        'header_background_image' => array(
          'label' => _t('text_style_header_background_image', 'Background Image'),
          'type' => 'style_image_selector'
        ),
      )
    ),
		'menu' => array(
			'label' => _t('text_style_menu', 'Menu'),
			'items' => array(
				'menu_item_color' => array(
					'label' => _t('text_style_item_color', 'Item Color'),
					'type' => 'color',
					'format' => 'hex'
				),
        'menu_bg_color' => array(
          'label' => _t('text_style_menu_bg_color', 'Background Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
				'menu_font' => array(
					'label' => _t('text_style_font', 'Font'),
					'type' => 'style_font',
					'font_family' => 1,
					'font_size' => 1,
					'font_weight' => 1,
					'font_style' => 1,
					'text_transform' => 1
				),
			)
		),
    'footer' => array(
      'label' => _t('text_style_footer', 'Footer'),
      'items' => array(
        'footer_background_color' => array(
          'label' => _t('text_style_background_color', 'Background Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
        'footer_heading_color' => array(
          'label' => _t('text_style_heading_color', 'Heading Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
        'footer_link_color' => array(
          'label' => _t('text_style_footer_link_color', 'Link Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
        'footer_link_hover_color' => array(
          'label' => _t('text_style_footer_link_hover_color', 'Link Hover Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
      )
    ),
    'product' => array(
      'label' => _t('text_style_footer', 'Product'),
      'items' => array(
        'product_price_color' => array(
          'label' => _t('text_style_product_price_color', 'Price Color'),
          'type' => 'color',
          'format' => 'hex'
        ),
      )
    )
	),
	'positions' => array(
		'header_top' => _t('text_position_header_top', 'Header Top'),
		'header_extra_info' => _t('text_position_header_extra_info', 'Header Extra Info'),
		'menu' => _t('text_position_menu', 'Menu'),
    'promotion' => _t('text_position_promotion', 'Promotion'),
    'footer_top' => _t('text_position_footer_top', 'Footer Top'),
    'footer_extra_info' => _t('text_position_footer_extra_info', 'Footer Extra Info'),
		'footer_address' => _t('text_position_footer_address', 'Footer Address'),
		'footer_bottom' => _t('text_position_footer_bottom', 'Footer Bottom')
	),
  'excluded_options' => array(
    'header_logo_position' => true,
    'facebook' => false,
    'twitter' => false,
    'product_page_button_select_list' => true,
    'product_page_related_products_position' => true
  )
);