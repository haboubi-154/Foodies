<?php
$servername = 'localhost';
$username = 'Amine';
$password = '0001201';
$dbname = 'foodies';
try
{
    $pdo = new PDO
    (
        "mysql:host=$servername;dbname=$dbname", $username, $password,
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]
    );

}

catch(PDOException $e)
{
    echo "DataBase connexion failed !!". $e->getMessage();
}

?>