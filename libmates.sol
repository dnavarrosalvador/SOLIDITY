// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1.0;

library Mates {
    function sumar(int _a,int _b) internal pure returns(int) {
        return (_a + _b);
    }

    function restar(int _a,int _b) internal pure returns(int) {
        return (_a - _b);
    }

    function multiplicar(int _a,int _b) internal pure returns(int) {
        return (_a * _b);
    }

    function dividir(int _a,int _b) internal pure returns(int) {
        return (_a / _b);
    }

    function factoriales(uint _a) internal pure returns(uint){
        if (_a <= 1){
            return 1;
        }
        else{
            return (_a * factoriales(_a-1));
        }
    }

    function absoluto(int _a) internal pure returns(uint) {
        if (_a > 0){
            return(uint(_a));
        }
        else{
            return(uint(-_a));
        }
    }

    function pow2(int _a) internal pure returns(uint) {
        return uint(_a * _a);
    }

    function sqrt(int128 x) internal pure returns(int128){
        require ( x>=0 );
        return int128(sqrtUnsigned(uint256(int256(x))));
    }

    function sqrtUnsigned (uint256 x) internal pure returns(uint128) {
        require (x >= 0);
        if (x == 0) return 0;
        else {
            uint256 r = 1;
            // aplicamos algoritmo metodo babilonio en 5 iteraciones
            r = (r+x/r)/2;
            r = (r+x/r)/2;
            r = (r+x/r)/2;
            r = (r+x/r)/2;
            r = (r+x/r)/2;
            uint256 r1 = x/r;
            if (r < r1) return uint128(r);
            else{ 
                return uint128(r1);
            }
        }      
    }
}