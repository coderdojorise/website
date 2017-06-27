<?php

class VolunteerController extends Controller
{
	public static function display($page = null)
	{
		if (is_null($page))
		{
			self::display_home();
		}
		else
		{
			switch ($page)
			{
				case 'assist-a-dojo':
					self::display_assist_dojo();
					break;
				case 'create-a-dojo':
					self::display_create_dojo();
					break;
				default:
					Request::redirect('/volunteer', true);
			}
		}
	}

	private static function display_home()
	{
		$tpl = Template::create('pages/volunteer.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Volunteer', '/volunteer', 'volunteer active');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'Volunteer at a CoderDojo in London');

		$tpl->display();
	}

	private static function display_assist_dojo()
	{
		$tpl = Template::create('pages/volunteer/assist-a-dojo.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Volunteer', '/volunteer');
		$breadcrumb_el->addCrumb('Assist a Dojo', '/volunteer/assist-a-dojo', 'volunteer active');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'Assist and volunteer at one of the CoderDojos in London');

		$tpl->display();
	}

	private static function display_create_dojo()
	{
		$tpl = Template::create('pages/volunteer/create-a-dojo.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Volunteer', '/volunteer');
		$breadcrumb_el->addCrumb('Create a Dojo', '/volunteer/create-a-dojo', 'volunteer active');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'Start your own CoderDojo in London');

		$tpl->display();
	}
}