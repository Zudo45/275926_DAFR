// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Eventos {

    uint256 private cantidad = 20;

    //declarar un evento
    event CambioValorCantidad(address invocador, uint256 valorAnterior, uint256 nuevoValor);

    function cambiarCantidad(uint256 _cantidad) public {
        uint256 anterior = cantidad;
        cantidad = _cantidad;
        //emitir el evento
        emit CambioValorCantidad(msg.sender, anterior, _cantidad);
    }

    function obtenerCantidad() public view returns (uint256) {
        return cantidad;
    }
}