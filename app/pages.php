<?php

function handleHomePage()
{
	$tpl = Template::create('pages/index.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/', 'active');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->assign('page_title', 'CoderDojo in London');

	$tpl->display();
}

function handleAboutPage()
{
	$tpl = Template::create('pages/about-us.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/');
	$breadcrumb_el->addCrumb('About Us', '/about-us', 'about-us active');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->assign('page_title', 'Find out about CoderDojo in London');

	$tpl->display();
}

function handleAttendPage()
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

function handleNewsPage()
{
	$tpl = Template::create('pages/news.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/');
	$breadcrumb_el->addCrumb('News', '/news', 'news active');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->display();
}

function handleCommunityPage()
{
	$tpl = Template::create('pages/community.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/');
	$breadcrumb_el->addCrumb('Community', '/community', 'community active');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->assign('page_title', 'Join the CoderDojo London community');

	$tpl->display();
}

// Volunteer Pages
function handleVolunteerPage()
{
	$tpl = Template::create('pages/volunteer.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/');
	$breadcrumb_el->addCrumb('Volunteer', '/volunteer', 'volunteer active');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->assign('page_title', 'Volunteer at a CoderDojo in London');

	$tpl->display();
}
function handleAssistADojo()
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
function handleCreateADojo()
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

// Supporter pages
function handleSupportersPage()
{
	$tpl = Template::create('pages/supporters.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/');
	$breadcrumb_el->addCrumb('Supporters', '/supporters', 'supporters');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->assign('page_title', 'Supporters and Sponsors of CoderDojo London');

	$tpl->display();
}
function handleSupporters($supporter)
{
	$valid_supporters = [
		'leap-motion' => 'LEAP Motion',
		'trinket' => 'Trinket',
		'kano' => 'Kano',
		'mozilla' => 'Mozilla',
		'apple' => 'Apple',
		'raspberry-pi' => 'Raspberry Pi &amp; The Pi Hut Offers',
		'lego' => 'LEGO',
		'idea' => 'iDEA'
	];
	$valid_keys = array_keys($valid_supporters);
	if (in_array($supporter, $valid_keys))
	{
		$parent_page = 'supporters';
		$template_path = 'pages/' . $parent_page . '/' . $supporter . '.tpl';
		$title = $valid_supporters[$supporter];
		$page_title = $title . ' - Our Supporters';
		handleSubPage($parent_page, $supporter, $title, $page_title);
	}
	handle404Page();
}

// iDEA Spring 2017 offer page
function handleIDEASpring2017()
{
	$tpl = Template::create('pages/supporters/offers/idea-spring-2017.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/');
	$breadcrumb_el->addCrumb('Supporters', '/supporters');
	$breadcrumb_el->addCrumb('iDEA', '/supporters/idea');
	$breadcrumb_el->addCrumb('Spring Competition', '/supporters/idea/spring-competition', 'supporters');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->assign('page_title', 'iDEA and CoderDojo Spring Competition 2017');

	$tpl->display();
}

// Resources pages
function handleResourcePage()
{
	$tpl = Template::create('pages/resources.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/');
	$breadcrumb_el->addCrumb('Resources', '/resources', 'resources');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->assign('page_title', 'Resources to Learn Coding');

	$tpl->display();
}
function handleResources($resource)
{
	$valid_resources = [
		'python' => 'Python',
		'javascript' => 'JavaScript',
		'html' => 'HTML',
		'scratch' => 'Scratch',
		'unity' => 'Unity',
		'lego' => 'LEGO Minecraft',
		'apple-swift' => 'Apple Swift',
		'raspberry-pi' => 'Raspberry Pi',
		'idea' => 'iDEA',
		'idea-mentors' => 'iDEA Mentors'
	];
	$valid_keys = array_keys($valid_resources);
	if (in_array($resource, $valid_keys))
	{
		$parent_page = 'resources';
		$template_path = 'pages/' . $parent_page . '/' . $resource . '.tpl';
		$title = $valid_resources[$resource];
		$page_title = 'Resources for ' . $title . ' provided by CoderDojo';
		handleSubPage($parent_page, $resource, $title, $page_title);
	}
	handle404Page();
}

// Re-usable functions
function handleSubPage($parent, $child, $title, $page_title = null)
{
	$template_path = 'pages/' . $parent . '/' . $child . '.tpl';
	if (Template::exists($template_path))
	{
		$breadcrumb_el = new BreadcrumbsElement();
		$breadcrumb_el->addCrumb('Home', '/');
		$css_class = '';
		switch ($parent)
		{
			case 'resources':
				$breadcrumb_el->addCrumb('Resources', '/resources');
				$css_class = 'resources';
				break;
			case 'supporters':
				$breadcrumb_el->addCrumb('Supporters', '/supporters');
				$css_class = 'supporters';
				break;
		}
		$path = '/' . $parent . '/' . $child;
		$breadcrumb_el->addCrumb($title, $path, $css_class);
		$tpl = Template::create($template_path);
		$tpl->addElement('breadcrumbs', $breadcrumb_el);

		$tpl->assign('page_title', $page_title);

		$tpl->display();
		exit;
	}
	handle404Page();
}

// Legal pages
function handleLegalCookies()
{
	$tpl = Template::create('pages/legal/cookies.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/');
	$breadcrumb_el->addCrumb('How we use cookies', '/legal/cookies');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->assign('page_title', 'How we use cookies');

	$tpl->display();
}

function handle404Page()
{
	header($_SERVER['SERVER_PROTOCOL'] . ' 404 Not Found');
	$tpl = Template::create('pages/404.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/', 'active');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->display();
}

function handleTestPage()
{
	$tpl = Template::create('pages/test.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/');
	$breadcrumb_el->addCrumb('Test', '/test', 'active');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->display();
}

// WARNING: DO NOT DELETE THIS FUNCTION
function handleRouting(AltoRouter $router)
{	
	$match = $router->match();
	if ($match && is_callable($match['target']))
	{
		call_user_func_array($match['target'], $match['params']);
	}
	else
	{
		handle404Page();
	}
}