<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>InventoryControl | Inicio</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="bower_components/morris.js/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="index2.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>I</b>CTL</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Inventory</b>Control</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">

                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="dist/img/avatar.png" class="user-image" alt="User Image">
                                    <span class="hidden-xs">Usuario Demo</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="dist/img/avatar.png" class="img-circle" alt="User Image">

                                        <p>
                                            Usuario Demo
                                            <small>Vendedor</small>
                                        </p>
                                    </li>
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Perfil</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">Cerrar Sesi�n</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->

                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">

                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header">MEN�</li>
                        <li class=" treeview">
                            <a href="index.php">
                                <i class="fa fa-home"></i> <span>Inicio</span> 
                            </a>
                        </li>

                        <li class=" treeview">
                            <a href="#">
                                <i class="fa fa-truck"></i>
                                <span>Compras</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li class=""><a href="new_purchase.php"><i class="glyphicon glyphicon-shopping-cart"></i> Nueva compra</a></li>
                                <li class=""><a href="purchase_list.php"><i class="glyphicon glyphicon-th-list"></i> Historial de compras</a></li>
                            </ul>
                        </li>
                        <li class="">
                            <a href="productos?action=allProductos">
                                <i class="glyphicon glyphicon-th-large"></i> <span>Productos</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="manufacturers.php">
                                <i class="glyphicon glyphicon-tag"></i> <span>Fabricantes</span>
                            </a>
                        </li>
                        <li class=" treeview">
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span>Contactos</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">

                                <li class=""><a href="contactos?action=clientes"><i class="glyphicon glyphicon-user"></i> Clientes</a></li>

                                <li class=""><a href="contactos?action=allProveedores"><i class="glyphicon glyphicon-briefcase"></i> Proveedores</a></li>

                            </ul>
                        </li>
                        <li class=" treeview">
                            <a href="#">
                                <i class="fa fa-dollar"></i> <span>Facturaci�n</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li class=""><a href="new_sale.php"><i class="fa fa-cart-plus"></i> Nueva venta</a></li>
                                <li class=""><a href="manage_invoice.php"><i class="glyphicon glyphicon-list-alt"></i> Administrar facturas</a></li>
                            </ul>
                        </li>
                        <li class=" treeview">
                            <a href="#">
                                <i class="glyphicon glyphicon-signal"></i> <span>Reportes</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li class=""><a href="sales_report.php"><i class="fa fa-bar-chart"></i> Reporte de ventas</a></li>
                                <li class=""><a href="purchases_report.php"><i class="fa fa-line-chart"></i> Reporte de compras</a></li>
                                <li class=""><a href="inventory_report.php"><i class="fa fa-bar-chart"></i> Reporte de inventario</a></li>
                            </ul>
                        </li>
                        <li class=" treeview">
                            <a href="#">
                                <i class="fa fa-wrench"></i> <span>Configuraci�n</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li class=""><a href="business_profile.php"><i class="glyphicon glyphicon-briefcase"></i> Perfil de la empresa</a></li>
                                <li class=""><a href="currencies.php"><i class="fa fa-usd"></i> Monedas</a></li>
                                <li class=""><a href="taxes.php"><i class="fa fa-align-justify"></i> Impuestos</a></li>
                                <li class=""><a href="templates.php"><i class="fa fa-file-pdf-o"></i> Plantillas</a></li>
                            </ul>
                        </li>
                        <li class=" treeview">
                            <a href="#">
                                <i class="fa fa-lock"></i> <span>Administrar accesos</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">

                                <li class=""><a href="group_list.php"><i class="glyphicon glyphicon-briefcase"></i> Grupos de usuarios</a></li>

                                <li class=""><a href="user_list.php"><i class="fa fa-users"></i> Usuarios</a></li>

                            </ul>
                        </li>


                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        ${tipo}
                        <small>Listado de ${tipo}</small>
                    </h1>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">

                        <div class="col-xs-12">
                            <div class="box">
                                <form role="form" action="contactos?action=insertar&tipo=${tipo_con}" method="POST">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-3">
                                            <div class="input-group">

                                                </span>
                                            </div><!-- /input-group -->

                                        </div>
                                        <div class="col-md-3 hidden-xs"></div>
                                        <div class="col-xs-2 col-md-1">
                                            <div id="loader" class="text-center"></div>

                                        </div>
                                        <div class="col-xs-10 col-md-5 ">
                                            <div class="btn-group pull-right">
                                                <!--<a href="contactos?action=registroCliente"><button type="button" class=""> </button></a>-->
                                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal"><i class='fa fa-plus'></i>Nuevo ${tipo}</button>
                                            </div>

                                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title">Nuevo ${tipo}</h4>
                                                        </div>
                                                        <div class="modal-body">


                                                            <div class="nav-tabs-custom">
                                                                <ul class="nav nav-tabs">
                                                                    <li class="active"><a href="#activity" data-toggle="tab">Empresa</a></li>
                                                                    <li><a href="#timeline" data-toggle="tab">Contacto</a></li>
                                                                    <li><a href="#settings" data-toggle="tab">Direcci�n</a></li>
                                                                </ul>
                                                                <div class="tab-content">
                                                                    <div class="active tab-pane" id="activity">
                                                                        <div class="form-group">
                                                                            <label for="bussines_name" class="col-sm-3 control-label">Nombre</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="nombre_empresa" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="tax_number" class="col-sm-3 control-label" >NIT</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="nit_empresa">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="website" class="col-sm-3 control-label">Sitio Web</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="pag_web">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="work_phone" class="col-sm-3 control-label">Tel�fono</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="telefono_empresa" required>
                                                                            </div>
                                                                        </div>

                                                                    </div><!-- /.tab-pane -->
                                                                    <div class="tab-pane" id="timeline">
                                                                        <input name="id_tipo" value="${tipo_con}" />
                                                                        <div class="form-group">
                                                                            <label for="first_name" class="col-sm-3 control-label">Nombres</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="nombre_cliente" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="last_name" class="col-sm-3 control-label">Apellidos</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="apellido_cliente" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="email" class="col-sm-3 control-label">Correo</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="email" class="form-control"name="correo">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="phone" class="col-sm-3 control-label">Tel�fono</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="telefono_cliente" required>
                                                                            </div>
                                                                        </div>
                                                                    </div><!-- /.tab-pane -->

                                                                    <div class="tab-pane" id="settings">

                                                                        <div class="form-group">
                                                                            <label for="address1" class="col-sm-3 control-label">Calle</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="calle">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="city" class="col-sm-3 control-label">Ciudad</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="ciudad">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="state" class="col-sm-3 control-label">Regi�n/Provincia</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" name="region">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="postal_code" class="col-sm-3 control-label">C�digo Postal</label>
                                                                            <div class="col-sm-9">
                                                                                <input type="text" class="form-control" id="postal_code" name="cp">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="address1" class="col-sm-3 control-label">Pa�s</label>
                                                                            <div class="col-sm-9">
                                                                                <select class='form-control' name="pais">
                                                                                    <option>Seleccione un pa�s</option>
                                                                                    <c:forEach items="${listaPais}" var="ver">
                                                                                        <option value="${ver.id_pais}">${ver.nombre}</option>
                                                                                    </c:forEach>
                                                                                </select>
                                                                            </div>
                                                                        </div>




                                                                    </div><!-- /.tab-pane -->
                                                                </div><!-- /.tab-content -->
                                                            </div><!-- /.nav-tabs-custom -->


                                                        </div>
                                                        <br>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                            <button type="submit" id="guardar_datos" class="btn btn-primary">Registrar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </form>
                                <div class="box-header">
                                    <h3 class="box-title">Listado de ${tipo} detallado</h3>

                                </div>
                                ${msg}
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Nombre Cliente</th>
                                                <th>Correo</th>
                                                <th>Tel�fono</th>
                                                <th>Empresa</th>
                                                <th>P�gina Web</th>
                                                <th>Tel�fono Empresa</th>
                                                <th>NIT Empresa</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${lista}" var="ver">
                                                <tr>
                                                    <td><i class="fa fa-user-circle-o" aria-hidden="true"></i>   ${ver.nombre} ${ver.apellido}</td>
                                                    <td><i class="fa fa-envelope"></i>${ver.email}</td>
                                                    <td><i class="fa fa-phone"></i>   ${ver.telefono}</td>
                                                    <td><i class="fa fa-building" aria-hidden="true"></i>     ${ver.id_empresa.nombre_empresa}</td>
                                                    <td><i class="fa fa-globe"></i>    ${ver.id_empresa.pagina_web}</td>
                                                    <td><i class="fa fa-phone"></i>    ${ver.id_empresa.telefono_empresa}</td>
                                                    <td><i class="fa fa-id-card" aria-hidden="true"></i>   ${ver.id_empresa.nit_empresa}</td>
                                                    <td hidden="true">${ver.id_tipo_contacto.id_tipo}</td>
                                                    <td>
                                                        <a href="contactos?action=editar&id=${ver.id_contacto}&tipo=${ver.id_tipo_contacto.id_tipo}">
                                                            <button type="button" class="btn btn-default btn-sm">
                                                                <span class="glyphicon glyphicon-edit"></span> Editar
                                                            </button>
                                                        </a>
                                                        <a href="contactos?action=eliminar&id=${ver.id_contacto}&tipo=${ver.id_tipo_contacto.id_tipo}">
                                                            <button type="button" class="btn btn-default btn-sm">
                                                                <span class="glyphicon glyphicon-remove-circle"></span> Eliminar
                                                            </button>
                                                        </a>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Nombre Cliente</th>
                                                <th>Correo</th>
                                                <th>Tel�fono</th>
                                                <th>Empresa</th>
                                                <th>P�gina Web</th>
                                                <th>Tel�fono Empresa</th>
                                                <th>NIT Empresa</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.4.12
                </div>
                <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">Java 13 </a>.</strong> All rights
                reserved.
            </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
                    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- Home tab content -->
                    <div class="tab-pane" id="control-sidebar-home-tab">
                        <h3 class="control-sidebar-heading">Recent Activity</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                        <p>Will be 23 on April 24th</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-user bg-yellow"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                                        <p>New phone +1(800)555-1234</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                                        <p>nora@example.com</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-file-code-o bg-green"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                                        <p>Execution time 5 seconds</p>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <!-- /.control-sidebar-menu -->

                        <h3 class="control-sidebar-heading">Tasks Progress</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Custom Template Design
                                        <span class="label label-danger pull-right">70%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Update Resume
                                        <span class="label label-success pull-right">95%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Laravel Integration
                                        <span class="label label-warning pull-right">50%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Back End Framework
                                        <span class="label label-primary pull-right">68%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <!-- /.control-sidebar-menu -->

                    </div>
                    <!-- /.tab-pane -->
                    <!-- Stats tab content -->
                    <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
                    <!-- /.tab-pane -->
                    <!-- Settings tab content -->
                    <div class="tab-pane" id="control-sidebar-settings-tab">
                        <form method="post">
                            <h3 class="control-sidebar-heading">General Settings</h3>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Report panel usage
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Some information about this general settings option
                                </p>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Allow mail redirect
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Other sets of options are available
                                </p>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Expose author name in posts
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Allow the user to show his name in blog posts
                                </p>
                            </div>
                            <!-- /.form-group -->

                            <h3 class="control-sidebar-heading">Chat Settings</h3>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Show me as online
                                    <input type="checkbox" class="pull-right" checked>
                                </label>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Turn off notifications
                                    <input type="checkbox" class="pull-right">
                                </label>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Delete chat history
                                    <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                                </label>
                            </div>
                            <!-- /.form-group -->
                        </form>
                    </div>
                    <!-- /.tab-pane -->
                </div>
            </aside>
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 3 -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- DataTables -->
        <script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>
        <!-- page script -->
        <script>
            $(function () {
                $('#example1').DataTable()
                $('#example2').DataTable({
                    'paging': true,
                    'lengthChange': false,
                    'searching': false,
                    'ordering': true,
                    'info': true,
                    'autoWidth': false
                })
            })
        </script>
    </body>
</html>