<?php

class HomeController extends Controller
{
	public static function display()
	{
		$tpl = Template::create('pages/index.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/', 'active');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'CoderDojo - Be Cool and get involved');

		$tpl->display();
	}
}