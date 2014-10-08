<?php
if (!function_exists('_t'))
{
	function _t($text, $placeholder = '')
	{
		$args = func_get_args();
		return call_user_func_array(array('ModelKulerCommon', '__'), $args);
	}
}

class ModelKulerCommon extends Model
{
	static $VERSION = '2.0.2';

	public static $__ = array();

	public static function loadTexts(array $texts)
	{
		self::$__ = array_merge(self::$__, $texts);
	}

	public static function __($text)
	{
		$args = func_get_args();
		$text = $args[0];
		array_shift($args);

		if (isset(self::$__[$text]))
		{
			array_unshift($args, self::$__[$text]);

			return call_user_func_array('sprintf', $args);
		}
		else
		{
			return $text;
		}
	}

	public static function getTexts()
	{
		return self::$__;
	}

	public function getKulerVersion()
	{
		return self::$VERSION;
	}

	public function isDevelopment()
	{
		if (isset($_COOKIE['kdev']) && $_COOKIE['kdev'] == 1)
		{
			return true;
		}

		return false;
	}

	public function translate($text)
	{
		if (is_array($text))
		{
			$config_language = $this->config->get('config_language');

			if (!empty($text[$config_language]))
			{
				$text = $text[$config_language];
			}
			else
			{
				// Use first value if config language is not available

				$text = current($text);
			}
		}

		return html_entity_decode($text, ENT_QUOTES, 'UTF-8');
	}

	public function getLanguages()
	{
		$this->load->model('localisation/language');

		return $this->model_localisation_language->getLanguages();
	}

	public function decodeMultilingualText($text)
	{
		if (is_array($text))
		{
			foreach ($this->getLanguages() as $language)
			{
				if (!empty($text[$language['code']]))
				{
					$text[$language['code']] = html_entity_decode($text[$language['code']], ENT_QUOTES, 'UTF-8');
				}
			}
		}
		else
		{
			$text = html_entity_decode($text, ENT_QUOTES, 'UTF-8');
		}

		return $text;
	}

	public function prepareProduct(array $product, array $setting)
	{
		if (empty($setting['product_image_width']))
		{
			$setting['product_image_width'] = 80;
		}

		if (empty($setting['product_image_height']))
		{
			$setting['product_image_height'] = 80;
		}

		if (!isset($setting['show_product_image']))
		{
			$setting['show_product_image'] = false;
		}

		if (empty($setting['product_description_limit']))
		{
			$setting['product_description_limit'] = 100;
		}

		$image = $product['image'] && $setting['show_product_image'] ? $this->model_tool_image->resize($product['image'], $setting['product_image_width'], $setting['product_image_height']) : false;

		if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price'))
		{
			$product['price'] = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')));
		}
		else
		{
			$product['price'] = false;
		}

		$special = (float)$product['special'] ? $this->currency->format($this->tax->calculate($product['special'], $product['tax_class_id'], $this->config->get('config_tax'))) : false;
		$rating = $this->config->get('config_review_status') ? $product['rating'] : false;

		$product_categories = $this->model_catalog_product->getCategories($product['product_id']);
		$first_category_id = isset($product_categories[0]) ? $product_categories[0]['category_id'] : 0;

		$product_data = array(
			'product_id' => $product['product_id'],
			'thumb'      => $image,
			'image' => $product['image'],
			'name'       => strip_tags(html_entity_decode($product['name'], ENT_QUOTES, 'UTF-8')),
			'description'	 => utf8_substr(strip_tags(html_entity_decode($product['description'], ENT_QUOTES, 'UTF-8')), 0, $setting['product_description_limit']) . '..',
			'price'      => $product['price'],
			'special' => $special,
			'rating'	 => $rating,
			'reviews'    => sprintf($this->language->get('text_reviews'), (int)$product['reviews']),
			'href'       => $this->url->link('product/product', 'path=' . $this->getRecursivePath($first_category_id) . '&product_id=' . $product['product_id']),
		);

		return $product_data;
	}

	public function loadProductTemplate(array $setting, array $product, $type)
	{
		$template = new Template();
		$template->data = array(
			'setting'           => $setting,
			'button_cart'       => _t('button_cart'),
			'button_wishlist'   => _t('button_wishlist'),
			'button_compare'    => _t('button_compare')
		);

		$template->data['product'] = $product;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . "/template/common/_{$type}_product.tpl"))
		{
			return $template->fetch($this->config->get('config_template') . "/template/common/_{$type}_product.tpl");
		}
		else
		{
			return $template->fetch("default/template/common/_{$type}_product.tpl");
		}
	}

	public function getRecursivePath($category_id)
	{
		static $categories;

		if (empty($categories))
		{
			$this->load->model('catalog/category');

			/* @var $category_model ModelCatalogCategory */
			$category_model = $this->model_catalog_category;

			$raw_categories = $category_model->getCategories();

			$categories = array();
			foreach ($raw_categories as $raw_category)
			{
				$categories[$raw_category['category_id']] = $raw_category['parent_id'];
			}
		}

		if (!isset($categories[$category_id]))
		{
			return '';
		}

		$path = $category_id;
		$parent_id = $categories[$category_id];

		while (true)
		{
			if (!$parent_id)
			{
				break;
			}

			$path = $parent_id . '_' . $path;
			$parent_id = $categories[$parent_id];
		}

		return $path;
	}

	public function sortByField($items, $field = 'sort_order')
	{
		if (!is_array($items))
		{
			return $items;
		}

		$sort_order = array();

		foreach ($items as $key => $value)
		{
			$sort_order[$key] = $value[$field];
		}

		array_multisort($sort_order, SORT_ASC, $items);

		return $items;
	}

	/**
	 * Check where theme belongs KulerThemes or not
	 * @param $theme_id string
	 * @return boolean
	 */
	public function isKulerTheme($theme_id)
	{
		if (file_exists(DIR_TEMPLATE . $theme_id . '/data/theme_options.php'))
		{
			return true;
		}

		return false;
	}
}