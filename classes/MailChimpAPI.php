<?php

// https://github.com/drewm/mailchimp-api
use \DrewM\MailChimp\MailChimp as Chimp;

class MailChimpAPI
{
	const BASE_URI = 'https://us11.api.mailchimp.com/3.0/';

	const LIST_ID_MAIN = '48f841493f';
	const LIST_ID_MENTORS = 'eb1ceabccb';

	const CACHE_VERSION = '16FEB_v1';

	private static $instance = null;
	private $mailchimp = null;

	private function __construct()
	{
		$this->chimp = new Chimp(MAILCHIMP_API_KEY);
	}

	public static function get()
	{
		if (is_null(self::$instance))
		{
			self::$instance = new self();
		}
		return self::$instance;
	}

	public function subscribeToList($email, $list_id)
	{
		$uri = 'lists/' . $list_id . '/members';
		$result = $this->chimp->post($uri, [
			'email_address'=> $email,
			'status' =>'subscribed',
			]);
		return $result;
	}
}