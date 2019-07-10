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
                                            <a href="#" class="btn btn-default btn-flat">Cerrar Sesión</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->

                        </ul>
                    </div>
                </nav>
            </header>

            <form class="form-horizontal" method="post" id="guardar_proveedor" name="guardar_proveedor">
                <!-- Modal -->
                <div class="modal fade" id="proveedor_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">Nuevo Proveedor</h4>
                            </div>
                            <div class="modal-body">


                                <div class="nav-tabs-custom">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#activity" data-toggle="tab">Empresa</a></li>
                                        <li><a href="#timeline" data-toggle="tab">Contacto</a></li>
                                        <li><a href="#settings" data-toggle="tab">Dirección</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="active tab-pane" id="activity">
                                            <div class="form-group">
                                                <label for="bussines_name" class="col-sm-3 control-label">Nombre</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="bussines_name"  name="bussines_name" required>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="tax_number" class="col-sm-3 control-label">Número de Impuesto</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="tax_number" name="tax_number">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="website" class="col-sm-3 control-label">Sitio Web</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="website" name="website">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="work_phone" class="col-sm-3 control-label">Teléfono</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="work_phone" name="work_phone" required>
                                                </div>
                                            </div>

                                        </div><!-- /.tab-pane -->
                                        <div class="tab-pane" id="timeline">
                                            <div class="form-group">
                                                <label for="first_name" class="col-sm-3 control-label">Nombres</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="first_name" name="first_name" required>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="last_name" class="col-sm-3 control-label">Apellidos</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="last_name" name="last_name" required>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="email" class="col-sm-3 control-label">Correo Electrónico</label>
                                                <div class="col-sm-9">
                                                    <input type="email" class="form-control" id="email" name="email">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="phone" class="col-sm-3 control-label">Teléfono</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="phone" name="phone" required>
                                                </div>
                                            </div>
                                        </div><!-- /.tab-pane -->

                                        <div class="tab-pane" id="settings">

                                            <div class="form-group">
                                                <label for="address1" class="col-sm-3 control-label">Calle</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="address1" name="address1">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="city" class="col-sm-3 control-label">Ciudad</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="city" name="city">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="state" class="col-sm-3 control-label">Región/Provincia</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="state" name="state">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="postal_code" class="col-sm-3 control-label">Código Postal</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="postal_code" name="postal_code">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="address1" class="col-sm-3 control-label">País</label>
                                                <div class="col-sm-9">
                                                    <select class='form-control' name="country_id" id="country_id">

                                                    </select>
                                                </div>
                                            </div>
                                        </div><!-- /.tab-pane -->
                                    </div><!-- /.tab-content -->
                                </div><!-- /.nav-tabs-custom -->


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                <button type="submit" id="guardar_datos" class="btn btn-primary">Registrar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!-- Left side column. contains the logo and sidebar -->
             <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">

                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header">MENÚ</li>
                        <li class="">
                            <a href="index.jsp">
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
                                <li class=""><a href="compras?action=nuevaCompra&tipo=1"><i class="glyphicon glyphicon-shopping-cart"></i> Nueva compra</a></li>
                                <li class=""><a href="compras?action=listaCompras"><i class="glyphicon glyphicon-th-list"></i> Historial de compras</a></li>
                            </ul>
                        </li>
                        <li class="">
                            <a href="productos?action=allProductos">
                                <i class="glyphicon glyphicon-th-large"></i> <span>Productos</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="fabricante?action=allFabricantes">
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

                                <li class=""><a href="contactos?action=allClientes"><i class="glyphicon glyphicon-user"></i> Clientes</a></li>

                                <li class=""><a href="contactos?action=allProveedores"><i class="glyphicon glyphicon-briefcase"></i> Proveedores</a></li>

                            </ul>
                        </li>
                        <li class=" treeview">
                            <a href="#">
                                <i class="fa fa-dollar"></i> <span>Facturación</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li class=""><a href="#"><i class="fa fa-cart-plus"></i> Nueva venta</a></li>
                                <li class=""><a href="#"><i class="glyphicon glyphicon-list-alt"></i> Administrar facturas</a></li>
                            </ul>
                        </li>
        
                </section>
                <!-- /.sidebar -->
            </aside>

            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1><i class='fa fa-edit'></i> Agregar nueva compra</h1>

                </section>
                <!-- Main content -->
                <section class="content">
                    <!-- Default box -->
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Nueva Compra</h3>

                        </div>
                        <div class="box-body">
                            <div class="row">


                                <!-- *********************** Purchase ************************** -->
                                <div class="col-md-12 col-sm-12">
                                    <form method="post" name="new_purchase" id="new_purchase">
                                        <div class="box box-info">
                                            <div class="box-header box-header-background-light with-border">
                                                <h3 class="box-title  ">Detalles de la compra</h3>
                                            </div>

                                            <div class="box-background">
                                                <div class="box-body">
                                                    <div class="row">

                                                        <div class="col-md-5">

                                                            <label>Proveedor</label>
                                                            <div class="input-group">
                                                                <select class="form-control select2" name="supplier_id" id="supplier_id" required>
                                                                    <option value="">Selecciona Proveedor</option>
                                                                    <c:forEach items="${select}" var="se">
                                                                        <option value="${se.id_contacto}">${se.nombre} ${se.apellido}</option>
                                                                    </c:forEach>
                                                                </select>
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-default" type="button" data-toggle="modal" data-target="#proveedor_modal"><i class='fa fa-plus'></i> Nuevo</button>
                                                                </span>
                                                            </div>
                                                        </div>


                                                    </div>

                                                </div><!-- /.box-body -->
                                            </div>
                                        </div>





                                    </form>
                                </div>
                                <!-- /.box -->

                            </div>
                            <!--/.col end -->



                        </div>
                        <div id="resultados_ajax" class='col-md-12' style="margin-top:4px"></div><!-- Carga los datos ajax -->
                        <div class="box-body">

                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>

                                        <th>Código</th>                                             
                                        <th>Modelo</th>
                                        <th>Procucto</th>
                                        <th>Fabricante</th>
                                        <th>Estado</th>
                                        <th>Stock</th>
                                        <th>Precio</th>
                                        <th></th>
                                        <th></th><th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${lista}" var="ver">
                                        <tr>
                                            <td hidden="true">${ver.id_producto}</td>
                                            <td>${ver.codigo}</td>

                                            <td>${ver.modelo}</td>
                                            <td>${ver.nombre}</td>

                                            <td>${ver.id_fabricante.nombre_fabricante}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${ver.estado=='A'}">
                                                        Activo 
                                                        <br />
                                                    </c:when>    
                                                    <c:otherwise>
                                                        Inactivo 
                                                        <br />
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>${ver.stock}</td>
                                            <td>$ ${ver.precio_unitario}</td>

                                            <td class="col-xs-1">
                                                <form action="guardarcompra" method="POST">
                                                    <div class="pull-right">
                                                        <input type="text" name="cantidad" class="form-control" style="text-align:right" id="cantidad" value="1">
                                                        <input type="hidden" name="id_producto" value="${ver.id_producto}"/>
                                                    </div>
                                            </td>

                                            <td>
                                                <button type="submit" class="btn btn-light"><i class="glyphicon glyphicon-shopping-cart " style="font-size:24px;color: #5CB85C;"></i></button>

                                            </td>
                                            </form>


                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>

                                        <th>Código</th>
                                        <th>Modelo</th>
                                        <th>Procucto</th>

                                        <th>Fabricante</th>
                                        <th>Estado</th>
                                        <th>Stock</th>
                                        <th>Precio</th>
                                    </tr>
                                </tfoot>
                            </table>

                        </div>

                        <div class="box-footer">
                            <div id="resultados" class="col-md-12" style="margin-top:4px"> 	<div class="table-responsive">
                                    <table class="table">
                                        <tbody><tr>
                                                <th>CODIGO</th>
                                                <th class="text-center">CANT.</th>
                                                <th>DESCRIPCION</th>
                                                <th><span class="pull-right">PRECIO UNIT.</span></th>
                                                <th><span class="pull-right">PRECIO TOTAL</span></th>
                                                <th></th>
                                            </tr>
                                            		
                                           		
                                            	
                                            <tr>
                                                
                                                <td class="text-center">1</td>
                                                <td>iMac con pantalla Retina 4K de 21.5 pulgadas</td>
                                                <td><span class="pull-right">10.00</span></td>
                                                <td><span class="pull-right">10.00</span></td>
                                                <td><span class="pull-right"><a href="#" onclick="eliminar('6368')"><i class="glyphicon glyphicon-trash"></i></a></span></td>
                                            </tr>		
                                           		


                                            <tr>
                                                <td colspan="4"><span class="pull-right">NETO $</span></td>
                                                <td><span class="pull-right">1,000,050.00</span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" class="text-right">
                                                    <select name="taxes" id="taxes" onchange="tax_value(this.value)">
                                                        <option value="10.00">IVA 10.00 %</option><option value="0.00" selected="">IVA 0.00 %</option>			
                                                    </select>
                                                </td>
                                                <td><span class="pull-right">0.00</span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4"><span class="pull-right">TOTAL $</span></td>
                                                <td><span class="pull-right">1,000,050.00</span></td>
                                                <td></td>
                                            </tr>
                                        </tbody></table>
                                </div>
                            </div>
                            <button type="submit"  class="btn btn-success pull-right "><i class="fa fa-floppy-o"></i> Guardar datos</button>
                        </div>
                        </form>


                    </div><!-- /.box-body -->

            </div><!-- /.box -->	

        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
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
                                                                'searching': true,
                                                                'ordering': true,
                                                                'info': true,
                                                                'autoWidth': false
                                                            })
                                                        })
</script>
</body>
</html>