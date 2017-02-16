<?php

class EventsTableElement extends Element
{
	const MAX_NEXT_EVENTS = 3;
	private $events = array();

	public function __construct()
	{
		$events = EventsFetcher::getEvents();
		$events = EventsFetcher::sortByTimestamp($events);
		foreach ($events as $event)
		{
			$this->events[] = $event->toArray();
		}
	}
	public function getEvents()
	{
		return $this->events;
	}
	public function getNextEvents()
	{
		$next_events = array();
		$counter = 0;
		foreach($this->events as $event)
		{
			$counter++;
			$next_events[] = $event;
			if ($counter >= self::MAX_NEXT_EVENTS)
			{
				break;
			}
		}
		return $next_events;
	}
	public function getString()
	{
		$tpl = Template::create('elements/events_table_element.tpl');
		$tpl->assign('next_events', $this->getNextEvents());
		$tpl->assign('events', $this->getEvents());
		return $tpl->getString();
	}
}