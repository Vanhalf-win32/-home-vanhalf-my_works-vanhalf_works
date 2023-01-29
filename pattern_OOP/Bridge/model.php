<?php

class model {
    public function __construct($color) {
        $this->color = $color;

    }
};

class Audi extends model {
    public function __construct($color) {
        $this->$color;
    }

    public function paint() {
        
    }
}

class BMW extends model {
    public function __construct($color) {
        $this->$color;
    }
    public function paint(){
        
    }
}