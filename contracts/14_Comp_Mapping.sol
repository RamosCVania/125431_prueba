// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract CompMapping {

    uint256 secuencial = 100;
    //struct
    struct Empleado{
        string nombre;
        uint edad; //uint o unit256
    }

    struct Cuentas {
        address cuentas;
        uint saldo;
    }

    //mapping
    //mapping (uint => uint) public enteros;

    //Tinka
    //1 22
    //2 08
    //3 40
    //clave => valor

    mapping (uint => Empleado) public empleados; //mapping (key => value) public name

    function addEmpleado(uint256 id, string memory _nombre, uint _edad) public {
        empleados[id] = Empleado(_nombre, _edad);
    }

    function addEmpleadoSecuencial(string memory _nombre, uint _edad) public {
        empleados[secuencial] = Empleado(_nombre, _edad);
        secuencial = secuencial + 1;
    }

    //mapping (uint => Empleado) private empleados;
    function getEmpleado(uint _id) public view returns(string memory, uint) //con private
    {
        Empleado memory emp = empleados[_id];
        return (emp.nombre, emp.edad);
    }
}