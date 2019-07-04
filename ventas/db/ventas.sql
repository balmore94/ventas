create database ventas;
use ventas;

create table usuario(
id_usuario int primary key auto_increment not null,
    nombre varchar (100) not null,
    usuario varchar (100) not null,
    email varchar(150) not null,
    psw varchar(255) not null,
    tipo_usu varchar(1)not null,
    fecha_ingreso date not null,
    estado varchar(1)
);

create table fabricante(
id_fabricante int auto_increment not null primary key,
nombre varchar (125) not null,
numero_producto int not null,
estado varchar (1) not null,
fecha_ingreso date not null
);

create table tipo_contacto(
id_tipo int not null primary key auto_increment,
tipo varchar(75) not null
);

create table pais(
id_pais int not null primary key auto_increment,
nombre varchar(150) not null
);

create table empresa(
id_empresa int not null primary key auto_increment,
id_pais int not null,
nombre varchar(200) not null,
nit_empresa varchar(17) not null,
pagina_web varchar(255) not null,
telefono varchar (9) not null,
calle varchar (200) not null,
ciudad varchar (200) not null,
region_provincia varchar (200) not null,
codigo_postal varchar (25) not null,
CONSTRAINT pais_empresa foreign key (id_pais) references pais(id_pais) on update cascade on delete cascade
);

create table contactos(
id_contacto int primary key not null auto_increment,
id_tipo int not null,
id_empresa int not null,
nombre varchar(150) not null,
apellido varchar(150) not null,
email varchar(150) not null,
telefono varchar(9) not null,
fecha_ingreso date not null,
CONSTRAINT empresa_contacto foreign key (id_empresa) references empresa(id_empresa) on update cascade on delete cascade, 
CONSTRAINT tipo_contacto foreign key (id_tipo) references tipo_contacto(id_tipo)on update cascade on delete cascade
);

create table iva(
id_iva int not null primary key auto_increment,
nombre varchar(50) not null,
valor decimal(5,2) not null,
estado varchar (1) not null
);

create table productos(
id_producto int not null primary key auto_increment,
id_fabricante int not null,
codigo int not null,
imagen varchar(255) not null,
modelo varchar(100) not null,
nombre varchar(200) not null,
estado varchar(1) not null,
stock int not null,
precio_unitario decimal(11,2) not null,
presentacion varchar (150) not null,
ganancia int not null,
codigo_barra int not null,
CONSTRAINT fabricante_producto foreign key (id_fabricante) references fabricante(id_fabricante) on update cascade on delete cascade 
);


create table compra(
id_compra int primary key not null auto_increment,
id_iva int not null,
id_proveedor int not null,
id_usuario int not null,
num_compra int not null,
fecha_compra date not null,
total_neto decimal(11,2) not null,
total_iva decimal(11,2) not null,
porcentaje_iva decimal(11,2),
CONSTRAINT iva_compra foreign key (id_iva) references iva(id_iva) on update cascade on delete cascade ,
CONSTRAINT proveedor_compra foreign key (id_proveedor) references contactos(id_contacto) on update cascade on delete cascade ,
CONSTRAINT usuario_compra foreign key (id_usuario) references usuario(id_usuario) on update cascade on delete cascade
);

create table detalle_compra(
iddetalle_compra int primary key not null auto_increment,
id_producto int not null,
id_iva int not null,
cantidad int not null,
precio_unidad decimal(11,2) not null,
CONSTRAINT producto_detalle foreign key (id_producto) references productos(id_producto) on update cascade on delete cascade ,
CONSTRAINT iva_detalle foreign key (id_iva) references iva(id_iva) on update cascade on delete cascade 
);

create table facturacion(
id_facturacion int not null primary key auto_increment,
id_cliente int not null,
id_vendedor int not null,
id_iva int not null,
num_factura int not null,
fecha_venta date not null,
total_neto decimal(11,2) not null,
total_iva decimal(11,2) not null,
porcentaje_iva decimal(5,2) not null,
CONSTRAINT cliente_facturacion foreign key (id_cliente) references contactos(id_contacto) on update cascade on delete cascade ,
CONSTRAINT vendedor_facturacion foreign key (id_vendedor) references usuario(id_usuario) on update cascade on delete cascade ,
CONSTRAINT iva_facturacion foreign key (id_iva) references iva(id_iva) on update cascade on delete cascade 
);

create table detalle_facturacion(
id_detallefact int not null primary key auto_increment,
id_producto int not null,
id_factura int not null,
cantidad int not null,
precio_unidad decimal(11,2) not null,
CONSTRAINT producto_detalle_fact foreign key (id_producto) references productos(id_producto) on update cascade on delete cascade ,
CONSTRAINT factura_detalle_fact foreign key (id_factura) references facturacion(id_facturacion) on update cascade on delete cascade 
);