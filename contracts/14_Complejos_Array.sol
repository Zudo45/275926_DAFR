// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract ComplejosArray {
    uint256[] public montos; // empiezan en indice 0

    function agregarMonto(uint256 _monto) public {
        montos.push(_monto);
    }

    function getMontos() public view returns(uint256[] memory) {
        return montos;
    }

    function devolverTamanio() public view returns(uint256) {
        return montos.length;
    }

    function saludar(string[] memory _nombres) public pure {
        for (uint i = 0; i < _nombres.length; i++) {
            console.log("Hola: ", _nombres[i]);
        }
    }

    function sumar(uint256[] memory _numeros) public pure returns(uint256) {
        uint256 suma = 0;
        for (uint i = 0; i < _numeros.length; i++) {
            suma += _numeros[i];
        }
        console.log("La suma es:", suma);
        return suma;
    }
}