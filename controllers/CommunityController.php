<?php

class CommunityController extends Controller
{
	public static function display()
	{
		$tpl = Template::create('pages/community.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Community', '/community', 'community active');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'Join the CoderDojo RISE community');

		$tpl->display();
	}
}