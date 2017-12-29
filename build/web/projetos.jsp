
<%@page import="OBJ.Project"%>
<!doctype html>
<html lang="pt-br">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">


	<title>SIOriente</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />


	<!-- Bootstrap core CSS     -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

	<!-- Animation library for notifications   -->
	<link href="assets/css/animate.min.css" rel="stylesheet"/>

	<!--  Light Bootstrap Table core CSS    -->
	<link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


	<!--  CSS for Demo Purpose, don't include it in your project     -->
	<link href="assets/css/demo.css" rel="stylesheet" />


	<!--     Fonts and icons     -->
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
	<link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>
 <%if (request.getAttribute("result") != null) {%>
        <script>

            alert("Erro ao Tentar ingressar ao Projeto");

        </script>
        <%}%>
	 <div class="wrapper">
            <div class="sidebar" data-color="blue" data-image="assets/img/sidebar-5.jpg">

                <!--
            
                    Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
                    Tip 2: you can also add an image using data-image tag
            
                -->

                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a class="simple-text" href="home.jsp"> SIOriente
                        </a>          
                    </div>

                    <ul  class="nav ">

                        <li class="active" data-filter="all" >
                            <a href="#">
                                <i class="pe-7s-global"></i>
                                <p>Inicio</p>
                            </a>    

                        </li>
                        <!-- Comando para o menu -->

                        <li class="nav" data-filter="1" data-toggle="collapse" data-target="#list">
                            <a href="#">
                                <i class="pe-7s-graph"></i>
                                <p>Projetos</p>
                            </a>
                            <ul id="list" class="collapse">

                                <li class="nav"><a href=""><strong>CIÊNCIA DA COMPUTAÇÃO</strong></a></li>             
                                <li class="nav"><a href=""><strong>MEDICINA</strong></a></li>
                                <li class="nav"><a href=""><strong>ODONTOLOGIA</strong></a></li>
                                <li class="nav"><a href=""><strong>ARQUITETURA</strong></a></li>
                                <li class="nav"><a href=""><strong>DIREITO</strong></a></li>

                            </ul>
                        </li>

                        <!-- Comando para o menu -->

                        <li class="nav" data-filter="2" data-toggle="collapse" data-target="#list2">
                            <a href="#">
                                <i class="pe-7s-user"></i>
                                <p>Startup</p>
                            </a>
                            <ul id="list2" class="collapse">

                                <li class="nav"><a href=""><strong>CIÊNCIA DA COMPUTAÇÃO</strong></a></li>             
                                <li class="nav"><a href=""><strong>MEDICINA</strong></a></li>
                                <li class="nav"><a href=""><strong>ODONTOLOGIA</strong></a></li>
                                <li class="nav"><a href=""><strong>ARQUITETURA</strong></a></li>
                                <li class="nav"><a href=""><strong>DIREITO</strong></a></li>

                            </ul>
                        </li>

                        <li class="nav" data-filter="3" data-toggle="collapse" data-target="#list3">
                            <a href="#">
                                <i class="pe-7s-note2"></i>
                                <p>TCC</p>
                            </a>
                            <ul id="list3" class="collapse">

                                <li class="nav"><a href=""><strong>CIÊNCIA DA COMPUTAÇÃO</strong></a></li>             
                                <li class="nav"><a href=""><strong>MEDICINA</strong></a></li>
                                <li class="nav"><a href=""><strong>ODONTOLOGIA</strong></a></li>
                                <li class="nav"><a href=""><strong>ARQUITETURA</strong></a></li>
                                <li class="nav"><a href=""><strong>DIREITO</strong></a></li>

                            </ul>    
                        </li>

                        <li class="nav" data-filter="4" data-toggle="collapse" data-target="#list4">
                            <a href="#">
                                <i class="pe-7s-science"></i>
                                <p>Iniciação Cientifica</p>
                            </a>
                            <ul id="list4" class="collapse">

                                <li class="nav"><a href=""><strong>CIÊNCIA DA COMPUTAÇÃO</strong></a></li>             
                                <li class="nav"><a href=""><strong>MEDICINA</strong></a></li>
                                <li class="nav"><a href=""><strong>ODONTOLOGIA</strong></a></li>
                                <li class="nav"><a href=""><strong>ARQUITETURA</strong></a></li>
                                <li class="nav"><a href=""><strong>DIREITO</strong></a></li>

                            </ul>        
                        </li>

                    </ul>
                </div>
            </div>

            <div class="main-panel">
                <nav class="navbar navbar-default navbar-fixed">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            
                        </div>
                        <div class="collapse navbar-collapse">

                            <!-- Barra da direita -->   

                            <ul class="nav navbar-nav navbar-right">

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <p>
                                            Configurações
                                            <b class="caret"></b>
                                        </p>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="${pageContext.request.contextPath}/MemberInfo">Perfil</a></li>

                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <p>
                                            Meus Projetos
                                            <b class="caret"></b>
                                        </p>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="${pageContext.request.contextPath}/ProjectListId">Participando</a></li>

                                    </ul>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/Logout">
                                        <p>Sair</p>
                                    </a>
                                </li>
                                <li class="separator hidden-lg hidden-md"></li>
                            </ul>
                        </div>
                    </div>
                </nav>



    	<!-- Barra da direita -->  


    	<!-- COLABORADOR -->



    	<div class="content">  



    		<div class="container-fluid">
    			
    			<div class="row">
    				
						<!-- BOTOES TELA INICIAL -->

						<div class="btn-group-justified" role="group">
						
							<div  style="padding: 25px;"  class="btn-group" role="group">
								<a  href="criarprojetos.jsp"  class="btn btn-primary">CRIAR PROJETOS</a></div>

							

						</div>


    			</div>

                <!--           CENTRO PAGINA CRIAR PROJETO          -->

                <%
                    
                    Project Project =  (Project)request.getAttribute("Project");
                    

                
                %>


                



             
                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="header">
                                        <h4 class="title"><strong>Criado por:</strong> <%out.println(Project.getNome());%></h4>
                                        <p class="category"><strong>DATA:</strong> 14/12/2017</p>

                                        <!-- CODIGO CRIAR PROJETO -->

                                        <div class="header">
                                            <h4 class="title">Dados do Projeto</h4>
                                            <h5 class="title"></h5>
                                        </div>
                                        <div class="content">

                                            <form method="GET" action="${pageContext.request.contextPath}/EnterProject">
                                                <div class="row"> 
                                                    <img align="left" src="assets/img/projeto.jpg">


                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label ><strong>Nome do Projeto</strong></label> <br>
                                                            <label><%out.println(Project.getPNome());%></label>
                                                        </div>
                                                    </div>


                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label><strong>TIPO</strong></strong></label> <br>
                                                            <label><%out.println(Project.getTipo());%></label> 
                                                        </div>
                                                    </div>


                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label><strong>Area</strong></strong></label> <br>
                                                            <label><%out.println(Project.getArea());%></label>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label><strong>Vagas</strong></label><br>
                                                            <label><%out.println(Project.getVaga());%></label><br>
                                                           
                                                        </div>
                                                    </div>
                            

                                                    <div class="col-md-12">
                                                    
                                                        <div class="form-group">
                                                            <label><strong>Descrição do Projeto</strong></label><br>
                                                            <label><%out.println(Project.getDescricao());%></label><br>
                                                        </div>
                                                        <input type="HIDDEN" name="X" value="2356544">
                                                        <button type="submit" name="participar" value="<%out.println(Project.getPID());%>" class="btn btn-info btn-fill pull-right">Participar do projeto</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <div class="content">


                                <div class="footer">
                                    <div class="legend">

                                    </div>
                                    <hr>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             


            </div>
        </div>




    </body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>


    <!--  Checkbox, Radio & Switch Plugins -->
    <script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

    <!--  Charts Plugin -->
    <script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <!--<script src="assets/js/bootstrap-notify.js"></script> -->

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            demo.initChartist();

            $.notify({
                icon: 'pe-7s-star',
                message: "Bem vindo ao ProjectGO <br> <b>Mudando o mundo com ideias</b>."

            }, {
                type: 'info',
                timer: 4000
            });

        });



        $(function () {
            var scntDiv = $('#dynamicDiv');
            $(document).on('click', '#addInput', function () {
                $('<p>' + '<input   style="margin-top:10px;" class="form-control" type="text" id="inputeste"  value="" placeholder="VAGA" /> ' +
                        '<a style="margin-top:10px;" class="form-control" href="javascript:void(0)" id="remInput">' +
                        '<span class="glyphicon glyphicon-minus" aria-hidden="true"></span> ' +
                        'Remover Campo' +
                        '</a>' +
                        '</p>').appendTo(scntDiv);
                return false;
            });

            $(document).on('click', '#remInput', function () {
                $(this).parents('p').remove();
                return false;
            });
        });


    </script>



</html>
