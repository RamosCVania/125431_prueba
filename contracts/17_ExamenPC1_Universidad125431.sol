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

    constructor() {
        console.log("Ejecutado por: 125431 - Vania Melissa Ramos Cotrina");
    }
}