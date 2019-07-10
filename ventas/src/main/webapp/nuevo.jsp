
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Clientes | Inventory Control</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.5 -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <!-- Select2 -->
        <link rel="stylesheet" href="plugins/select2/select2.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
     folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <link rel="icon" href="img/icon.png">
        <!-- Responsive drop menu in tables -->
        <link rel="stylesheet" href="dist/css/responsive_drop.css">
        <style>
            label.error {color: #B94A48; margin-top: 2px;}
        </style>
    </head>
    <body class="hold-transition skin-green sidebar-mini">
        <div class="wrapper">

            <header class="main-header">

                <!-- Logo -->
                <a href="index.php" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>INV</b>Control</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Inventory </b>Control</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">


                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="dist/img/admin.png" class="user-image" alt="User Image">
                                    <span class="hidden-xs">Usuario demo</span>
                                </a>
                                <ul class="dropdown-menu">

                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="dist/img/admin.png" class="img-circle" alt="User Image">
                                        <p>
                                            Usuario demo		
                                            <small>Administrador</small>
                                        </p>
                                    </li>

                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">

                                        </div>
                                        <div class="pull-right">
                                            <a href="login.php?logout" class="btn btn-danger btn-flat"><i class='fa fa-power-off'></i> Salir</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>

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

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">

                    <form class="form-horizontal" method="post" id="guardar_cliente" name="guardar_cliente">
                        <!-- Modal -->
                        <div class="modal fade" id="cliente_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title">Nuevo Cliente</h4>
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
                                                                <option value="0" >Selecciona</option>
                                                                <option value="4" >Afghanistan</option>
                                                                <option value="248" >Åland Islands</option>
                                                                <option value="8" >Albania</option>
                                                                <option value="12" >Algeria</option>
                                                                <option value="16" >American Samoa</option>
                                                                <option value="20" >Andorra</option>
                                                                <option value="24" >Angola</option>
                                                                <option value="660" >Anguilla</option>
                                                                <option value="10" >Antarctica</option>
                                                                <option value="28" >Antigua and Barbuda</option>
                                                                <option value="32" >Argentina</option>
                                                                <option value="51" >Armenia</option>
                                                                <option value="533" >Aruba</option>
                                                                <option value="36" >Australia</option>
                                                                <option value="40" >Austria</option>
                                                                <option value="31" >Azerbaijan</option>
                                                                <option value="44" >Bahamas</option>
                                                                <option value="48" >Bahrain</option>
                                                                <option value="50" >Bangladesh</option>
                                                                <option value="52" >Barbados</option>
                                                                <option value="112" >Belarus</option>
                                                                <option value="56" >Belgium</option>
                                                                <option value="84" >Belize</option>
                                                                <option value="204" >Benin</option>
                                                                <option value="60" >Bermuda</option>
                                                                <option value="64" >Bhutan</option>
                                                                <option value="68" >Bolivia, Plurinational State of</option>
                                                                <option value="535" >Bonaire, Sint Eustatius and Saba</option>
                                                                <option value="70" >Bosnia and Herzegovina</option>
                                                                <option value="72" >Botswana</option>
                                                                <option value="74" >Bouvet Island</option>
                                                                <option value="76" >Brazil</option>
                                                                <option value="86" >British Indian Ocean Territory</option>
                                                                <option value="96" >Brunei Darussalam</option>
                                                                <option value="100" >Bulgaria</option>
                                                                <option value="854" >Burkina Faso</option>
                                                                <option value="108" >Burundi</option>
                                                                <option value="116" >Cambodia</option>
                                                                <option value="120" >Cameroon</option>
                                                                <option value="124" >Canada</option>
                                                                <option value="132" >Cape Verde</option>
                                                                <option value="136" >Cayman Islands</option>
                                                                <option value="140" >Central African Republic</option>
                                                                <option value="148" >Chad</option>
                                                                <option value="152" >Chile</option>
                                                                <option value="156" >China</option>
                                                                <option value="162" >Christmas Island</option>
                                                                <option value="166" >Cocos (Keeling) Islands</option>
                                                                <option value="170" >Colombia</option>
                                                                <option value="174" >Comoros</option>
                                                                <option value="178" >Congo</option>
                                                                <option value="180" >Congo, the Democratic Republic of the</option>
                                                                <option value="184" >Cook Islands</option>
                                                                <option value="188" >Costa Rica</option>
                                                                <option value="384" >Côte d'Ivoire</option>
                                                                <option value="191" >Croatia</option>
                                                                <option value="192" >Cuba</option>
                                                                <option value="531" >Curaçao</option>
                                                                <option value="196" >Cyprus</option>
                                                                <option value="203" >Czech Republic</option>
                                                                <option value="208" >Denmark</option>
                                                                <option value="262" >Djibouti</option>
                                                                <option value="212" >Dominica</option>
                                                                <option value="214" >Dominican Republic</option>
                                                                <option value="218" >Ecuador</option>
                                                                <option value="818" >Egypt</option>
                                                                <option value="222" >El Salvador</option>
                                                                <option value="226" >Equatorial Guinea</option>
                                                                <option value="232" >Eritrea</option>
                                                                <option value="233" >Estonia</option>
                                                                <option value="231" >Ethiopia</option>
                                                                <option value="238" >Falkland Islands (Malvinas)</option>
                                                                <option value="234" >Faroe Islands</option>
                                                                <option value="242" >Fiji</option>
                                                                <option value="246" >Finland</option>
                                                                <option value="250" >France</option>
                                                                <option value="254" >French Guiana</option>
                                                                <option value="258" >French Polynesia</option>
                                                                <option value="260" >French Southern Territories</option>
                                                                <option value="266" >Gabon</option>
                                                                <option value="270" >Gambia</option>
                                                                <option value="268" >Georgia</option>
                                                                <option value="276" >Germany</option>
                                                                <option value="288" >Ghana</option>
                                                                <option value="292" >Gibraltar</option>
                                                                <option value="300" >Greece</option>
                                                                <option value="304" >Greenland</option>
                                                                <option value="308" >Grenada</option>
                                                                <option value="312" >Guadeloupe</option>
                                                                <option value="316" >Guam</option>
                                                                <option value="320" >Guatemala</option>
                                                                <option value="831" >Guernsey</option>
                                                                <option value="324" >Guinea</option>
                                                                <option value="624" >Guinea-Bissau</option>
                                                                <option value="328" >Guyana</option>
                                                                <option value="332" >Haiti</option>
                                                                <option value="334" >Heard Island and McDonald Islands</option>
                                                                <option value="336" >Holy See (Vatican City State)</option>
                                                                <option value="340" >Honduras</option>
                                                                <option value="344" >Hong Kong</option>
                                                                <option value="348" >Hungary</option>
                                                                <option value="352" >Iceland</option>
                                                                <option value="356" >India</option>
                                                                <option value="360" >Indonesia</option>
                                                                <option value="364" >Iran, Islamic Republic of</option>
                                                                <option value="368" >Iraq</option>
                                                                <option value="372" >Ireland</option>
                                                                <option value="833" >Isle of Man</option>
                                                                <option value="376" >Israel</option>
                                                                <option value="380" >Italy</option>
                                                                <option value="388" >Jamaica</option>
                                                                <option value="392" >Japan</option>
                                                                <option value="832" >Jersey</option>
                                                                <option value="400" >Jordan</option>
                                                                <option value="398" >Kazakhstan</option>
                                                                <option value="404" >Kenya</option>
                                                                <option value="296" >Kiribati</option>
                                                                <option value="408" >Korea, Democratic People's Republic of</option>
                                                                <option value="410" >Korea, Republic of</option>
                                                                <option value="414" >Kuwait</option>
                                                                <option value="417" >Kyrgyzstan</option>
                                                                <option value="418" >Lao People's Democratic Republic</option>
                                                                <option value="428" >Latvia</option>
                                                                <option value="422" >Lebanon</option>
                                                                <option value="426" >Lesotho</option>
                                                                <option value="430" >Liberia</option>
                                                                <option value="434" >Libya</option>
                                                                <option value="438" >Liechtenstein</option>
                                                                <option value="440" >Lithuania</option>
                                                                <option value="442" >Luxembourg</option>
                                                                <option value="446" >Macao</option>
                                                                <option value="807" >Macedonia, the former Yugoslav Republic of</option>
                                                                <option value="450" >Madagascar</option>
                                                                <option value="454" >Malawi</option>
                                                                <option value="458" >Malaysia</option>
                                                                <option value="462" >Maldives</option>
                                                                <option value="466" >Mali</option>
                                                                <option value="470" >Malta</option>
                                                                <option value="584" >Marshall Islands</option>
                                                                <option value="474" >Martinique</option>
                                                                <option value="478" >Mauritania</option>
                                                                <option value="480" >Mauritius</option>
                                                                <option value="175" >Mayotte</option>
                                                                <option value="484" >Mexico</option>
                                                                <option value="583" >Micronesia, Federated States of</option>
                                                                <option value="498" >Moldova, Republic of</option>
                                                                <option value="492" >Monaco</option>
                                                                <option value="496" >Mongolia</option>
                                                                <option value="499" >Montenegro</option>
                                                                <option value="500" >Montserrat</option>
                                                                <option value="504" >Morocco</option>
                                                                <option value="508" >Mozambique</option>
                                                                <option value="104" >Myanmar</option>
                                                                <option value="516" >Namibia</option>
                                                                <option value="520" >Nauru</option>
                                                                <option value="524" >Nepal</option>
                                                                <option value="528" >Netherlands</option>
                                                                <option value="540" >New Caledonia</option>
                                                                <option value="554" >New Zealand</option>
                                                                <option value="558" >Nicaragua</option>
                                                                <option value="562" >Niger</option>
                                                                <option value="566" >Nigeria</option>
                                                                <option value="570" >Niue</option>
                                                                <option value="574" >Norfolk Island</option>
                                                                <option value="580" >Northern Mariana Islands</option>
                                                                <option value="578" >Norway</option>
                                                                <option value="512" >Oman</option>
                                                                <option value="586" >Pakistan</option>
                                                                <option value="585" >Palau</option>
                                                                <option value="275" >Palestinian Territory, Occupied</option>
                                                                <option value="591" >Panama</option>
                                                                <option value="598" >Papua New Guinea</option>
                                                                <option value="600" >Paraguay</option>
                                                                <option value="604" >Peru</option>
                                                                <option value="608" >Philippines</option>
                                                                <option value="612" >Pitcairn</option>
                                                                <option value="616" >Poland</option>
                                                                <option value="620" >Portugal</option>
                                                                <option value="630" >Puerto Rico</option>
                                                                <option value="634" >Qatar</option>
                                                                <option value="638" >Réunion</option>
                                                                <option value="642" >Romania</option>
                                                                <option value="643" >Russian Federation</option>
                                                                <option value="646" >Rwanda</option>
                                                                <option value="652" >Saint Barthélemy</option>
                                                                <option value="654" >Saint Helena, Ascension and Tristan da Cunha</option>
                                                                <option value="659" >Saint Kitts and Nevis</option>
                                                                <option value="662" >Saint Lucia</option>
                                                                <option value="663" >Saint Martin (French part)</option>
                                                                <option value="666" >Saint Pierre and Miquelon</option>
                                                                <option value="670" >Saint Vincent and the Grenadines</option>
                                                                <option value="882" >Samoa</option>
                                                                <option value="674" >San Marino</option>
                                                                <option value="678" >Sao Tome and Principe</option>
                                                                <option value="682" >Saudi Arabia</option>
                                                                <option value="686" >Senegal</option>
                                                                <option value="688" >Serbia</option>
                                                                <option value="690" >Seychelles</option>
                                                                <option value="694" >Sierra Leone</option>
                                                                <option value="702" >Singapore</option>
                                                                <option value="534" >Sint Maarten (Dutch part)</option>
                                                                <option value="703" >Slovakia</option>
                                                                <option value="705" >Slovenia</option>
                                                                <option value="90" >Solomon Islands</option>
                                                                <option value="706" >Somalia</option>
                                                                <option value="710" >South Africa</option>
                                                                <option value="239" >South Georgia and the South Sandwich Islands</option>
                                                                <option value="728" >South Sudan</option>
                                                                <option value="724" >Spain</option>
                                                                <option value="144" >Sri Lanka</option>
                                                                <option value="729" >Sudan</option>
                                                                <option value="740" >Suriname</option>
                                                                <option value="744" >Svalbard and Jan Mayen</option>
                                                                <option value="748" >Swaziland</option>
                                                                <option value="752" >Sweden</option>
                                                                <option value="756" >Switzerland</option>
                                                                <option value="760" >Syrian Arab Republic</option>
                                                                <option value="158" >Taiwan, Province of China</option>
                                                                <option value="762" >Tajikistan</option>
                                                                <option value="834" >Tanzania, United Republic of</option>
                                                                <option value="764" >Thailand</option>
                                                                <option value="626" >Timor-Leste</option>
                                                                <option value="768" >Togo</option>
                                                                <option value="772" >Tokelau</option>
                                                                <option value="776" >Tonga</option>
                                                                <option value="780" >Trinidad and Tobago</option>
                                                                <option value="788" >Tunisia</option>
                                                                <option value="792" >Turkey</option>
                                                                <option value="795" >Turkmenistan</option>
                                                                <option value="796" >Turks and Caicos Islands</option>
                                                                <option value="798" >Tuvalu</option>
                                                                <option value="800" >Uganda</option>
                                                                <option value="804" >Ukraine</option>
                                                                <option value="784" >United Arab Emirates</option>
                                                                <option value="826" >United Kingdom</option>
                                                                <option value="840" >United States</option>
                                                                <option value="581" >United States Minor Outlying Islands</option>
                                                                <option value="858" >Uruguay</option>
                                                                <option value="860" >Uzbekistan</option>
                                                                <option value="548" >Vanuatu</option>
                                                                <option value="862" >Venezuela, Bolivarian Republic of</option>
                                                                <option value="704" >Viet Nam</option>
                                                                <option value="92" >Virgin Islands, British</option>
                                                                <option value="850" >Virgin Islands, U.S.</option>
                                                                <option value="876" >Wallis and Futuna</option>
                                                                <option value="732" >Western Sahara</option>
                                                                <option value="887" >Yemen</option>
                                                                <option value="894" >Zambia</option>
                                                                <option value="716" >Zimbabwe</option>
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
                    </form> <form class="form-horizontal" method="post" id="editar_cliente" name="editar_usuarios">
                        <!-- Modal -->
                        <div class="modal fade" id="cliente_edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title">Editar Cliente</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div id="loader2" class="text-center"></div>
                                        <div class="outer_div2"></div>


                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" id="actualizar_datos" class="btn btn-primary">Actualizar datos</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>				<div class="row">
                        <div class="col-xs-12 col-md-3">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Buscar por nombre" id='q' onkeyup="load(1);">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button" onclick='load(1);'><i class='fa fa-search'></i></button>
                                </span>
                            </div><!-- /input-group -->

                        </div>
                        <div class="col-md-3 hidden-xs"></div>
                        <div class="col-xs-2 col-md-1">
                            <div id="loader" class="text-center"></div>

                        </div>
                        <div class="col-xs-10 col-md-5 ">
                            <div class="btn-group pull-right">
                                <button type="button" class="btn btn-default"  data-toggle="modal" data-target="#cliente_modal"><i class='fa fa-plus'></i> Nuevo</button>
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Mostrar
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu pull-right">
                                    <li class='active' onclick='per_page(15);' id='15'><a href="#">15</a></li>
                                    <li  onclick='per_page(25);' id='25'><a href="#">25</a></li>
                                    <li onclick='per_page(50);' id='50'><a href="#">50</a></li>
                                    <li onclick='per_page(100);' id='100'><a href="#">100</a></li>
                                    <li onclick='per_page(1000000);' id='1000000'><a href="#">Todos</a></li>
                                </ul>


                            </div>
                        </div>
                        <input type='hidden' id='per_page' value='15'>

                    </div>


                </section>

                <!-- Main content -->
                <section class="content">
                    <div id="resultados_ajax"></div>
                    <div class="outer_div"></div><!-- Datos ajax Final -->         
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Versión</b> 6.1
                </div>
                <strong>Copyright &copy; 2015-2019 <a href="http://obedalvarado.pw" target="_blank">Sistemas Web</a></strong> All rights reserved.
            </footer>    </div><!-- ./wrapper -->

        <!-- jQuery 2.1.4 -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
                                                                  $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.5 -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- Morris.js charts -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="plugins/morris/morris.min.js"></script>
        <!-- Sparkline -->
        <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jvectormap -->
        <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="plugins/knob/jquery.knob.js"></script>
        <!-- daterangepicker -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
        <script src="plugins/daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="plugins/fastclick/fastclick.min.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/app.min.js"></script>

        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>
        <script src="dist/js/jquery.validate.min.js"></script>
        <script src="dist/js/VentanaCentrada.js"></script>
    </body>
</html>
<script>
                                                      $(function () {
                                                          load(1);
                                                      });
                                                      function load(page) {
                                                          var query = $("#q").val();
                                                          var per_page = $("#per_page").val();
                                                          var parametros = {"action": "ajax", "page": page, 'query': query, 'per_page': per_page};
                                                          $("#loader").fadeIn('slow');
                                                          $.ajax({
                                                              url: './ajax/clientes_ajax.php',
                                                              data: parametros,
                                                              beforeSend: function (objeto) {
                                                                  $("#loader").html("<img src='./img/ajax-loader.gif'>");
                                                              },
                                                              success: function (data) {
                                                                  $(".outer_div").html(data).fadeIn('slow');
                                                                  $("#loader").html("");
                                                              }
                                                          })
                                                      }

                                                      function per_page(valor) {
                                                          $("#per_page").val(valor);
                                                          load(1);
                                                          $('.dropdown-menu li').removeClass("active");
                                                          $("#" + valor).addClass("active");
                                                      }


</script>

<script>
    function eliminar(id) {
        if (confirm('Esta acción  eliminará de forma permanente el cliente \n\n Desea continuar?')) {
            var page = 1;
            var query = $("#q").val();
            var per_page = $("#per_page").val();

            var parametros = {"action": "ajax", "page": page, "query": query, "per_page": per_page, "id": id};

            $.ajax({
                url: './ajax/clientes_ajax.php',
                data: parametros,
                beforeSend: function (objeto) {
                    $("#loader").html("<img src='./img/ajax-loader.gif'>");
                },
                success: function (data) {
                    $(".outer_div").html(data).fadeIn('slow');
                    $("#loader").html("");
                    window.setTimeout(function () {
                        $(".alert").fadeTo(500, 0).slideUp(500, function () {
                            $(this).remove();
                        });
                    }, 5000);
                }
            })
        }
    }
</script>




<script>
    var form1 = $("#guardar_cliente");
    form1.validate({ignore: ""});
    $("#guardar_cliente").submit(function (event) {
        var form1 = $(this).valid();
        var parametros = $(this).serialize();
        if (this.hasChildNodes('.nav.nav-tabs')) {
            var validator = $(this).validate();
            $(this).find("input").each(function () {
                if (!validator.element(this)) {
                    form1 = false;
                    $('a[href=#' + $(this).closest('.tab-pane:not(.active)').attr('id') + ']').tab('show');
                    return false;
                }
            });
        }
        if (form1) {
            $('#guardar_datos').attr("disabled", true);
            $.ajax({
                type: "POST",
                url: "ajax/registro/agregar_cliente.php",
                data: parametros,
                beforeSend: function (objeto) {
                    $("#resultados_ajax").html("Enviando...");
                },
                success: function (datos) {
                    $("#resultados_ajax").html(datos);
                    $('#guardar_datos').attr("disabled", false);
                    load(1);
                    window.setTimeout(function () {
                        $(".alert").fadeTo(500, 0).slideUp(500, function () {
                            $(this).remove();
                        });
                    }, 5000);
                    $('#cliente_modal').modal('hide');
                }
            });
            event.preventDefault();
        }
    })
</script>

<script>
    var form2 = $("#editar_cliente");
    form2.validate({ignore: ""});

    $("#editar_cliente").submit(function (event) {

        var form2 = $(this).valid();
        if (this.hasChildNodes('.nav.nav-tabs')) {
            var validator = $(this).validate();
            $(this).find("input").each(function () {
                if (!validator.element(this)) {
                    form2 = false;
                    $('a[href=#' + $(this).closest('.tab-pane:not(.active)').attr('id') + ']').tab('show');
                    return false;
                }
            });
        }

        if (form2) {
            $('#actualizar_datos').attr("disabled", true);
            var parametros = $(this).serialize();
            $.ajax({
                type: "POST",
                url: "ajax/modificar/cliente.php",
                data: parametros,
                beforeSend: function (objeto) {
                    $("#resultados_ajax").html("Enviando...");
                },
                success: function (datos) {
                    $("#resultados_ajax").html(datos);
                    $('#actualizar_datos').attr("disabled", false);
                    load(1);
                    window.setTimeout(function () {
                        $(".alert").fadeTo(500, 0).slideUp(500, function () {
                            $(this).remove();
                        });
                    }, 5000);
                    $('#cliente_edit').modal('hide');
                }
            });
            event.preventDefault();
        }
    });
</script>
<script>
    function editar(id) {
        var parametros = {"action": "ajax", "id": id};
        $.ajax({
            url: 'modal/editar/cliente.php',
            data: parametros,
            beforeSend: function (objeto) {
                $("#loader2").html("<img src='./img/ajax-loader.gif'>");
            },
            success: function (data) {
                $(".outer_div2").html(data).fadeIn('slow');
                $("#loader2").html("");
                checked_all();
            }
        })
    }


</script>