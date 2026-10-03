// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";
contract Consola {
    uint256 private cantidad = 30;
    
    constructor (uint256 _cantidad) {
        cantidad = _cantidad;
        console.log("Desployado por: ", msg.sender);
    }
    
    function obtenerCantidad() public view returns(uint256) {
        console.log("Invocado por: ", msg.sender);
        return cantidad;
    }
}