<?php

require_once $_SERVER['DOCUMENT_ROOT'] . '../../app/init.php';

$api_result = new APIResult();

$response = array();
$response['status'] = 'fail';

if ($_GET)
{
	$method = Request::getGetVariable('method');
	switch ($method)
	{
		case 'res':
			$type = Request::getGetVariable('type');
			$res_fetcher = ResourcesFetcher::init();
			$results = $res_fetcher->getFor($type);
			$response['results'] = $results;
			$response['status'] = 'success';
			break;
		case 'sub':
			$valid_lists = array('main', 'mentors');
			$list = Request::getGetVariable('list');
			if (in_array($list, $valid_lists))
			{
				$email = Request::getGetVariable('email');
				$list_id = MailChimpAPI::LIST_ID_MAIN;
				if ($list === 'mentors')
				{
					$list_id = MailChimpAPI::LIST_ID_MENTORS;
				}
				$api = MailChimpAPI::get();
				$res = $api->subscribeToList($email, $list_id);
				$status = $res['status'];
				$response['status'] = 'success';
				if ($status === 400)
				{
					$res_title = $res['title'];
					switch ($res_title)
					{
						case 'Member Exists':
							$response['code'] = 202;
							$response['message'] = 'Already subscribed!';
							break;
						case 'Invalid Resource':
							$response['code'] = 503;
							$response['message'] = 'Invalid email address';
							break;
						default:
							$response['code'] = 501;
							$response['message'] = $title;
							break;
					}					
				}
				else if ($status === 'subscribed')
				{
					$response['code'] = 201;
					$response['message'] = 'Successfully subscribed!';
				}
				else
				{
					$response['code'] = 501;
					$response['message'] = 'Failed to subscribe! Status: ' . $status;
				}
			}
			break;
	}
}

$api_result->setResult($response);
$api_result->displayResult();