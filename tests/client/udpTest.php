<?php

require __DIR__ . '/../public.php';

$client = new \Zoco\Client\UDP();
if ($client->connect('127.0.0.1', 80, 0.5, false)) {
    $client->send("GET / HTTP/1.1\r\n\r\n");
    echo $client->recv();
} else {
    echo $client->errMsg;
    echo $client->errCode;
}