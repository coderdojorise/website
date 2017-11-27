<?php

class HomeController extends Controller
{
	public static function display()
	{
		// Force redirect to coderdojo.com
		Request::redirect('https://coderdojo.com');
	}
}