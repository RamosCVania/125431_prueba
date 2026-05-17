// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Universidad125431 {

    struct Alumno {
        uint id;
        string nombre;
        uint ciclo;
    }

    Alumno[] public alumnos;

    address public dirContrato125431;

    constructor() {
        console.log("Ejecutado por: 125431 - Vania Melissa Ramos Cotrina");
        dirContrato125431 = address(this);
    }

    function agregarElemento125431(
        uint _id,
        string memory _nombre,
        uint _ciclo
    ) public {

        alumnos.push(
            Alumno(_id, _nombre, _ciclo)
        );
    }

    function contarElementos125431() public view returns(uint) {
        console.log("Ejecutado por: 125431 - Vania Melissa Ramos Cotrina");
        return alumnos.length;
    }

}