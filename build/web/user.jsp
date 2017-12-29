<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

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
                                        <li><a href="${pageContext.request.contextPath}/ProjectListId">Criados</a></li>

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



                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="header">
                                        <h4 class="title">EDITAR PERFIL DE USUARIO</h4>
                                    </div>
                                    <div class="content">
                                        <form>
                                            <label class="checkbox-inline" >Trabalha atualmente? &nbsp </label> <input type="checkbox" value="">
                                            <div class="row"> 
                                                <div class="col-md-5">

                                                    <div class="form-group">
                                                        <label>EMPRESA</label> 
                                                        <input type="text" class="form-control" placeholder="EMPRESA" value="">
                                                    </div>


                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>AREA</label>
                                                        <input type="text" class="form-control" placeholder="AREA" value="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">EMAIL</label>
                                                        <input type="email" class="form-control" placeholder="EMAIL" value="<%= request.getAttribute("Email")%>">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>NOME COMPLETO</label>
                                                      
                                                        <input type="text" class="form-control" placeholder="NOME COMPLETO" value="<%= request.getAttribute("Name")%>">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Telefone</label>
                                                        <input type="text" class="form-control" placeholder="+xx (xx) xxxxx-xxxx" value="<%= request.getAttribute("Phone")%>">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>ENDEREÃ‡O</label>
                                                        <input type="text" class="form-control" placeholder="ENDEREÇO" value="<%= request.getAttribute("Country")%>">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>CIDADE</label>
                                                        <input type="text" class="form-control" placeholder="CIDADE" value="<%= request.getAttribute("City")%>">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>BAIRRO</label>
                                                        <input type="text" class="form-control" placeholder="BAIRRO" value="<%= request.getAttribute("Country")%>">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>CEP</label>
                                                        <input type="text" class="form-control" placeholder="CEP" value="<%= request.getAttribute("ZipCode")%>">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>BIOGRAFIA</label>
                                                        <textarea rows="5" class="form-control" placeholder="DESCRIÃ‡ÃƒO" value="CIDADE"></textarea>
                                                    </div>
                                                </div>
                                            </div>

                                            <button type="submit" class="btn btn-info btn-fill pull-right">Salvar Alterações</button>
                                            <div class="clearfix"></div>
                                        </form>
                                    </div>
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
    <!-- <script src="assets/js/bootstrap-notify.js"></script> -->

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>

</html>