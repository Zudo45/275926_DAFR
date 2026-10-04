// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract ComplejosStruct {

    struct Alumno {
        uint256 codigo;
        string nombre;
    }

    Alumno[] private alumnos;

    function agregarAlumno(uint256 _codigo, string memory _nombre) public {
        alumnos.push(Alumno(_codigo, _nombre));
    }

    //se puede devolver mas de un resultado
    function mostrarAlumno(uint256 _indice) public view returns(uint256, string memory) {
        //return (421528, "Luis");
        return(alumnos[_indice].codigo, alumnos[_indice].nombre);
    }

}