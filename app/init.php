<?php

// Enable (1) Disable (0) development mode
define('DEV_MODE', 1); 
if (DEV_MODE)
{
	ini_set('display_errors', DEV_MODE);
	ini_set('display_startup_errors', DEV_MODE);
	error_reporting(E_ALL);
}

// Start the session
session_start();

// API KEYS CONFIG FILE
require_once $_SERVER['DOCUMENT_ROOT'] . '/../../config/api_keys.php';

// Composer autoloader
require_once $_SERVER['DOCUMENT_ROOT'] . '/../vendor/autoload.php';

// Autoload classes
spl_autoload_register(function ($class_name)
{
	$file_name = $_SERVER['DOCUMENT_ROOT'] . '/../classes/' . $class_name . '.php';
	if (file_exists($file_name))
	{
		require_once $file_name;
	}
	else
	{
		// Not a class? Maybe it's an element
		$file_name = $_SERVER['DOCUMENT_ROOT'] . '/../elements/' . $class_name . '.php';
		if (file_exists($file_name))
		{
			require_once $file_name;
		}
	}
});