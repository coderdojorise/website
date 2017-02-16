<?php

// Class to represent a Dojo
class Dojo
{
	private $id = null;
	private $json = null;

	private function __construct($dojo_id)
	{
		$this->id = $dojo_id;
	}

	public static function getByJSON($json)
	{
		$instance = new self($json->id);
		$instance->json = $json;
		return $instance;
	}
}