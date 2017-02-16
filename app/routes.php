<?php

// Routing is done using AltoRouter
// See more: http://altorouter.com/usage/mapping-routes.html
$router = new AltoRouter();

// map($method, $route, $target, $name = null)
$router->map('GET', '/', 'handleHomePage', 'main');

$router->map('GET', '/test', 'handleTestPage', 'test');

$router->map('GET', '/resources', 'handleResourcePage', 'resources_home');

$router->map('GET', '/about-us', 'handleAboutPage', 'about_home');

$router->map('GET', '/supporters', 'handleSupportersPage', 'supporters_home');

$router->map('GET', '/attend-a-dojo', 'handleAttendPage', 'attend_home');

$router->map('GET', '/volunteer', 'handleVolunteerPage', 'volunteer_home');

$router->map('GET', '/news', 'handleNewsPage', 'news_home');

$router->map('GET', '/community', 'handleCommunityPage', 'community_home');

$router->map('GET', '/resources/[:topic]', 'handleResources', 'resources_subject');

$router->map('GET', '/supporters/[:supporter_entity]', 'handleSupporters', 'supporter_company');

$router->map('GET', '/volunteer/assist-a-dojo', 'handleAssistADojo', 'assist_dojo');

$router->map('GET', '/volunteer/create-a-dojo', 'handleCreateADojo', 'create_dojo');

handleRouting($router);