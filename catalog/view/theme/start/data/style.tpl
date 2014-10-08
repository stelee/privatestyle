/* Layout */
{{#is layout_style 'boxed'}}
  @media only screen and (min-width: 100em) {
      .boxed #container {
        max-width: calc({{maximum_width}} + 30px);
      }
      .container{
        max-width:  {{maximum_width}};
      }
    }
{{/is}}
/* Custom Notification */
{{#if show_custom_notification}}
#notification {
	top: 80px;
	z-index: 9999;
	opacity: 0;
	right: 20px;
	width: 300px;
	position: fixed;
	visibility: hidden;
	transition: 0.3s ease-in-out;
	-moz-transition: 0.3s ease-in-out;
	-webkit-transition: 0.3s ease-in-out;
}

#notification.active {
	top: 20px;
	opacity: 1;
	visibility: visible;
}
{{/if}}

/* Scroll up */
{{#if enable_scroll_up}}
.scrollup {
z-index: 2;
position: fixed;
right: 50px;
background:{{body_main_color}}
}
{{/if}}

/* Style Customization */
{{#if body_main_color}}
  .style_1 .mainmenu > li:hover, {
    border-color: {{body_main_color}};
  }
  .style_1 .product-grid .name a:hover,
  .style_1 .box-product .name a:hover,
  .style_1 .product-filter .display a:hover,
  .style_1 .product-filter .display span:hover,
  .style_1 .product-filter .product-compare a:hover,
  .style_1 #megamenu .mainmenu > li > div .item > a:hover {
    color: {{body_main_color}};
  }
  .style_1 .category-list a:hover,
  .style_1 .button:hover,
  .style_1 a.button:hover,
  .style_1 #header .checkout a:hover,
  .style_1 .cart-total + .buttons a:hover,
  .style_1 .cart-total + .buttons a:hover,
  .style_1 #header #cart .heading #cart-product-total,
  .style_1 .scrollup{
    background-color: {{body_main_color}};
  }
  .style_1 .product-list > div:hover .wishlist a:hover,
  .style_1 .product-list > div:hover .compare a:hover,
  .style_1 .product-list > div:hover .quick-view a:hover,
  .style_1 .product-info .details .wishlist:hover,
  .style_1 .product-info .details .compare:hover,
  .style_1 #megamenu .subcat li a:hover,
  .style_1 .breadcrumb li a:hover,
  {
    color: {{body_main_color}};
  }
  .style_2 #header #cart .heading #cart-product-total,
  .style_2 .scrollup,
  .style_2 .navigation{
    background-color: {{body_main_color}};
  }
  .style_2 #content .kbm-recent-article li a,
  .style_2 .product-grid .name a,
  .style_2 .box-product .name a{
    color: {{body_main_color}};
  }
  .style_3 .navigation .container,
  .style_3 .button, a.button,
  .style_3 #footer .info a,
  .style_3 .newsletter button,
  .style_3 .scrollup,
  .style_3 #header #cart .heading #cart-product-total,
  .style_3 .article .read-more{
    background-color: {{body_main_color}};
  }
  .style_3 #content .kbm-recent-article li a,
  .style_3 .jcarousel-skin-opencart .jcarousel-prev:before,
  .style_3 .jcarousel-skin-opencart .jcarousel-next:before,
  .style_3 .kuler-tabs .box-heading li.ui-state-active a,
  .style_3 h1, .style_3 h2, .style_3 h3, .style_3 h4, .style_3 h5, .style_3 h6,
  .style_3 .product-list .name a,
  .style_3 .box-heading,
  .style_3 .product-list .price,
  .style_3 .product-grid .name a,
  .style_3 .box-product .name a,
  .style_3 .product-grid .details .wishlist a:before,
  .style_3 .product-grid .details .compare a:before,
  .style_3 .product-filter .display span,
  .style_3 .article-header h2 a,
  .style_3 #column-left ul a,
  .style_3 #column-right ul a  {
    color: {{body_main_color}};
  }

  .product-grid .details .cart,
  .product-grid .details .quick-view a:hover,
  .product-grid .details .cart:hover,
  .product-grid .details .compare:hover,
  .product-grid .details .wishlist:hover{
    background-color: {{body_main_color}};
  }
	.style_4 .mainmenu > li:hover, {
	border-color: {{body_main_color}};
	}
	.style_4 .product-grid .name a:hover,
	.style_4 .box-product .name a:hover,
	.style_4 .product-filter .display a:hover,
	.style_4 .product-filter .display span:hover,
	.style_4 .product-filter .product-compare a:hover,
	.style_4 #megamenu .mainmenu > li > div .item > a:hover {
	color: {{body_main_color}};
	}
	.style_4 .category-list a:hover,
	.style_4 .button:hover,
	.style_4 a.button:hover,
	.style_4 #header .checkout a:hover,
	.style_4 .cart-total + .buttons a:hover,
	.style_4 .cart-total + .buttons a:hover,
	.style_4 #header #cart .heading #cart-product-total,
	.style_4 .scrollup{
	background-color: {{body_main_color}};
	}
	.style_4 .product-list > div:hover .wishlist a:hover,
	.style_4 .product-list > div:hover .compare a:hover,
	.style_4 .product-list > div:hover .quick-view a:hover,
	.style_4 .product-info .details .wishlist:hover,
	.style_4 .product-info .details .compare:hover,
	.style_4 #megamenu .subcat li a:hover,
	.style_4 .breadcrumb li a:hover,
	{
	color: {{body_main_color}};
	}
{{/if}}
{{#if body_bg_image.path}}
  body {
      background-image: url({{body_bg_image.path}});
      {{#if body_bg_image.repeat}}
        background-repeat: {{body_bg_image.repeat}};
      {{/if}}
      {{#if body_bg_image.position}}
        background-position: {{body_bg_image.position}};
      {{/if}}
      {{#if body_bg_image.attachment}}
        background-attachment: {{body_bg_image.attachment}};
      {{/if}}
  }
{{/if}}
{{#if body_font}}
  body {
    {{#if body_font.font_family}}
      font-family: {{_fontFamily body_font.font_family}};
    {{/if}}
    {{#if body_font.font_size}}
      font-size: {{body_font.font_size}};
    {{/if}}
    {{#if body_font.font_weight}}
      font-weight: {{body_font.font_weight}};
    {{/if}}
    {{#if body_bg_color}}
        background-color: {{body_bg_color}};
    {{/if}}
    {{#if body_pattern}}
      background-image: url({{body_pattern}});
    {{/if}}
    {{#if body_text_color}}
      color: {{body_text_color}};
    {{/if}}
  }
  .kuler-tabs,.kuler-slides,
  #header .checkout a,
  .cart-total + .buttons a{
  {{#if body_font.font_family}}
    font-family: {{_fontFamily body_font.font_family}};
  {{/if}}
}
{{/if}}

{{#if heading_font}}
h1,h2,h3,h4,h5,h6 {
  {{#if heading_font.font_family}}
    font-family: {{_fontFamily heading_font.font_family}};
  {{/if}}
  {{#if heading_font.font_style}}
    font-style: {{heading_font.font_style}};
  {{/if}}
  {{#if heading_font.font_weight}}
    font-weight: {{heading_font.font_weight}};
  {{/if}}
  {{#if heading_font.text_transform}}
    text-transform:{{heading_font.text_transform}};
  {{/if}}
}
{{/if}}

{{#if topbar_background_color}}
  #top-bar{
  {{#if topbar_background_color}}
    background-color: {{topbar_background_color}};
  {{/if}}
  }
{{/if}}

{{#if topbar_link_color}}
  #top-bar a{
    {{#if topbar_link_color}}
      color: {{topbar_link_color}};
    {{/if}}
  }
{{/if}}

{{#if topbar_link_hover_color}}
  #top-bar a:hover{
    {{#if topbar_link_hover_color}}
      color: {{topbar_link_hover_color}};
    {{/if}}
  }
{{/if}}

{{#if topbar_text_color}}
  #top-bar{
    {{#if topbar_text_color}}
      color: {{topbar_text_color}};
    {{/if}}
  }
{{/if}}

{{#if topbar_border_color}}
  #top-bar{
    {{#if topbar_border_color}}
      border-color: {{topbar_border_color}};
    {{/if}}
  }
{{/if}}

{{#if header_background_image.path}}
  #header {
      background-image: url({{header_background_image.path}});
      {{#if header_background_image.repeat}}
        background-repeat: {{header_background_image.repeat}};
      {{/if}}
      {{#if header_background_image.position}}
        background-position: {{header_background_image.position}};
      {{/if}}
      {{#if header_background_image.attachment}}
        background-attachment: {{header_background_image.attachment}};
      {{/if}}
  }
{{/if}}
{{#if header_background_color}}
  #header{
  {{#if header_background_color}}
    background-color: {{header_background_color}};
  {{/if}}
  }
{{/if}}

{{#if footer_background_color}}
#footer,#powered,.social-newsletter{
  {{#if footer_background_color}}
    background-color: {{footer_background_color}};
  {{/if}}
}
{{/if}}

{{#if footer_background_color}}
  #footer h3,#powered h3{
    {{#if footer_heading_color}}
      color: {{footer_heading_color}};
    {{/if}}
  }
{{/if}}

{{#if footer_link_color}}
  #footer a,#powered a{
    {{#if footer_link_color}}
      color: {{footer_link_color}};
    {{/if}}
  }
  #footer,#powered{
    {{#if footer_link_color}}
      color: {{footer_link_color}};
    {{/if}}
  }
{{/if}}

{{#if footer_link_hover_color}}
  #footer a:hover,#powered a:hover{
    {{#if footer_link_hover_color}}
      color: {{footer_link_hover_color}};
    {{/if}}
  }
  #footer .steps li:hover,
  #footer .contact li:hover{
    {{#if footer_link_hover_color}}
      color: {{footer_link_hover_color}};
    {{/if}}
  }

  .social a:hover:before,
  .newsletter button:hover{
    {{#if footer_link_hover_color}}
      background-color: {{footer_link_hover_color}};
    {{/if}}
  }
{{/if}}

{{#if menu_bg_color}}
    .style_2 .free-ship{
    {{#if header_background_color}}
      background-color: {{menu_bg_color}};
    {{/if}}
    }
    .style_2 .product-grid .sale,
    .style_2 .product-list .sale,
    .style_2 .navigation{
      background-color: {{menu_bg_color}};
    }
{{/if}}
{{#if menu_font}}
#menu {
	{{#if menu_font.font_family}}
		font-family: {{_fontFamily menu_font.font_family}};
	{{/if}}
	{{#if menu_font.font_weight}}
		font-weight: {{_fontFamily menu_font.font_weight}};
	{{/if}}
	{{#if menu_font.font_style}}
		font-style: {{_fontFamily menu_font.font_style}};
	{{/if}}
	{{#if menu_font.text_transform}}
		text-transform: {{_fontFamily menu_font.text_transform}};
	{{/if}}
}
{{/if}}

.mainmenu > li > a {
	{{#if menu_item_color}}
	color: {{menu_item_color}};
	{{/if}}
	{{#if menu_font.font_size}}
		font-size: {{_fontFamily menu_font.font_size}};
	{{/if}}
}

{{#if menu_item_color}}
.style_1 #header #cart #cart-total:after,
.style_1 #header #search .button-search:before{
  color: {{menu_item_color}};
}
.style_4 #header #cart #cart-total:after,
.style_4 #header #search .button-search:before{
color: {{menu_item_color}};
}
{{/if}}

{{#if product_price_color}}
  .product-grid .price-fixed,
  .box-product .price-fixed{
    color: {{product_price_color}};
  }
{{/if}}