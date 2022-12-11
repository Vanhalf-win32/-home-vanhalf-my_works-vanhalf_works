<?php

class MatFunctions {
    public $a;
    public $b;
    public $result;

    function Plus() {
        $this->result = $this->a + $this->b;
    }

    function Minus() {
        $this->result = $this->a - $this->b;
    }
    function Multy() {
        $this->result = $this->a * $this->b;
    }
    function Split() {
        $this->result = $this->a / $this->b;
    }

}

$foo = new MatFunctions();

$matFunction = readline('Insert function (+-*/) : ');

    if (!empty($matFunction)) {
            if ($matFunction === '+') {
                $foo->a = readline('Insert - a : ');
                $foo->b = readline('Insert - b : ');
                $foo->Plus();
            } 
            if ($matFunction === '-'){
                $foo->a = readline('Insert - a : ');
                $foo->b = readline('Insert - b : ');
                $foo->Minus();
            }
            if ($matFunction === '*'){
                $foo->a = readline('Insert - a : ');
                $foo->b = readline('Insert - b : ');
                $foo->Multy();
            }
            if ($matFunction === '/'){
                $foo->a = readline('Insert - a : ');
                $foo->b = readline('Insert - b : ');
                $foo->Split();
            }
            if ($matFunction === 'exit') {
                exit;
            }
    }
        else 
            echo 'insert correct command!' . PHP_EOL;
        


print_r($foo);