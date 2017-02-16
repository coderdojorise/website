<?php

class GitHubAPI
{
	const BASE_URI = 'https://api.github.com/';

	const CACHE_VERSION = '16FEB_v1';

	private static $instance = null;
	private $guzzle_client = null;
	private $default_headers = array();

	private function __construct()
	{
		$this->guzzle_client = new GuzzleHttp\Client(['base_uri' => self::BASE_URI]);
		$this->default_headers = ['User-Agent', 'coderdojo-london'];
	}

	public static function get()
	{
		if (is_null(self::$instance))
		{
			self::$instance = new self();
		}
		return self::$instance;
	}

	public function getDefaultHeaders()
	{
		return $this->default_headers;
	}

	public function getUserRepos($username)
	{
		$cache_key = 'gh_repos' . self::CACHE_VERSION . $username;
		$repos = TempCache::get($cache_key);
		if (!is_null($repos))
		{
			return $repos;
		}
		$repos = array();
		try
		{
			$uri = self::BASE_URI . 'users/' . $username . '/repos';

			$query = ['client_id' => GITHUB_CLIENT_ID, 'client_secret' => GITHUB_CLIENT_SECRET, 'sort' => 'updated'];

			$headers = $this->getDefaultHeaders();

			$response = $this->guzzle_client->get($uri, ['headers' => $headers, 'query' => $query]);
			$body = (string) $response->getBody();
			$json_data = json_decode($body);

			foreach ($json_data as $object)
			{
				$cur_repo = array();
				$cur_repo['name'] = $object->name;
				$cur_repo['full_name'] = $object->full_name;
				$cur_repo['owner'] = $object->owner->login;
				$cur_repo['repo_url'] = $object->html_url;
				$cur_repo['description'] = $object->description;
				$cur_repo['stars'] = $object->stargazers_count;
				$cur_repo['watchers'] = $object->watchers_count;
				$cur_repo['language'] = $object->language;
				$repos[] = $cur_repo;
			}
		}
		catch (Exception $e){}

		TempCache::put($cache_key, $repos, TempCache::TIME_HALF_HOUR);
		return $repos;
	}

	public function getFileContents($owner, $repo, $path)
	{
		$cache_key = 'gh_filec' . self::CACHE_VERSION . $owner . $repo . $path;
		$file_info = TempCache::get($cache_key);
		if (!is_null($file_info))
		{
			return $file_info;
		}
		try
		{
			$uri = self::BASE_URI . 'repos/' . $owner . '/' . $repo . '/contents/' . $path;

			$query = ['client_id' => GITHUB_CLIENT_ID, 'client_secret' => GITHUB_CLIENT_SECRET];

			$headers = $this->getDefaultHeaders();

			$response = $this->guzzle_client->get($uri, ['headers' => $headers, 'query' => $query]);
			$body = (string) $response->getBody();
			$json_data = json_decode($body);

			$file_info = array();
			foreach ($json_data as $key => $value)
			{

				$file_info[$key] = $value;
			}
		}
		catch (Exception $e){}
		TempCache::put($cache_key, $file_info, TempCache::TIME_HALF_HOUR);
		return $file_info;
	}
}