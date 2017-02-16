<?php

abstract class Element
{
	public function getString()
	{
		throw new Exception('toString needs to be implemented!');
	}
}