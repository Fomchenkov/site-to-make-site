<?php

include_once 'src/Parser.php';

$parts = [
	"HEAD",
	"HEADER",
	"MENU",
	"OFFERS",
	"FOOTER"
];

$prs = new Parser("parts/", ".tpl", $parts);
$prs->parse();
