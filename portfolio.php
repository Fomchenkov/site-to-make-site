<?php

include_once 'src/Parser.php';

$parts = [
	"HEAD",
	"HEADER",
	"MENU",
	"PORTFOLIO",
	"FOOTER"
];

$prs = new Parser("parts/", ".tpl", $parts);
$prs->parse();
