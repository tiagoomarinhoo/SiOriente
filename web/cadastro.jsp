<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SIOriente</title>
    
    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />

    <!-- Login css  -->
    <link href="assets/css/l.css" rel="stylesheet"  />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />


    <!-- CSS Files -->
    <link href="assets/css/demo.css" rel="stylesheet">
    <link href="assets/css/stepsForm.css" rel="stylesheet">

    <!-- JS Files -->
    <script src="assets/js/jquery-2.1.1.min.js"></script>
    <script src="assets/js/stepsForm.js"></script>

</head>
<body>
	
       <%if (request.getAttribute("result") != null) {%>
        <script>

            alert("Erro favor revisar os dados!");

        </script>
        <%}%>

    <div class="container">

        <nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse mb-4">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="login.jsp">SiOriente</a>
                </div>

            </nav>  
            
            <div class="container-fluid">

               <div class="container-top">
                   <h2>Cadastro</h2>

                   <hr>


               </div>

               <div style="padding: 30px" class="card">

                  <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/UserRegister">
<fieldset>

<!-- Form Name -->
<legend>Cadastro do Usuario:</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="idNome">Nome</label>  
  <div class="col-md-5">
  <input id="idNome" name="name" type="text" placeholder="Nome" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="idNome">Telefone</label>  
  <div class="col-md-5">
  <input id="idNome" name="phone" type="text" placeholder="Telefone" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="idNome">CPF</label>  
  <div class="col-md-5">
  <input type="text" name="registernumber" class="form-control" placeholder="CPF ___.___.___-__" data-required="true">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="idNome">Estado</label>  
  <div class="col-md-5">
  <label class="sf-select"  >
                               <select name="state" class="form-control" data-required="true">
                                   <option value="" selected="selected" >Selecione seu estado</option>

                                   <option value="PE">Pernambuco</option>
                                   <option value="SP">São Paulo</option>
                                   <option value="MG">Minas Gerais</option>
                                   <option value="RJ">Rio de Janeiro</option>
                                   <option value="AC">Acre</option>
                                   <option value="AL">Alagoas</option>
                                   <option value="AP">Amapá</option>
                                   <option value="AM">Amazonas </option>
                                   <option value="BA">Bahia</option>
                                   <option value="CE">Ceara</option>
                                   <option value="DF">Distrito Federal</option>
                                   <option value="ES">Espiritorito Santo</option>
                                   <option value="GO">Goias</option>
                                   <option value="MA">Maranhão</option>
                                   <option value="MT">Mato Grosso</option>
                                   <option value="MS">Mato Grosso do Sul</option>
                                   <option value="PA">Pará</option>
                                   <option value="RN">Rio Grande do Norte</option>
                                   <option value="PB">Paraiba</option>
                                   <option value="PR">Parana</option>
                                   <option value="RS">Rio Grande do Sul</option>
                                   <option value="RO">Rondonia</option>
                                   <option value="RR">Roraima </option>
                                   <option value="SC">Santa Catarina   </option>
                                   <option value="SE">Sergipe</option>
                                   <option value="TO">Tocantins</option>


                               </select>
                               <span></span>
                           </label>
    
  </div>
</div>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="idDepto">Genero</label>  
  <div class="col-md-5">
 <div class="sf-radio">
                           
                           <label><input type="radio" value="M" name="gender"  data-required="true"><span></span> Masculino </label>
                           <label><input type="radio" value="F" name="gender"  data-required="true"><span></span> Feminino </label>
                       </div>
    
  </div>
</div>



<div class="form-group">
  <label class="col-md-4 control-label" for="idUsuario">Cidade</label>  
  <div class="col-md-5">
  <input type="text" name="city" placeholder="Cidade"  class="form-control" data-required="true">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="idUsuario">Bairro</label>  
  <div class="col-md-5">
  <input type="text" name="country" placeholder="Bairro" class="form-control" data-required="true">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="idUsuario">CEP</label>  
  <div class="col-md-5">
 <input type="text" name="zipcode" placeholder="Cep _____-___"  class="form-control" data-required="true">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="idUsuario">Email</label>  
  <div class="col-md-5">
  <input type="text" placeholder="Email" name="email" class="form-control" data-required="true" data-email="true">
    
  </div>
</div>



<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="idSenha">Senha</label>
  <div class="col-md-5">
    <input type="password" placeholder="Senha" name="senha" class="form-control" data-required="true" data-confirm="true">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="idSenha">Repetir Senha</label>
  <div class="col-md-5">
    <input type="password" placeholder="Confirmar Senha" name="resenha" class="form-control" data-required="true" data-confirm="true">
    
  </div>
</div>


<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="idConfirmar"></label>
  <div class="col-md-8">
    <button id="idConfirmar" name="idConfirmar" class="btn btn-primary">confirmar</button>
    
  </div>
</div>

</fieldset>
</form>

<div class="footer">

</div>

</div>


</body>
</html>