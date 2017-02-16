<?php

// Class used to represent a Mentor
class Mentor
{
	private $id = null;
	private $json = null;

	private function __construct($mentor_id)
	{
		$this->id = $mentor_id;
	}

	public static function getByJSON($json)
	{
		$instance = new self($json->id);
		$instance->json = $json;
		return $instance;
	}
}