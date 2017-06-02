<?php

echo "ala ma kota";
phpinfo();

$pdo = new PDO(
    'mysql:host=db;dbname=demoName',
    'demoUser',
    'demoPass'
);

?>