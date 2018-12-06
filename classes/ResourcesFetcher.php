<?php

class ResourcesFetcher
{
	private static $github_api = null;
	private $available_categories = null;
	private function __construct()
	{
		// Get the resources index file
		$file = self::get_github_api()->getFileContents('coderdojorise', 'resources', 'index.json');
		$file_contents = file_get_contents($file['download_url']);
		$file_json = json_decode($file_contents);
		$this->available_categories = $file_json->categories;
	}
	public static function init()
	{
		$instance = new self();
		return $instance;
	}
	private function get_github_api()
	{
		if (is_null(self::$github_api))
		{
			self::$github_api = GitHubAPI::get();
		}
		return self::$github_api;
	}
	public function getFor($type)
	{
		$results = array();
		if (in_array($type, $this->available_categories))
		{
			$path = $type . '/index.json';
			$file = self::get_github_api()->getFileContents('coderdojorise', 'resources', $path);
			$file_contents = file_get_contents($file['download_url']);
			$file_json = json_decode($file_contents);
			$resources = $file_json->resources;
			foreach ($resources as $res)
			{
				$cur_result = array();
				foreach ($res as $key => $value)
				{
					$cur_result[$key] = $value;
				}
				$results[] = $cur_result;
			}
		}
		return $results;
	}
}