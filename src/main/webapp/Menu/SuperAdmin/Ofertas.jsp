<%-- 
    Document   : Ofertas
    Created on : 02-11-2022, 12:33:03
    Author     : jr972
--%>

<%@page import="model.Tipo_User"%>
<%@page import="service.Dao_TipoUser"%>
<%@page import="db.ConexionSingleton"%>
<%@page import="model.Usuario"%>
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
        <link rel="stylesheet" href="../../Bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="icon" href="../../Img/icon.png">
        <link href="../../Css/sidebar.css" rel="stylesheet">
        <link href="../../Css/styleWeb.css" rel="stylesheet">
        <link href="../../Css/styleOffcanvas.css" rel="stylesheet">
        <link rel="stylesheet" href="../../Css/datatables.min.css"/>
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
                    <img class="p-2" src="../../Img/iconBack.png" width="50" height="50">
                    <span class="logo_name text-white">SisCOIN</span>
                </div>
                <i class="bi bi-caret-right-fill toggle"></i>
            </header>
            <hr class="text-white">
            <ul class="nav-links">
                <li>
                    <a href="../MenuPrincipal.jsp">
                        <i class='bx bx-home-smile'></i>
                        <span class="link_name">Inicio</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../MenuPrincipal.jsp">Inicio</a></li>
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
                        <a href="BaseDeDatos.jsp">
                            <i class='bx bx-data'></i>
                            <span class="link_name">Base de datos</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="BaseDeDatos.jsp">Base de datos</a></li>
                        <!--<li><a href="#">Web Design</a></li>
                        <li><a href="#">Login Form</a></li>
                        <li><a href="#">Card Design</a></li>-->
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bxs-offer'></i>
                        <span class="link_name">Ofertas</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="#">Ofertas</a></li>
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
                        <i class='bx bx-user'></i>
                        <span class="link_name">Usuarios</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="#">Usuarios</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-history'></i>
                        <span class="link_name">Registros</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="#">Registros</a></li>
                    </ul>
                </li>
                <li>
                    <div class="profile-details">
                        <div class="profile-content">
                            <a class="nav-link active text-white" aria-current="page" href="#">
                                <i class='bx bx-user' ></i>
                            </a>
                        </div>
                        <div class="name-job">
                            <div class="profile_name"><% out.print(oUsuario.getNombre()); %></div>
                            <div class="job"><% out.print(oTipo_User.getDetalle());%></div>
                        </div>
                        <a href="../../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                    </div>
                </li>
            </ul>
        </div>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <div class="d-lg-block d-none" style="padding-left: 40%">
                    <a class="navbar-brand" href="#">
                        <span class="text-white">Local Cholito</span>
                        <img src="../../Img/iconBack.png" alt="No disponible">
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop" aria-expanded="false" aria-label="Toggle navigation">
                    <i class='bx bx-menu text-white' style="font-size: 40px;"></i>
                </button>
                <div class="d-lg-none d-md-block d-block" style="margin-right: 50px;">
                    <a class="navbar-brand" href="#">
                        <img src="../../Img/iconBack.png" alt="No disponible" width="30" height="30">
                        <span class="text-white">Local Cholito</span>
                    </a>
                </div>
                <div class="offcanvas offcanvas-start" style="background-color: #5a4bac" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
                    <div class="offcanvas-header">
                        <a class="navbar-brand" href="#">
                            <img src="../../Img/iconBack.png" alt="No disponible" width="30" height="30">
                            <span class="text-white">Local Cholito</span>
                        </a>
                        <button type="button" class="btn-close text-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-lg-none d-block nav-links">
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="../MenuPrincipal.jsp">
                                    <i class='bx bx-home-smile'></i>
                                    <span class="link_name">Inicio</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bx bx-collection' ></i>
                                    <span class="link_name">Reportes</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="BaseDeDatos.jsp">
                                    <i class='bx bx-data'></i>
                                    <span class="link_name">Base de datos</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bx bxs-offer'></i>
                                    <span class="link_name">Ofertas</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bx bx-package'></i>
                                    <span class="link_name">Pedidos</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bx bx-user'></i>
                                    <span class="link_name">Usuarios</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bx bx-history'></i>
                                    <span class="link_name">Registros</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bx bx-bell' ></i>
                                    <span class="link_name">Pedidos</span>
                                </a>
                            </li>
                            <li>
                                <div class="profile-details">
                                    <div class="profile-content">
                                        <a class="nav-link active text-white" aria-current="page" href="#">
                                            <i class='bx bx-user' ></i>
                                        </a>
                                    </div>
                                    <div class="name-job">
                                        <div class="profile_name"><% out.print(oUsuario.getNombre()); %></div>
                                        <div class="job"><% out.print(oTipo_User.getDetalle());%></div>
                                    </div>
                                    <a href="../../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="d-lg-block d-none">
                    <button class="d-flex btn btn-primary position-relative" type="button">
                        <i class='bx bxs-bell' style="font-size: 22px;"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                            1
                            <span class="visually-hidden">unread messages</span>
                        </span>
                    </button>
                </div>
            </div>
        </nav>
        <section class="home-section principal">
            <div class="container-fluid principal mt-2 ">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="modal fade" id="modalAgregar" style="z-index: 1500" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Agregar Oferta</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        ...
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                        <button type="button" class="btn btn-primary">Registrar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-end">
                    <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 ">
                        <div class="card">
                            <div class="card-header text-white" style="background-color: #5a4bac">
                                <h3>Registro de reportes</h3>
                            </div>
                            <div class="card-body">
                                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                            <th>Precio Actual</th>
                                            <th>Precio Oferta</th>
                                            <th>Stock</th>
                                            <th>Categoria</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>#</th>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                            <th>Precio Actual</th>
                                            <th>Precio Oferta</th>
                                            <th>Stock</th>
                                            <th>Categoria</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-10 col-md-1 col-lg-1 col-xl-1 align-self-end m-2 d-grid gap-2 d-sm-flex d-md-flex d-lg-flex justify-content-sm-end justify-content-md-center justify-content-lg-center">
                        <button type="button" class="btn btn-secondary" style="border-radius: 50%; font-size: 25px" data-bs-toggle="modal" data-bs-target="#modalAgregar">
                            <i class='bx bx-plus' ></i>
                        </button>
                    </div>
                </div>

            </div>
        </section>
        <section class="footer">
            <footer class="d-flex flex-wrap justify-content-between align-items-center mx-5">
                <span class="mb-md-1 text-white" style="font-size: 20px">Camino El Trigal N° 54, Villa Angosta, Requinoa. &nbsp;</span>
                <span class="mb-md-1 text-white" style="font-size: 20px">&copy; 2022 Local Cholito</span>
                <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                    <li class="ms-3 ms-lg-5"><a class="text-white" href="#" style="font-size: 25px"><i class="bi bi-instagram" ></i></a></li>
                    <li class="ms-3 ms-lg-5"><a class="text-white" href="#" style="font-size: 25px"><i class="bi bi-facebook" ></i></a></li>
                    <li class="ms-3 ms-lg-5 mx-2"><a class="text-white" href="#" style="font-size: 25px"><i class="bi bi-whatsapp" ></i></a></li>
                </ul>
            </footer>
        </section>
    </body>
    <script src="../../Js/sidebarMove.js"></script>
    <script src="../../Bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../Js/datatables.min.js"></script>
    <script src="../../Js/pdfmake.min.js"></script>
    <script src="../../Js/vfs_fonts.js"></script>
    <script>
        $(document).ready(function () {

            var table = $('#example').DataTable({
                "responsive": true,
                "buttons": ['copy', 'csv', 'excel', 'pdf', 'print'],
                "lengthChange": false,
                "autoWidth": false,
                "pagingType": 'full_numbers',
                "language": {
                    "lengthMenu": "Mostrar " + '<select style="backgound-size:5px;"><option value="5">5</option><option value="10">10</option><option value="15">15</option><option value="20">20</option></select>' + " registros por página",
                    "zeroRecords": "No se han encontrado registros",
                    "info": "Mostrando la página _PAGE_ de _PAGES_",
                    "infoEmpty": "No hay registros disponibles",
                    "infoFiltered": "(Filtrado de _MAX_ registros totales)",
                    "search": "Buscar:",
                    "paginate": {
                        'first': 'Primero',
                        'next': 'Siguiente',
                        'previous': 'Anterior',
                        'last': 'Ultimo'
                    }
                }
            });
            table.buttons().container().appendTo('#example_wrapper .col-md-6:eq(0)');

            $('[data-toggle="tooltip"]').tooltip({
                placement: 'top'
            });
        });
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
