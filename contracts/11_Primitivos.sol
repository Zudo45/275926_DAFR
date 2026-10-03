// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Primitivos {
    bool public pausado;  
    bytes32 public saludo = hex"686F6C61";
    address public direccion = 0x5B;
    //bytes32 private trabajo = hex"6886b17cfed9dcda6684122fd227db0ef140f9bfc4e3468e5844b1c30cb8f07a"; //trabajo de blockh

    function pausar(bool _pausado) public {
        pausado = _pausado;
    }  

    function operar() public view  {
        require(pausado == false, "El contrato esta pausad");
        console.log("Aqui va toda a logica de la funcion opera");
    }

    function devolverSaludo() public view returns (bytes32) {
        return saludo;
    }

    function validarTrabajo(string memory _trabajo) public view {
        bytes32 cadenaTemp = keccak256(abi.encodePacked(_trabajo));
        require(cadenaTemp == _trabajo, "no es el mismo trabajo"); 
        console.log("Ejecucion de boque por trabajo correcto");
    }

     function compararCadenas(bytes32 _textoHex) public pure {
        require (_textoHex == keccak256(abi.encodePacked("trabajo de blockchain")), "no es el mismo trabajo"); 
        console.log("Ejecucion de bloque por trabajo correcto");
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }

}