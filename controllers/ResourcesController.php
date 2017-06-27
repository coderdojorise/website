<?php

class ResourcesController extends Controller
{
	private static $valid_topics = array(
		'python' => array(
			'title' => 'Python'
		),
		'javascript' => array(
			'title' => 'JavaScript'
		),
		'scratch' => array(
			'title' => 'Scratch'
		),
		'raspberry-pi' => array(
			'title' => 'Raspberry Pi'
		),
		'idea' => array(
			'title' => 'iDEA'
		),
		'idea-mentors' => array(
			'title' => 'iDEA Mentors'
		)
	);

	private static function is_valid_topic($topic)
	{
		$topics = array_keys(self::$valid_topics);
		return in_array($topic, $topics);
	}

	public static function display($topic = null)
	{
		if (is_null($topic))
		{
			self::display_home();
		}
		else
		{
			if (!self::is_valid_topic($topic))
			{
				Request::redirect('/resources', true);
			}
			self::display_topic($topic);
		}
	}

	private static function display_home()
	{
		$tpl = Template::create('pages/resources.tpl');

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Resources', '/resources', 'resources');
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', 'Resources to Learn Coding');

		$tpl->display();
	}

	private static function display_topic($topic)
	{
		$template_path = 'pages/resources/' . $topic . '.tpl';
		$page_path = '/resources/' . $topic;
		$title = self::$valid_topics[$topic]['title'];
		$page_title = 'Resources for ' . $title . ' provided by CoderDojo';

		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$breadcrumb_el->addCrumb('Resources', '/resources');
		$breadcrumb_el->addCrumb($title, $page_path, 'resources');

		$tpl = Template::create($template_path);
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', $page_title);
		$tpl->display();
	}
}