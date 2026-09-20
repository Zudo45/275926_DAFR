// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Require {
    uint256 private codigo = 275926;
    address private propietario;

    constructor() {
        propietario = msg.sender;
    }

    function cambiarCodigo(uint256 _codigo) public {
        codigo = _codigo;
    }

    function devolverCodigo() public view returns (uint256) {
        return codigo;
    }
}