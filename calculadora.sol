// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1.0;
import "./libmates.sol";

contract Calculadora {
    using Mates for *;


    function suma(int a, int b) public pure returns (int){
            return a.sumar(b);
    }

    function resta(int a, int b) public pure returns (int){
        return a.restar(b);
    }

    function multiplicacion(int a, int b) public pure returns (int){
        return a.multiplicar(b);
    }

    function division(int a,int b) public pure returns (int){
        return a.dividir(b);
    }

    function factorial(uint a) public pure returns (uint){
        return a.factoriales();
    }

    function  valorAbsoluto(int a) public pure returns (uint){
        return a.absoluto();
    }

    function cuadrado(int a) public pure returns (uint){
        return a.pow2();
    }

    function raizCuadrada(int128 a) public pure returns (int){
        return a.sqrt();
    }
}
