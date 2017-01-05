<?php

/**
* Вывод страницы по файлам
* @author Фомченков Вячеслав
* @version 03.01.17
*/
class Parser
{
	private $dir;
	private $ext;
	private $templates;

	/**
	* @param $dir - путь к включаемым файлам
	* @param $ext - расширение включаемых файлов
	* @param $templates - массив имен включаемых файлов
	*/
	public function __construct($dir, $ext, $templates)
	{
		$this->dir = $dir;
		$this->ext = $ext;
		$this->templates = $templates;
	}

	/**
	* Вывести сгенерированную страницу на экран
	*/
	public function parse()
	{
		foreach ($this->templates as $file_name) 
		{
			include_once $this->dir . $file_name . $this->ext;
		}
	}
}

// Использование
/*
$prs = new Parser("pages/", ".tpl", $paths);
$prs->parse();
*/
