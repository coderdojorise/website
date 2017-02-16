<?php

class Template
{
	private $smarty, $file = null;
	private $template_dir, $compile_dir = null;

	private function __construct()
	{
		$this->template_dir = self::get_template_dir();
		$this->compile_dir = self::get_compile_dir();

		$this->smarty = new Smarty();
		$this->smarty->setTemplateDir($this->template_dir);
		$this->smarty->setCompileDir($this->compile_dir);

		// Force templating in dev mode
		if (DEV_MODE)
		{
			$this->smarty->force_compile = true;
			$this->smarty->compile_check = true;
		}
	}
	public static function exists($file)
	{
		$file_location = self::get_template_dir() . $file;
		return file_exists($file_location);
	}
	public static function create($file)
	{
		$template = new Template();
		$template->setFile($file);
		return $template;
	}
	private static function get_template_dir()
	{
		return $_SERVER['DOCUMENT_ROOT'] . '/../templates/';
	}
	private static function get_compile_dir()
	{
		return '/tmp/';
	}
	public function getFile()
	{
		return $this->file;
	}
	public function setFile($file)
	{
		$this->file = $file;
	}

	public function assign($key, $value)
	{
		$this->smarty->assign($key, $value);
	}

	public function display()
	{
		$this->smarty->display($this->getFile());
	}

	public function getString()
	{
		return $this->smarty->fetch($this->getFile());
	}

	public function addElement($element_id, Element $element)
	{
		$this->smarty->assign($element_id, $element->getString());
	}
}