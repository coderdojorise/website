<?php

class Request
{
	public static function getGetVariable($key)
	{
		if (isset($_GET[$key]))
		{
			return $_GET[$key];
		}
		return null;
	}
}