<?php

class LegalController extends Controller
{
	public static function displayCookies()
	{
		$tpl = Template::create('pages/legal/cookies.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('How we use cookies', '/legal/cookies');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'How we use cookies');

		$tpl->display();
	}
}