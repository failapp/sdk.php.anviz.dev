<?php
/**
 * Created by Jacobs<jacobs@anviz.com>.
 * Date: 18-5-7
 * Time: 17:05
 * File Name: config.php
 */
$config['db']['dbdriver'] = 'mysqli';
$config['db']['host'] = 'mysql:3306';
$config['db']['dbname'] = 'sdkdemo';
$config['db']['username'] = 'anviz';
$config['db']['password'] = '12345';

$config['logs']['debug'] = true;
$config['logs']['path'] = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'logs';