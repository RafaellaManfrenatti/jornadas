<?php
require_once 'head.php';
require_once 'menu.php';
?>


<div class="container-fluid">
<div class="row text-center">
    <div class="col-md-12">
    
    
    <div class="col-md-12  text-secondary">
    <h2>Cadastre-se em nossa plataforma abaixo:</h2>
    </div>  
   
</div>
</div>
</div>

    


<form>
  <div class="form-row">
    <div class="col"><label> Nome </label>
      <input type="text" class="form-control" placeholder="Nome">
    </div>
    <div class="col"><label> Sobrenome</label>
      <input type="text" class="form-control" placeholder="Sobrenome">
    </div>
  </div>
</form>

<form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Senha</label>
      <input type="password" class="form-control" id="inputPassword4" placeholder="Senha">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Endereço</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Rua dos Bobos, nº 0">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Endereço 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartamento, hotel, casa, etc.">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Cidade</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputEstado">Estado</label>
      <select id="inputEstado" class="form-control">
        <option selected>Escolher...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputCEP">CEP</label>
      <input type="text" class="form-control" id="inputCEP">
    </div>
  </div>
  


  
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Aceito termos de condição e de uso.
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Enviar</button>
</form>


















<?php
require_once 'footer.php';
?>