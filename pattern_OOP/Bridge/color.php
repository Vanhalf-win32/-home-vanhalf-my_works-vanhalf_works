<?php

class color {
    public function __construct($type) {
        $this->type = $type;
    }
    public function getType() {
        return $this->type;
    }
};

class BlackColor extends color {
    public function __construct() {
        $color = "Dark-black";
    }
}

class SilverColor extends color {
    public function __construct() {
         $color = "Silver";
    }
}