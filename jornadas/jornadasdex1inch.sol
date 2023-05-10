// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


/// @title Projeto Jornadas
/// @author Rafaella Rodrigues da S Manfrenatti
/// @notice conection dex 1inch
/// @dev conection dex 1inch




// Importa o contrato IOneSplit para acessar as funcionalidades da 1inch
import "https://github.com/1inch/1inchProtocol/blob/master/contracts/IOneSplit.sol";

contract Jornadas {
    // Declara uma variável privada para armazenar a carteira da 1inch
    address private oneSplit;

    // Declara uma variável privada para armazenar o endereço do token do projeto Jornadas
    address private jornadasToken;

    // Define os endereços dos tokens de entrada e saída
    address constant ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address constant DAI_ADDRESS = 0x6B175474E89094C44Da98b954EedeAC495271d0F;

    // Define o endereço da carteira da 1inch e do token do projeto Jornadas no construtor do contrato
    constructor(address _oneSplit, address _jornadasToken) {
        oneSplit = _oneSplit;
        jornadasToken = _jornadasToken;
    }

    // Cria uma função para adicionar liquidez do token do projeto Jornadas na DEX da 1inch
    function adicionarLiquidez(uint256 _valorJornadasToken) external payable {
        // Cria um array com os endereços dos tokens de entrada e saída
        address[] memory tokens = new address[](2);
        tokens[0] = jornadasToken;
        tokens[1] = ETH_ADDRESS;

        // Cria um array com os valores de entrada e saída mínimos
        uint256[] memory valoresMinimos = new uint256[](2);
        valoresMinimos[0] = _valorJornadasToken;
        valoresMinimos[1] = 0;

        // Chama a função de troca da 1inch, passando os parâmetros necessários para adicionar liquidez na DEX
        IOneSplit oneSplitContract = IOneSplit(oneSplit);
        oneSplitContract.swap(tokens[0], tokens[1], _valorJornadasToken, 0, tokens, valoresMinimos, 0);

        // Recupera o saldo atualizado do token do projeto Jornadas
        uint256 novoSaldo = IERC20(jornadasToken).balanceOf(address(this));

        // Envia os tokens do projeto Jornadas para a carteira do proprietário do contrato
        IERC20(jornadasToken).transfer(msg.sender, novoSaldo);
    }

    // Cria uma função para remover liquidez do token do projeto Jornadas na DEX da 1inch
    function removerLiquidez(uint256 _valorJornadasToken) external {
        // Aprova a transferência do valor desejado para o contrato da 1inch
        IERC20(jornadasToken).approve(oneSplit, _valorJornadasToken);

        // Cria um array com os endereços dos tokens de entrada e saída
        address[] memory tokens = new address[](2);
        tokens[0] = jornadasToken;
        tokens[1] = ETH_ADDRESS;

        // Cria um array com os valores de entrada e saída mínimos
        uint256[] memory valoresMinimos = new uint256[](2);
        valoresMinimos[
            uint256 constant MIN_ETH_IN = 0.1 ether;
uint256 constant MIN_TOKEN_OUT = 100;]
