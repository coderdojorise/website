<?php

class Event
{
	private $name, $date, $timestamp, $location,
		$type, $details_link, $tickets_link = null;

	public static function createByJSON($json)
	{
		$instance = new self();
		// Name
		$instance->name = $json->name;
		// Timestamp
		$date_time = DateTime::createFromFormat('d-m-Y H:i', $json->date);
		$date_time->setTimezone(new DateTimeZone('UTC'));
		$instance->date = $json->date;
		$instance->timestamp = $date_time->getTimestamp();
		// Location
		$instance->location = $json->location;
		// Type
		$instance->type = $json->type;
		// Details Link
		$instance->details_link = $json->details_link;
		// Tickets Link
		$instance->tickets_link = $json->tickets_link;		
		return $instance;
	}
	public function getName()
	{
		return $this->name;
	}
	public function getTimestamp()
	{
		return $this->timestamp;
	}
	public function getLocation()
	{
		return $this->location;
	}
	public function getType()
	{
		return $this->type;
	}
	public function getDetailsLink()
	{
		return $this->details_link;
	}
	public function getTicketsLink()
	{
		return $this->tickets_link;
	}
	public function toArray()
	{
		$as_array = array();
		$as_array['name'] = $this->getName();
		$as_array['timestamp'] = $this->getTimestamp();
		$as_array['location'] = $this->getLocation();
		$as_array['type'] = $this->getType();
		$as_array['details_link'] = $this->getDetailsLink();
		$as_array['tickets_link'] = $this->getTicketsLink();
		return $as_array;
	}
}