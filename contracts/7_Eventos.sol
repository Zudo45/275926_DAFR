// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Eventos {
    uint256 private cantidad = 20;
    
    //declarar un evento
    event CambioValorCantidad(address invocador, uint256 valorAntiguo, uint256 nuevoValor);
    
    //Probar con cuenta 5
    function cambiarCantidad(uint256 _cantidad) public {
        //emitir mi evento
        emit CambioValorCantidad(msg.sender, cantidad, _cantidad);
        cantidad = _cantidad;

    }

    function obtenerCantidad() public view returns(uint256) {
        return cantidad;
    }
}