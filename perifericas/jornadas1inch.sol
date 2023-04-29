// SPDX-License-Identifier: MIT
pragma solidity 0.5.0;


/// @title Projeto Jornadas
/// @author Rafaella Rodrigues da S Manfrenatti
/// @notice conection and inclued 1inch
/// @dev conection and inclued 1inch



// Importa o contrato IOneSplit para acessar as funcionalidades da 1inch
import "https://github.com/1inch/1inchProtocol/blob/master/contracts/IOneSplit.sol";

contract Jornadas {
    // Declara uma variável privada para armazenar a carteira da 1inch
    address private oneSplit;

    // Define o endereço da carteira da 1inch no construtor do contrato
    constructor(address _oneSplit) {
        oneSplit = _oneSplit;
    }

    // Cria uma função para executar uma troca na 1inch
    function trocarToken(address _tokenDeEntrada, address _tokenDeSaida, uint256 _valorDeEntrada, uint256 _valorDeSaidaMinimo) external {
        // Cria um array com os endereços dos tokens de entrada e saída
        address[] memory tokens = new address[](2);
        tokens[0] = _tokenDeEntrada;
        tokens[1] = _tokenDeSaida;

        // Cria um array com os valores de entrada e saída mínimos
        uint256[] memory valoresMinimos = new uint256[](2);
        valoresMinimos[0] = _valorDeEntrada;
        valoresMinimos[1] = _valorDeSaidaMinimo;

        // Chama a função de troca da 1inch, passando os parâmetros necessários
        IOneSplit oneSplitContract = IOneSplit(oneSplit);
        oneSplitContract.swap(tokens[0], tokens[1], _valorDeEntrada, _valorDeSaidaMinimo, tokens, valoresMinimos, 0);
    }
}
