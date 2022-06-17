// SPDX-License-Identifier: GPL-3.0
        
pragma solidity >=0.4.22 <0.9.0;

// This import is automatically injected by Remix
import "remix_tests.sol"; 

import "./calculadora.sol";

// File name has to end with '_test.sol', this file can contain more than one testSuite contracts
contract TestCalc {

    Calculadora calc;
    /// 'beforeAll' runs before all other tests
    /// More special functions are: 'beforeEach', 'beforeAll', 'afterEach' & 'afterAll'
    function beforeAll() public {
        // <instantiate contract>
        calc = new Calculadora();
    }

    function checkSuccess() public {
        // Use 'Assert' methods: https://remix-ide.readthedocs.io/en/latest/assert_library.html
        Assert.equal(calc.suma(9,3),12,  "suma should be 12");
        Assert.equal(calc.resta(9,3),6, "resta should be 6");
        Assert.equal(calc.multiplicacion(9,3),27, "multiplicacion should be 27");
        Assert.equal(calc.division(9,3),3, "division should be 3");
        Assert.equal(calc.factorial(3),6, "factorial should be 6");
        Assert.equal(calc.valorAbsoluto(-3),3, "valorAbsoluto should be 3");
        Assert.equal(calc.cuadrado(3),9, "cuadrado should be 9");
        Assert.equal(calc.raizCuadrada(9),3, "raizCuadrada should be 3");
        //Assert.greaterThan(uint(2), uint(1), "2 should be greater than to 1");
        //Assert.lesserThan(uint(2), uint(3), "2 should be lesser than to 3");
    }
}
    