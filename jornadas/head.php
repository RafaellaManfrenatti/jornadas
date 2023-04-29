<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  
    <link rel="stylesheet" href="style.css">
   
 <!--Conexao com Wallet da Polygon id-->

    <script src="https://cdn.jsdelivr.net/npm/web3@1.4.0/dist/web3.min.js"></script>


    <script>
async function connectWallet() {
  if (typeof window.ethereum !== 'undefined') {
    // Solicita ao usuário que autorize a conexão da carteira
    const accounts = await window.ethereum.request({ method: 'eth_requestAccounts' });

    // Cria uma instância da classe Web3 para interagir com a carteira
    const web3 = new Web3(window.ethereum);

    // Conecta a carteira à Polygon
    await window.ethereum.request({ method: 'wallet_addEthereumChain', params: [{
      chainId: '0x89', // ID da Polygon
      rpcUrls: ['https://rpc-mainnet.matic.network'], // URL do RPC da Polygon
      chainName: 'Matic Mainnet',
      nativeCurrency: {
        name: 'MATIC',
        symbol: 'MATIC',
        decimals: 18
      }
    }]});

    // Realiza transações na rede Polygon com a carteira conectada
    // ...
  } else {
    alert('Install Metamask or other compatible wallet to connect!');
  }
}
</script>
  


<!--Metamask-->

<script src="https://cdn.jsdelivr.net/npm/@metamask/detect-provider@1.2.0/dist/detect-provider.min.js"></script>
<script>
  async function connect() {
    // Detecta a carteira Metamask
    const provider = await detectEthereumProvider();
    // Verifica se a carteira está conectada
    if (provider) {
      console.log('Carteira Metamask detectada!');
      // Solicita ao usuário que conecte sua carteira
      await provider.request({ method: 'eth_requestAccounts' });
      console.log('Carteira Metamask conectada!');
      // Agora o usuário pode interagir com a carteira
    } else {
      console.log('Carteira Metamask não encontrada');
      alert('Por favor, instale a carteira Metamask em seu navegador para usar esta função');
    }
  }
</script>

<!-- Mensagem-->
    <title>Jornadas</title>
  </head>
  <header>
    <h6 class="welcome"> Seja bem-vindo(a) a sua Jornada!</h6>
  
</header>
  <body>