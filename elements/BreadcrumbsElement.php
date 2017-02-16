<?php

class BreadcrumbsElement extends Element
{
	private $crumbs = array();

	public function __construct()
	{
		$this->crumbs = array();
	}
	public function addCrumb($text, $link, $css_class = null)
	{
		$crumb = array();
		$crumb['text'] = $text;
		$crumb['link'] = $link;
		$crumb['css_class'] = $css_class;
		$this->crumbs[] = $crumb;
	}
	public function getCrumbs()
	{
		return $this->crumbs;
	}
	public function getString()
	{
		$tpl = Template::create('elements/breadcrumbs_element.tpl');
		$tpl->assign('crumbs', $this->getCrumbs());
		return $tpl->getString();
	}
}