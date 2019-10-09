<?php

class SupportersController extends Controller
{

	private static $valid_supporters = array(
		'kano' => array(
			'title' => 'Kano'
		),
		'raspberry-pi' => array(
			'title' => 'Raspberry Pi &amp; The Pi Hut Offers'
		),
		'idea' => array(
			'title' => 'iDEA'
		),
		'nutrificient-life' => array(
			'title' => 'Nutrificient Life'
		),
		'primo-toys' => array(
			'title' => 'Primo Toys'
		)
	);

	private static function is_valid_supporter($supporter)
	{
		$valid_supporters = array_keys(self::$valid_supporters);
		return in_array($supporter, $valid_supporters);
	}

	public static function display($supporter = null)
	{
		if (is_null($supporter))
		{
			self::display_home();
		}
		else
		{
			if (!self::is_valid_supporter($supporter))
			{
				Request::redirect('/supporters', true);
			}

			self::display_supporter($supporter);
		}
	}

	private static function display_home()
	{
		$tpl = Template::create('pages/supporters.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Supporters', '/supporters', 'supporters');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'Supporters and Sponsors of CoderDojo RISE');

		$tpl->display();
	}

	private static function display_supporter($supporter)
	{
		$template_path = 'pages/supporters/' . $supporter . '.tpl';
		$page_path = '/supporters/' . $supporter;
		$title = self::$valid_supporters[$supporter]['title'];
		$page_title = $title . ' - Our Supporters';

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Supporters', '/supporters');
		$breadcrumb_el->addCrumb($title, $page_path, 'supporters');

		$tpl = Template::create($template_path);
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', $page_title);
		$tpl->display();
	}

	// iDEA Spring Competition (2017)
	public static function displayIDEACompetition()
	{
		$tpl = Template::create('pages/supporters/offers/idea-spring-2017.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Supporters', '/supporters');
		$breadcrumb_el->addCrumb('iDEA', '/supporters/idea');
		$breadcrumb_el->addCrumb('CoderDojo Competition', '/supporters/idea/coderdojo-competition', 'supporters');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'iDEA and CoderDojo Competition 2017');

		$tpl->display();
	}
}