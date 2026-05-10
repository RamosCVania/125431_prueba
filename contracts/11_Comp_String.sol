// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Complejo {

    string private saludo = "Hola";

    // Cambia completamente el texto
    function cambiarSaludo(string memory texto) public {
        saludo = texto;
    }

    // Devuelve el saludo actual
    function saludar() public view returns(string memory){
        return saludo;
    }

    // Concatena texto al saludo existente
    function concatSaludo(string memory texto) public {
        saludo = string.concat(saludo, texto);
    }

    function saludarNombre(string memory texto) public view returns (string memory) {
        return string.concat(saludo, texto);
        //return string(abi.encodePacked(saludo, texto)); //cualquiera de los dos funciona
    }

    //Pedro, Betty, Pablo
     function saludarTodos(string[] memory nombres) public view returns(string memory){
        string memory resultado = "";
        for (uint i = 0; i < nombres.length; i++) {
            resultado = string.concat(resultado, saludo, nombres[i]);
            if (i < nombres.length - 1) {
                resultado = string.concat(resultado, ", ");
            } else {
                resultado = string.concat(resultado, ".");
            }
        }
        return resultado; //Hola Pedro, Hola Betty, Hola Pablo.
        }
        //lo llamo: ["Pedro", "Betty", "Pablo"]
}