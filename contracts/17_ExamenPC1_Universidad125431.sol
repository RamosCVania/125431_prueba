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

    Alumno[] public alumnos;

    address public dirContrato125431;

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

        for(uint i = 0; i < alumnos.length; i++) {
            require(alumnos[i].id != _id, "Alumno con ese ID ya existe");
        }

        require(bytes(_nombre).length > 0, "Nombre vacio");

        alumnos.push(
            Alumno(_id, _nombre, _ciclo, true)
        );
    }

    function contarElementos125431() public view ejecutarPor125431 returns(uint) {
        return alumnos.length;
    }

    function inactivarElemento125431(uint _posicion)
    public
    ejecutarPor125431
    {
        alumnos[_posicion].estado = false;
    }

    function pintarElementosActivos125431()
    public
    view
    ejecutarPor125431
    {
        for(uint i = 0; i < alumnos.length; i++) {

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