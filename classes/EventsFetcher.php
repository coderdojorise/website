<?php

/**
 * Class EventsFetcher
 */
class EventsFetcher
{
	/**
	 * @var GitHubAPI|null
	 */
	private static $github_api = null;

	/**
	 * @var Event[]
	 */
	private $events = array();

	/**
	 * EventsFetcher constructor.
	 */
	private function __construct()
	{
		$file = self::get_github_api()->getFileContents('coderdojo-london', 'events', 'events.json');
		$file_contents = file_get_contents($file['download_url']);
		$file_json = json_decode($file_contents);
		$events_json = $file_json->events;

		foreach ($events_json as $json)
		{
			$cur_event = Event::createByJSON($json);
			// Only display events in the past for up to 5 hours
			if (($cur_event->getTimestamp() + 18000) > time())
			{
				$this->events[] = $cur_event;
			}
		}
	}

	/**
	 * @return Event[]
	 */
	private function get_events()
	{
		return $this->events;
	}

	/**
	 * @return Event[]
	 */
	public static function getEvents()
	{
		$instance = new self();
		return $instance->get_events();
	}

	/**
	 * @return GitHubAPI
	 */
	private function get_github_api()
	{
		if (is_null(self::$github_api))
		{
			self::$github_api = GitHubAPI::get();
		}
		return self::$github_api;
	}

	/**
	 * @param Event[] $events
	 * @return Event[]
	 */
	public static function sortByTimestamp($events)
	{
		usort($events, function ($a, $b)
		{
			if ($a->getTimestamp() == $b->getTimestamp())
			{
				return 0;
			}
			else if ($a->getTimestamp() > $b->getTimestamp())
			{
				return 1;
			}
			else
			{
				return -1;
			}
		});
		return $events;
	}
}