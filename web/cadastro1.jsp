<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SiOriente</title>
    
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
                    <a class="navbar-brand" href="index.jsp">SiOriente</a>
                </div>

            </nav>  
            
            <div class="container-fluid">

               <div class="container-top">
                   <h2>Cadastro</h2>

                   <hr>


               </div>

               <div style="padding: 30px" class="card">

                   <!--STEPS FORM START -->
                   <div class="stepsForm">
                  <form method="post">
                        <div class="sf-steps">
                            <div class="sf-steps-content">
                               <div>
                                   <span>1</span> &nbsp  Perfil
                               </div>
                               <div>
                                   <span>2</span> &nbsp Conta
                               </div>

                           </div>
                       </div>                
                       <div class="sf-steps-form sf-radius"> 

                        <ul class="sf-content"> <!-- form  1 --> 
                           <li>
                            <div class="sf_columns column_3">
                                <input type="text" name="name" placeholder="Nome Completo" data-required="true">
                            </div>
                            <div class="sf_columns column_2">
                                <input type="text" name="phone" placeholder="Telefone (xx) xxxxx-xxxx" data-required="true">
                            </div>
                        </li>
                        <li>
                         <div class="sf_columns column_3">
                            <input type="text" name="registernumber" placeholder="CPF ___.___.___-__" data-required="true">
                        </div>
                    </li>
                    <li>
                        <div class="sf_columns column_3">
                            <label class="sf-select">
                               <select name="state" data-required="true">
                                   <option value="" selected="selected" >Selecione seu estado</option>

                                   <option value="PE">Pernambuco</option>
                                   <option value="SP">São Paulo</option>
                                   <option value="MG">Minas Gerais</option>
                                   <option value="RJ">Rio de Janeiro</option>
                                   <option value="AC">Acre</option>
                                   <option value="AL">Alagoas</option>
                                   <option value="AP">Amapá </option>
                                   <option value="AM">Amazonas </option>
                                   <option value="BA">Bahia</option>
                                   <option value="CE">Ceará </option>
                                   <option value="DF">Distrito Federal</option>
                                   <option value="ES">Espírito Santo  </option>
                                   <option value="GO">Goiás  </option>
                                   <option value="MA">Maranhão </option>
                                   <option value="MT">Mato Grosso </option>
                                   <option value="MS">Mato Grosso do Sul </option>
                                   <option value="PA">Pará   </option>
                                   <option value="RN">Rio Grande do Norte </option>
                                   <option value="PB">Paraíba  </option>
                                   <option value="PR">Paraná</option>
                                   <option value="RS">Rio Grande do Sul </option>
                                   <option value="RO">Rondônia   </option>
                                   <option value="RR">Roraima   </option>
                                   <option value="SC">Santa Catarina   </option>
                                   <option value="SE">Sergipe   </option>
                                   <option value="TO">Tocantins  </option>


                               </select>
                               <span></span>
                           </label>
                       </div>
                       <div class="sf_columns column_3">
                        <div class="sf-radio">
                           Genero :  
                           <label><input type="radio" value="M" name="gender" data-required="true"><span></span> Masculino </label>
                           <label><input type="radio" value="F" name="gender" data-required="true"><span></span> Feminino </label>
                       </div>
                   </div>
               </li>
               <li>
             <div class="sf_columns column_2">
                                <input type="text" name="city" placeholder="Cidade" data-required="true">
                            </div>
                            <div class="sf_columns column_2">
                                <input type="text" name="country" placeholder="Bairro" data-required="true">
                            </div> <div class="sf_columns column_2">
                                <input type="text" name="zipcode" placeholder="Cep _____-___" data-required="true">
                            </div>
               </li>

               <li>
                <div class="sf_columns column_6">
                    <div class="sf-check">
                        <label><input type="checkbox" value="test" name="rights" data-required="true"><span></span> Voce concorda com os termos do nosso site?</label>
                    </div>
                </div>
            </li>
        </ul>

        <ul class="sf-content"> <!-- form step two --> 
           <li>
            <div class="sf_columns column_3">
                <input type="text" placeholder="Email" name="email" data-required="true" data-email="true">
            </div>
        </li>
        <li>
            <div class="sf_columns column_3">
                <input type="password" placeholder="Senha" name="senha" data-required="true" data-confirm="true">
            </div>
            <div class="sf_columns column_3">
                <input type="password" placeholder="Confirmar Senha" name="resenha" data-required="true" data-confirm="true">
            </div>
        </li>
    </ul>

</div>

<div class="sf-steps-navigation sf-align-right">
   <span id="sf-msg" class="sf-msg-error"></span>
   <button id="sf-prev" type="button" class="sf-button">Voltar</button>
   <button id="sf-next" type="button" class="sf-button">Proximo</button>
</div>
</form>
</div>
<!--STEPS FORM END -->

</div>

<div class="footer">

</div>

</div>

<script>
	$(document).ready(function(e) {

		$(".stepsForm").stepsForm({
			width			:'100%',
			active			:0,
			errormsg		:'Verifique os campos',
			sendbtntext		:'Criar conta',
			posturl			:'${pageContext.request.contextPath}/UserRegister',
			theme			:'green',
		}); 
		
		$(".container .themes>span").click(function(e) {
			$(".container .themes>span").removeClass("selectedx");
			$(this).addClass("selectedx");
            $(".stepsForm").removeClass().addClass("stepsForm");
            $(".stepsForm").addClass("sf-theme-"+$(this).attr("data-value"));
        });
    });
</script>

</body>
</html>