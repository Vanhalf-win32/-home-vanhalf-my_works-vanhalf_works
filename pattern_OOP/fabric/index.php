<?php

/*Фабричный - паттерн который определяет интерфейс в супер классе,
позволяя подклассам изменять тип создаваемых обьектов. */

include("interface.php");
include("CellPhone.php");
include("SmartPhone.php");
include("PhoneFactory.php");

$factory = new PhoneFactory();
$cellPhone = $factory->createCellPhone();
$smartPhone = $factory->createSmartPhone(); 

$cellPhone->call();
echo PHP_EOL;
$smartPhone->call();
echo PHP_EOL;