<%-- 
    Document   : MenuUser
    Created on : 26-10-2022, 20:32:57
    Author     : jr972
--%>

<%@page import="model.Usuario"%>
<%@page import="model.Tipo_User"%>
<%@page import="service.Dao_TipoUser"%>
<%@page import="db.ConexionSingleton"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario oUsuario = (Usuario) session.getAttribute("Usuario");
    //out.print(oUsuario);
    /*int timer = session.getMaxInactiveInterval();
    HttpSession oHttpSession=request.getSession();

    out.println(timer);
    if (timer == 1800) {
        out.println("Cago session");
    }*/
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
        <title>Menu Pincipal</title>
        <link rel="stylesheet" href="../Bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="icon" href="../Img/icon.png">
        <link rel="stylesheet" href="../Css/styleWeb.css"/>
        <link href="../Css/sidebar.css" rel="stylesheet">
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>
    </head>
    <body>
        <%
            ConexionSingleton oConexionSingleton = ConexionSingleton.getIntance();
            Dao_TipoUser oDao_TipoUser = new Dao_TipoUser(oConexionSingleton);
            Tipo_User oTipo_User = oDao_TipoUser.get(oUsuario.getTipo_user());
        %>
        <div class="d-flex flex-column flex-shrink-0 sidebar close">
            <header>
                <div class="logo-details">
                    <img class="p-2" src="../Img/iconBack.png" width="50" height="50">
                    <span class="logo_name text-white">SisCOIN</span>
                </div>
                <i class="bi bi-caret-right-fill toggle"></i>
            </header>
            <hr class="text-white">
            <ul class="nav-links">
                <li>
                    <a href="#">
                        <i class='bx bx-home-smile'></i>
                        <span class="link_name">Inicio</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="#">Inicio</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="#">
                            <i class='bx bx-collection' ></i>
                            <span class="link_name">Reportes</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="#">Reportes</a></li>
                        <!--<li><a href="#">Reportes</a></li>
                        <li><a href="#">Ingresar reporte</a></li>
                        <li><a href="#">PHP & MySQL</a></li>-->
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="#">
                            <i class='bx bx-package'></i>
                            <span class="link_name">Pedidos</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="#">Pedidos</a></li>
                        <!--<li><a href="#">UI Face</a></li>
                        <li><a href="#">Pigments</a></li>
                        <li><a href="#">Box Icons</a></li>-->
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-cog' ></i>
                        <span class="link_name">Cuenta</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="#">Cuenta</a></li>
                    </ul>
                </li>
                <li>
                    <div class="profile-details">
                        <div class="profile-content">
                            <i class='bx bx-user-circle'></i>
                        </div>
                        <div class="name-job">
                            <div class="profile_name"><% //out.print(oUsuario.getNombre()); %></div>
                            <div class="job"><% out.print(oTipo_User.getDetalle()); %></div>
                        </div>
                        <a href="../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                    </div>
                </li>
            </ul>
        </div>
        <section class="home-section">
            <nav class="navbar navbar-expand-lg bg-light">
                <div class="container-fluid">
                    <div class="d-lg-block d-none" style="padding-left: 40%">
                        <a class="navbar-brand" href="#">
                            <span class="text-white">Local Cholito</span>
                            <img src="../Img/iconBack.png" alt="No disponible">
                        </a>
                    </div>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                        <i class='bx bx-menu text-white' style="font-size: 40px;"></i>
                    </button>
                    <div class="d-lg-none d-md-block d-block m-1">
                        <a class="navbar-brand" href="#">
                            <img src="../Img/iconBack.png" alt="No disponible" width="30" height="30">
                            <span class="text-white">Local Cholito</span>
                        </a>
                    </div>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-lg-none d-block ">
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="#">Reportes</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="#">Pedidos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="#">Cuenta</a>
                            </li>
                        </ul>
                        <div style="padding-left: 90%" class="d-lg-block d-none">
                            <button class="d-flex btn btn-primary position-relative" type="button">
                                <i class='bx bxs-bell' style="font-size: 22px;"></i>
                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                    1
                                    <span class="visually-hidden">unread messages</span>
                                </span>
                            </button>
                        </div>
                        <div class="d-lg-none d-block m-1">
                            <button class="d-flex btn btn-primary position-relative" type="button">
                                <i class='bx bxs-bell' style="font-size: 22px;"></i>
                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                    1
                                    <span class="visually-hidden">unread messages</span>
                                </span>
                            </button>
                        </div>
                        <div class="d-lg-none d-block m-1">
                            <a class="btn btn-primary" href="../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i><span>Cerrar Sesión</span></a>

                        </div>
                    </div>
                </div>
            </nav>
            <div class="container-fluid principal">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">

                    </div>
                </div>
            </div>
            <nav class="navbar fixed-bottom bg-light">
                <div class="container-fluid">
                    <span class="mb-md-1 text-white" style="font-size: 20px">&copy; 2022 Local Cholito</span>
                    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                        <li class="ms-3 ms-lg-5"><a class="text-white" href="#" style="font-size: 25px"><i class="bi bi-instagram" ></i></a></li>
                        <li class="ms-3 ms-lg-5"><a class="text-white" href="#" style="font-size: 25px"><i class="bi bi-facebook" ></i></a></li>
                        <li class="ms-3 ms-lg-5 mx-2"><a class="text-white" href="#" style="font-size: 25px"><i class="bi bi-whatsapp" ></i></a></li>
                    </ul>
                </div>
            </nav>
        </section>
    </body>

    <script src="../Js/sidebar.js"></script>
    <script src="../Js/sidebarMove.js"></script>

    <script src="../Bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>
        /*const body = document.querySelector('body');
         body.onmousemove = function () {
        <%
             //session.setMaxInactiveInterval(6*60);

        %>
         var x=<%=session.getMaxInactiveInterval()%>;
         console.log("estas moviendo el mouse"+x);
         };*/
        /*var maxtime =<%=session.getMaxInactiveInterval()%>;
         function verificarSession() {
         var maxtime =<%=session.getMaxInactiveInterval()%>;
         console.log(maxtime);
         if (maxtime == 1800) {
         console.log("Session destroy");
         }
         }
         /*setTimeout(verificarSession, 6000);
         verificarSession();*/
        //var intervalo = setInterval(verificarSession, maxtime * 100);

    </script>
</html>
