<?php

class DataHandler
{
	private static $instance = null;
	private $data_dir = null;

	private function __construct()
	{
		$this->data_dir = $_SERVER['DOCUMENT_ROOT'] . '/../data/';
	}

	public static function get()
	{
		if (is_null(self::$instance))
		{
			self::$instance = new self();
		}
		return self::$instance;
	}

	public function getDojos()
	{
		$dojos_dir = $this->data_dir . 'dojos/';
		$index_file = file_get_contents($dojos_dir . '__index.json');
		$index = json_decode($index_file);
		$dojo_ids = $index->dojos;
		$dojos = array();
		foreach ($dojo_ids as $dojo_id)
		{
			$dojo_file = file_get_contents($dojos_dir . $dojo_id . '.json');
			$dojo_json = json_decode($dojo_file);
			$dojos[] = Dojo::getByJSON($dojo_json);
		}
		return $dojos;
	}

	public function getMentors()
	{
		$mentors_dir = $this->data_dir . 'mentors/';
		$index_file = file_get_contents($mentors_dir . '__index.json');
		$index = json_decode($index_file);
		$mentor_ids = $index->mentors;
		$mentors = array();
		foreach ($mentor_ids as $mentor_id)
		{
			$mentor_file = file_get_contents($mentors_dir . $mentor_id . '.json');
			$mentor_json = json_decode($mentor_file);
			$mentors[] = Mentor::getByJSON($mentor_json);
		}
		return $mentors;
	}
}