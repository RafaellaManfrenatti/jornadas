// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


/// @title Projeto Jornadas
/// @author Rafaella Rodrigues da S Manfrenatti
/// @notice Information and database
/// @dev Description and data storage



    contract Jornadas {
    struct Projeto {
        uint id;
        string nome;
        string descricao;
        uint dataInicio;
        uint dataFim;
    }
    
    mapping (uint => Projeto) projetos;
    uint public projetosCount;

    function adicionarProjeto(string memory _nome, string memory _descricao, uint _dataInicio, uint _dataFim) public {
        projetos[projetosCount] = Projeto(projetosCount, _nome, _descricao, _dataInicio, _dataFim);
        projetosCount++;
    }

    function obterProjeto(uint _id) public view returns (string memory, string memory, uint, uint) {
        Projeto memory p = projetos[_id];
        return (p.nome, p.descricao, p.dataInicio, p.dataFim);
    }
    function atualizarProjeto(uint _id, string memory _nome, string memory _descricao, uint _dataInicio, uint _dataFim) public  {
        
        require(projetos[_id].id != 0, "Projeto nao encontrado");
        require(bytes(_nome).length > 0, "O nome do projeto e obrigatorio");
        require(bytes(_descricao).length > 0, "A descricao do projeto e obrigatoria");
        require(_dataFim > _dataInicio, "A data de termino deve ser posterior a data de inicio");

        Projeto storage p = projetos[_id];
        p.nome = _nome;
        p.descricao = _descricao;
        p.dataInicio = _dataInicio;
        p.dataFim = _dataFim;
    }

    function excluirProjeto(uint _id) public  {
        require(projetos[_id].id != 0, "Projeto nao encontrado");
        delete projetos[_id];
    }
}

    
