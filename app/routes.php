<?php

$router = new AltoRouter();

// Homepage
$router->map('GET', '/', 'HomeController::display', 'main');

// About Us
$router->map('GET', '/about-us', 'AboutController::display', 'about_us');

// Attend a Dojo
$router->map('GET', '/attend-a-dojo', 'AttendDojoController::display', 'attend_a_dojo');

// Volunteer
$router->map('GET', '/volunteer', 'VolunteerController::display', 'volunteer_home');
$router->map('GET', '/volunteer/[:page]', 'VolunteerController::display', 'volunteer_subpage');

// Resources
$router->map('GET', '/resources', 'ResourcesController::display', 'resources_home');
$router->map('GET', '/resources/[:topic]', 'ResourcesController::display', 'resources_topic');

// Supporters
$router->map('GET', '/supporters', 'SupportersController::display', 'supporters_home');
$router->map('GET', '/supporters/[:supporter]', 'SupportersController::display', 'supporter_entity');
// Supporters: iDEA Spring Competition
$router->map('GET', '/supporters/idea/spring-competition', 'SupportersController::displayIDEACompetition', 'supporter_idea_competition');
$router->map('GET', '/supporters/idea/march-competition', function()
{
	Request::redirect('/supporters/idea/spring-competition', true);
});

// Community
$router->map('GET', '/community', 'CommunityController::display', 'community_home');

// Legal Pages
$router->map('GET', '/legal/cookies', 'LegalController::displayCookies', 'legal_cookies');


function handle404Page()
{
	header($_SERVER['SERVER_PROTOCOL'] . ' 404 Not Found');
	$tpl = Template::create('pages/404.tpl');

	$breadcrumb_el = new BreadcrumbsElement();
	$breadcrumb_el->addCrumb('Home', '/', 'active');
	$tpl->addElement('breadcrumbs', $breadcrumb_el);

	$tpl->display();
}

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
handleRouting($router);