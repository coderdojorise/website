<?php

class AttendDojoController extends Controller
{
	public static function display()
	{
		$tpl = Template::create('pages/attend-a-dojo.tpl');

		$events_tbl = new EventsTableElement();
		$tpl->addElement('events_tbl', $events_tbl);

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Attend a Dojo', '/attend-a-dojo', 'attend active');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'Attend a CoderDojo in London');

		$tpl->display();
	}
}