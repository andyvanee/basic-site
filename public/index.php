<?php

require_once '../vendor/autoload.php';

$app = new \Slim\Slim();

$app->get('/', function() use ($app) {
  $app->render('default.php', array('name'=>'World'));
});

$app->get('/:name', function ($name) use ($app) {
  $app->render('default.php', array('name'=>$name));
});

$app->run();
