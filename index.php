<?php

ini_set('display_errors', 1);
error_reporting(E_ALL | E_STRICT);

define('MARKET_ROOT', getcwd());

$portalFilename = MARKET_ROOT . '/app/Portal.php';
$maintenanceFile = 'maintenance.flag';


if (!file_exists($portalFilename)) {
     echo $portalFilename . " was not found";
     exit;
}

if (file_exists($maintenanceFile)) {
     include_once dirname(__FILE__) . 'error/503.php';
     exit;
}

require_once $portalFilename;

umask(0);

require_once('app/Portal.php');

// Portal::run();
Portal::run();
