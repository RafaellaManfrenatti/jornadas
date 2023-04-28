<?php
require_once 'head.php';
require_once 'menu.php';
?>


<div class="container-fluid">
<div class="row text-center">
    <div class="col-md-12">
    
    
    <div class="col-md-12  text-secondary">
    <h2>Cadastre sua denúncia anonimamente em nossa plataforma abaixo:</h2>
    </div>  

    <form>
  <div class="form-group">
    <label for="exampleFormControlInput1">Você deseja se identificar?</label>
    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Sua identificação ficará em sigilo">
  </div>
  
  
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Escreva sua denúncia aqui</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>

    <button type="submit" class="btn btn-primary">Enviar</button>
  </div>
</form>
   

</div>
</div>
</div>

    





















<?php
require_once 'footer.php';
?>