// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Universidad125431 {

    struct Alumno {
        uint id;
        string nombre;
        uint ciclo;
        bool estado;
    }

    mapping(uint => Alumno) public alumnos;

    address public dirContrato125431;

    uint256 public cantidad125431;

    modifier ejecutarPor125431() {
    console.log("Ejecutado por: 125431 - Vania Melissa Ramos Cotrina");
    _;
    }

    constructor() ejecutarPor125431 {
        dirContrato125431 = address(this);
    }

    function agregarElemento125431(
        uint _id,
        string memory _nombre,
        uint _ciclo
    ) public ejecutarPor125431 {

        require(alumnos[_id].id != _id, "Alumno con ese ID ya existe");

        require(bytes(_nombre).length > 0, "Nombre vacio");

        alumnos[_id] = Alumno(
            _id,
            _nombre,
            _ciclo,
            true
        );

        cantidad125431++;
    }

    function contarElementos125431() public view ejecutarPor125431 returns(uint) {
        return cantidad125431;
    }

    function inactivarElemento125431(uint _id) public ejecutarPor125431
    {
        alumnos[_id].estado = false;
    }

    function pintarElementosActivos125431() public view ejecutarPor125431
    {
        for(uint i = 1; i <= cantidad125431; i++) {

            if(alumnos[i].estado == true) {

                console.log(
                    "Alumno activo:",
                    alumnos[i].id,
                    alumnos[i].nombre
                );
            }
        }
    }

}