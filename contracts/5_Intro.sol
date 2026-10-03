// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Intro {
    uint256 private edad; //por defecto toma el valor de cero

    constructor(uint256 _edad){
        edad = _edad;
    }
    
    function cambiarEdad(uint256 _edad) public {
        edad = _edad;
    }
    
    function devolverEdad() public view returns (uint256) {
        return edad;
    }
    
    function sumar(uint256 _valor1, uint256 _valor2) public pure returns (uint256){
        return _valor1 + _valor2;
    }
}