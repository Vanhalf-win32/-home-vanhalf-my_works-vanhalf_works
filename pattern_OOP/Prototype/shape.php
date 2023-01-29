<?php

class Shape {
    private $name;
    private $color;


    public function __clone()
    {
        echo "I clone!";
    }

    public function setName($name) 
    {
        $this->name = $name;

    }

    public function setColor($color) 
    {
        $this->color = $color;
    }
}