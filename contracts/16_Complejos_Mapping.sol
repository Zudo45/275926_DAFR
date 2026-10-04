// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract ComplejosMapping {

    struct Alumno {
        uint256 codigo;
        string nombre;
        uint256 edad;
    }

    mapping(uint256 => Alumno) public alumnos;

    mapping(address => uint256) public saldoCuentas;

    function agregarAlumno(uint256 _codigo, string memory _nombre, uint256 _edad) public {
        //alumnos.push(Alumno(_codigo, _nombre, _edad));
        alumnos[_codigo] = Alumno(_codigo, _nombre, _edad);
    }

    function obtenerEmpleado(uint256 _codigo) public view returns(uint256 Codigo, string memory Nombre, uint256 Edad) {
        Alumno memory al = alumnos[_codigo];
        //require(al.codigo != 0, "Alumno no encontrado");
        return(al.codigo, al.nombre, al.edad);
    }

    function asignarmeSoles(uint256 _monto) public {
        saldoCuentas[msg.sender] = _monto;
    }

    function sumarmeSoles(uint256 _monto) public {
        saldoCuentas[msg.sender] = saldoCuentas[msg.sender] + _monto;
    }

}