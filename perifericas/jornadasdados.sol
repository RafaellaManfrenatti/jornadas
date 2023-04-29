// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


/// @title Projeto Jornadas
/// @author Rafaella Rodrigues da S Manfrenatti
/// @notice Information and database
/// @dev Description and data storage

contract Formularios {
    struct Formulario {
        bytes32 nome;
        bytes32 email;
        bytes32 mensagem;
    }

    mapping (uint => Formulario[]) private formularios;
    uint public projetosCount;
    
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Somente o proprietario pode realizar esta operacao");
        _;
    }

    function enviarFormulario(uint _projetoId, bytes32 _nome, bytes32 _email, bytes32 _mensagem) public {
        require(_nome != 0x0, "O nome e obrigatorio");
        require(_email != 0x0, "O e-mail e obrigatorio");
        require(_mensagem != 0x0, "A mensagem e obrigatoria");

        Formulario memory f = Formulario(_nome, _email, _mensagem);
        formularios[_projetoId].push(f);
    }

    function obterFormularios(uint _projetoId) public view returns (Formulario[] memory) {
        require(formularios[_projetoId].length > 0, "Nenhum formulario encontrado");
        return formularios[_projetoId];
    }

    function excluirFormularios(uint _projetoId) public onlyOwner {
        require(formularios[_projetoId].length > 0, "Nenhum formulario encontrado");
        delete formularios[_projetoId];
    }
}