<?php

class AboutController extends Controller
{
	public static function display()
	{
		$tpl = Template::create('pages/about-us.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('About Us', '/about-us', 'about-us active');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'Find out about CoderDojo in London');

		$tpl->display();
	}
}