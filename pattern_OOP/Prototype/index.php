<?php

/*Прототип - паттерн, который позволяет создавать новые объекты класса
 на основе клонирования одного или нескольких обьектов класса.*/

include("shape.php");

$shape = new Shape();
$shape->setName('Square');
$shape->setColor('red');

$triangle = clone $shape;
$triangle->setName("Triangle");
$triangle->setColor("Blue");

$reactangle = clone $shape;
$reactangle->setName("Reactangle");
$reactangle->setColor("Yellow");

print_r($shape);
print_r($triangle);
print_r($reactangle);