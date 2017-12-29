<!doctype html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">

        <!-- Font     -->
        <link href="https://fonts.googleapis.com/css?family=Lekton" rel="stylesheet">



        <title>SIOriente</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />


        <!-- Bootstrap core CSS     -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Light Bootstrap Table core CSS    -->
        <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>
        <!-- index -->
        <link rel="stylesheet" href="assets/css/index.css">

        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="assets/css/demo.css" rel="stylesheet" />

        <!-- Login css  -->
        <link href="assets/css/l.css" rel="stylesheet"  />

        <!-- blockp css  -->
        <link href="assets/css/blockp.css" rel="stylesheet"  />


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    </head>
    <body>

        

           
        	

        


        <div class="container">




 <%if (request.getAttribute("result") != null) {%>
        <script>

            alert("O endereço de email ou a senha que você inseriu não é correto!");

        </script>
       
        
         <%}else if (request.getAttribute("result2") != null) {%>
        <script>

            alert("Usuario Cadastrado!");

        </script>
        <%}%>

            <!-- navbar -->


            <nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse mb-4">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="login.jsp">SEOrienta</a>
                        <a class="navbar-brand" href="#"></a>
                        <a class="navbar-brand" href="#"></a>
                        <a class="navbar-brand" href="#"></a>
                        <a class="navbar-brand" href="#"></a>
                        <a class="navbar-brand" href="about.jsp">Quem Somos</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar">


                        </ul>
                        <!-- Barra da direita -->   

                        <ul class="nav navbar-nav navbar-right">

                            <!-- Barra da direita LOGIN --> 

                            <li class="dropdown">

                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
                                <ul  id="login-dp" class="dropdown-menu">
                                    <li>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <p>Login</p>
                                              
                                                <br>

                                                <form class="form" role="form" method="post" action="${pageContext.request.contextPath}/Home" accept-charset="UTF-8" id="login-nav">
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputEmail2">Email</label>
                                                        <input type="email" name="email" class="form-control"  placeholder="Email " required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputPassword2">Senha</label>
                                                        <input type="password" name="password" class="form-control"  placeholder="Senha" required>
                                                        

                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-primary btn-block">Entrar </button>
                                                    </div>
                                                    <div class="help-block text-center"><a href="cadastro.jsp">Cadastrar</a></div>    											
                                                </form>
                                            </div>    									
                                        </div>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>

            </nav>

            <!-- carousel -->


            <div id="carousel-example-generic" class="carousel slide">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <!-- Slide 1-->
                    <div class="item active">
                        <img   src="assets/img/apresentacao2.jpg" alt="Slide 1" />
                        <div class="carousel-caption">
                            <h1><a>PENSE</a></h1>
                            <p>ExerÃ§a a capacidade de criar o futuro</p>
                        </div>
                    </div>

                    <!-- Slide 2-->
                    <div class="item">
                        <img src="assets/img/apresentacao3.jpg" alt="Slide 2" />
                        <div   class="carousel-caption">
                            <h1><a>PLANEJE</a></h1>
                            <p> Estruture suas ideias, trace metas e objetivos. </p>
                        </div>
                    </div>

                    <!-- Slide 3-->
                    <div class="item">
                        <img src="assets/img/apresentacao.jpg" alt="Slide 3" />
                        <div class="carousel-caption">
                            <h1><a>DESENVOLVA</a></h1>
                            <p>Delegue, Ponha a mão na massa, busque tirar do papel suas ideias.</p>
                        </div>
                    </div>
                </div>


                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="icon-prev"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="icon-next"></span>
                </a>
            </div>




            <!-- BLOCKS DE PROJETOS -->

          









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
    <!-- portfilter -->
    <script src="assets/js/portfilter.js"></script>


    <script type="text/javascript">
$(document).ready(function () {

demo.initChartist();

$.notify({
icon: 'pe-7s-star',
message: "Bem vindo ao ProjectGO <br> <b>Mudando o mundo com ideias</b>."

}, {
type: 'info',
timer: 1000

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



    <!-- carousel -->

    <script type="text/javascript">

        $(function () {
            $('#carouselid').carousel();
        });

    </script>	





</html>
